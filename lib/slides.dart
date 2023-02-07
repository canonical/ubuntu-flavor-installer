import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ubuntu_desktop_installer/installer.dart';
import 'package:url_launcher/url_launcher_string.dart';

String _slideAsset(String name) => 'assets/installation_slides/$name.png';

final flavorSlides = <Slide>[
  _firstSlide,
  _secondSlide,
  _thirdSlide,
];

extension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

final _firstSlide = Slide(
  title: (context) => Text(context.l10n.firstSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset(_slideAsset('welcome')),
      Positioned.directional(
        textDirection: Directionality.of(context),
        top: 120,
        start: 120,
        child: Text(
          context.l10n.firstSlideBody,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: Colors.white),
        ),
      ),
    ],
  ),
);

final _secondSlide = Slide(
  title: (context) => Text(context.l10n.secondSlideTitle),
  body: (context) => DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(_slideAsset('background'))),
    ),
    child: Center(
      child: Text(
        context.l10n.secondSlideBody,
        style: TextStyle(
          color: Colors.white,
          fontSize: FontSize.xxLarge.value,
        ),
      ),
    ),
  ),
);

final _thirdSlide = Slide(
  title: (context) => Text(context.l10n.thirdSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset(_slideAsset('background')),
      Center(
        child: Html(
          shrinkWrap: true,
          data: context.l10n.thirdSlideBody,
          style: {
            'body': Style(
              color: Colors.white,
              fontSize: FontSize.xxLarge,
            ),
          },
          onAnchorTap: (url, _, __, ___) => launchUrlString(url!),
        ),
      ),
    ],
  ),
);
