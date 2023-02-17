import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ubuntu_desktop_installer/installer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'l10n.dart';

const headerStyle = TextStyle(color: Colors.white, fontSize: 32);
const bodyStyle = TextStyle(color: Colors.white, fontSize: 18);

final firstSlide = Slide(
  title: (context) => Text(context.l10n.firstSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/welcome.png'),
      Padding(
        padding: const EdgeInsets.all(40),
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.l10n.firstSlideHeader, style: headerStyle),
              const SizedBox(height: 20),
              Expanded(
                child: Text(context.l10n.firstSlideBody, style: bodyStyle),
              ),
            ],
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
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.secondSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 320,
                  height: 240,
                  child: Placeholder(),
                ),
              ),
            ),
          ],
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
