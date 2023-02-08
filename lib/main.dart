import 'package:ubuntu_desktop_installer/installer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yaru/yaru.dart';

import 'slides.dart';

Future<void> main(List<String> args) {
  return runInstallerApp(
    args,
    flavor: FlavorData(
      name: 'Ubuntu FLAVOR',
      theme: yaruMagentaLight,
      darkTheme: yaruMagentaDark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    ),
    slides: [
      firstSlide,
      secondSlide,
      thirdSlide,
    ],
  );
}
