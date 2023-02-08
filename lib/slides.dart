import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ubuntu_desktop_installer/installer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'l10n.dart';

final firstSlide = Slide(
  title: (context) => Text(context.l10n.firstSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/welcome.png'),
      Positioned.directional(
        textDirection: Directionality.of(context),
        top: 120,
        start: 120,
        child: Text(
          context.l10n.firstSlideBody,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 48,
          ),
        ),
      ),
    ],
  ),
);

final secondSlide = Slide(
  title: (context) => Text(context.l10n.secondSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/background.png'),
      Center(
        child: Text(
          context.l10n.secondSlideBody,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    ],
  ),
);

final thirdSlide = Slide(
  title: (context) => Text(context.l10n.thirdSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/background.png'),
      Center(
        child: Html(
          shrinkWrap: true,
          data: context.l10n.thirdSlideBody,
          style: {
            'body': Style(
              color: Colors.white,
              fontSize: FontSize(24),
            ),
          },
          onAnchorTap: (url, _, __, ___) => launchUrlString(url!),
        ),
      ),
    ],
  ),
);
