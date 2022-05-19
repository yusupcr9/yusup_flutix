part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = const Color(0xFF503E9D);
Color accentColor1 = const Color(0xFF2C1F63);
Color accentColor2 = const Color(0xFFFBD460);
Color accentColor3 = const Color(0xFFADADAD);

TextStyle blackTextFont = GoogleFonts.raleway().copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextFont = GoogleFonts.raleway().copyWith(
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
TextStyle purpleTextFont = GoogleFonts.raleway().copyWith(
  color: mainColor,
  fontWeight: FontWeight.w500,
);
TextStyle greyTextFont = GoogleFonts.raleway().copyWith(
  color: accentColor3,
  fontWeight: FontWeight.w500,
);

TextStyle whiteNumberFont = GoogleFonts.openSans().copyWith(
  color: Colors.white,
);
TextStyle yellowNumberFont = GoogleFonts.openSans().copyWith(
  color: accentColor2,
);

Map<int, Color> color = {
  50: const Color.fromRGBO(136, 14, 79, .1),
  100: const Color.fromRGBO(136, 14, 79, .2),
  200: const Color.fromRGBO(136, 14, 79, .3),
  300: const Color.fromRGBO(136, 14, 79, .4),
  400: const Color.fromRGBO(136, 14, 79, .5),
  500: const Color.fromRGBO(136, 14, 79, .6),
  600: const Color.fromRGBO(136, 14, 79, .7),
  700: const Color.fromRGBO(136, 14, 79, .8),
  800: const Color.fromRGBO(136, 14, 79, .9),
  900: const Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor mainColorMaterial = MaterialColor(0xFF503E9D, color);
MaterialColor accentColor1Material = MaterialColor(0xFF2C1F63, color);
MaterialColor accentColor2Material = MaterialColor(0xFFFBD460, color);
MaterialColor accentColor3Material = MaterialColor(0xFFADADAD, color);
