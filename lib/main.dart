import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:yaru/yaru.dart';

import 'slides.dart';

Future<void> main(List<String> args) {
  return runInstallerApp(
    args,
    flavor: const UbuntuFlavor(
      id: 'ubuntu-flavor',
      name: 'Ubuntu FLAVOR',
    ),
    theme: yaruMagentaLight,
    darkTheme: yaruMagentaDark,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    slides: installationSlides,
  );
}
