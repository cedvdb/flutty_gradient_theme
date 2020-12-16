library flutty_theme_gradient;

import 'package:flutty/flutty.dart';

import 'src/screens/_index.dart';
export 'src/screens/_index.dart';
export 'src/widgets/gradient_container.dart';
export 'src/widgets/accentuated_text.dart';
export 'src/widgets/outline_icon_button.dart';

/// The gradient theme precomputed, either use this or
/// create one using the individual screens and flutty theme
final gradientTheme = FluttyTheme(
  errorScreen: ErrorScreen(),
  loadingScreen: LoadingScreen(),
  signInScreen: SignInScreen(),
  homeLayout: HomeScreen(),
);
