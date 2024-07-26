import 'package:flutter/material.dart';

extension GradientColor on Color {
  LinearGradient get gradient {
    return LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        this,
        this,
      ],
    );
  }
}

abstract class NVColors {
  static const white = Colors.white;
  static const grayF9 = Color(0xFFF9F9F9);
  static const grayEC = Color(0xFFECECEC);
  static const grayE6 = Color(0xFFE6E6E6);
  static const grayD2 = Color(0xFFD2D2D2);
  static const grayC7 = Color(0xFFC7C7C7);
  static const grayAA = Color(0xFFAAAAAA);
  static const gray93 = Color(0xFF939393);
  static const gray78 = Color(0xFF787878);
  static const gray5A = Color(0xFF5A5A5A);
  static const gray2E = Color(0xFF2E2E2E);
  static const gray2B = Color(0xFF2B2B2B);
  static const gray1C = Color(0xFF1C1C1C);
  static const gray16 = Color(0xFF161616);
  static const black = Colors.black;
  static const bensePink = Color(0xFFEE3A4F);
  static const springPink = Color(0xFFFA388D);
  static const yellow = Color(0xFFF4B30C);
  static const red = Color(0xFFFF0000);
  static const orange = Color(0xFFF98600);
  static const benseOrange = Color(0xFFF47C0C);
  static const benseDarkOrange = Color(0xFFFF490C);
  static const lightOrange = Color(0xFFFBAF3D);
  static const blue = Color(0xFF3AB1F4);
  static const cyan = Color(0xFF48BBCD);
  static const cancelRed = Color(0xFFED7270);
  static const kuaiseDarkYellow = Color(0xFFFFB904);
  static const blackOverlay = Color(0x7F000000);
  static const shyLightPurple = Color(0xFFCD69FE);
  static const kuaiboSkin = Color(0xFFFDB3B3);
  static const kuaiboRed = Color(0xFFFC413E);
  static const sixtyNineYellow = Color(0xFFFBEB4E);
  static const darkPurple = Color(0xFF1D0827);
  static const darkBlue = Color(0xFF121317);
  static const saohuOrange = Color(0xFFFF6503);
  static const saohuDarkRed = Color(0xFFBF0045);
  static const alaPurple = Color(0xFF73199D);
  static const alaLightPurple = Color(0xFF2F0658);
  static const alaDarkPurple = Color(0xFF20043D);
  static const alaLightYellow = Color(0xFFFFFEEA);
  static const alaPink = Color(0xFFFB196A);
  static const tokyoRed = Color(0xFFD01B33);
  static const semanYellow = Color(0xFFFDB601);
  static const semanLightYellow = Color(0xFFFDF523);
  static const fxOrange = Color(0xFFFF7E00);
  static const llsYellow = Color(0xFFFAD12B);
  static const lsRedLight = Color(0xFFFF5656);
  static const lsRed = Color(0xFFD72A18);
  static const deleteRed = Color(0xFFED7270);
  static const xlYellow = Color(0xFFF1CE26);
  static const fiftyoneSkin = Color(0xFFFF7D6B);
  static const fiftyoneDarkBlue = Color(0xFF0B043A);


  static const gradientYellowDark = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFECD59F),
      Color(0xFFC9A864),
    ],
  );

  static const gradientOrangePink = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFF47C0C),
      Color(0xFFF62A5B),
    ],
  );
  static const gradientBensePink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFAB5E),
      Color(0xFFFF7A35),
      Color(0xFFFE7337),
      Color(0xFFF63F47),
    ],
  );
  static const gradientPink = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFFF86BD),
      Color(0xFFFA388D),
    ],
  );
  static const gradientSpringLightPink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFD2E7),
      Color(0xFFFF86BD),
      Color(0xFFFA388D),
      Color(0xFFD82B77),
    ],
  );
  static const gradientOrange = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFF4B30C),
      Color(0xFFF47C0C),
    ],
  );
  static const gradientPurple = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF7922A3),
      Color(0xFF45117A),
    ],
  );
  static const gradientGray = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF787878),
      Color(0xFF5A5A5A),
    ],
  );
  static const gradientBlue = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF2C56FF),
      Color(0xFF4E72FC),
    ],
  );
  static const gradientBlueRed = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF2C56FF),
      Color(0xFFFF4B0F),
    ],
  );
  static const gradientKuaiseYellow01 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFF0B9),
      Color(0xFFFFC800),
      Color(0xFFFFA336),
      Color(0xFFE77D01),
    ],
  );
  static const gradientYellow02 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFE68B),
      Color(0xFFFF8C04),
    ],
  );
  static const gradientGrey01 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF989898),
      Color(0xFF787878),
      Color(0xFF666666),
      Color(0xFF5A5A5A),
    ],
  );
  static const gradientGrey002 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFC7C7C7),
      Color(0xFFB0B0B0),
    ],
  );
  static const gradientGrey003 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFEDEDED),
      Color(0xFFACACAC),
    ],
  );
  static const gradientGrey004 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFEDEDED),
      Color(0xFFB5B5B5),
      Color(0xFF999999),
      Color(0xFF737373),
    ],
  );
  static const gradientShyLightPurple = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFE9BCFF),
      Color(0xFFCD69FE),
      Color(0xFFB351FF),
      Color(0xFF8A22DA),
    ],
  );
  static const gradientKuaiboRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFF8A88),
      Color(0xFFFC413E),
      Color(0xFFE32823),
      Color(0xFFAD1B16),
    ],
  );
  static const gradientYellow69 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFFACD),
      Color(0xFFFBEB4E),
      Color(0xFFFFD335),
      Color(0xFFD2A400),
    ],
  );
  static const gradientGrey5A = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      gray5A,
      gray5A,
    ],
  );
  static const gradientSaohuOrange = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFF6503),
      Color(0xFFFF3003),
      Color(0xFFE50053),
      Color(0xFFBF0045),
    ],
  );
  static const gradientAlaPink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 0.01, 0.32, 0.69, 1],
    colors: [
      Color(0xFFFB196A),
      Color(0xFFFF7BAA),
      Color(0xFFFB196A),
      Color(0xFFFB196A),
      Color(0xFFD41459),
    ],
  );
  static const gradientPurpleAla = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF8A1ABE),
      Color(0xFF460A63),
    ],
  );
  static const gradientRedPurple = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF371467),
      Color(0xFF540808),
    ],
  );
  static const gradientTokyoRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFF6F56),
      Color(0xFFEB4124),
      Color(0xFFE43B1E),
      Color(0xFFBF2B12),
    ],
  );
  static const gradientTokyoRedV = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFFE43B1E),
      Color(0xFFD01B33),
      Color(0xFFAE0743),
    ],
  );
  static const gradientSemanYellow02 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFFB9A),
      Color(0xFFFDDA23),
      Color(0xFFFDB601),
      Color(0xFFD19701),
    ],
  );
  static const gradientLlsYellow = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFF3C3),
      Color(0xFFF7CE2A),
      Color(0xFFEAC326),
      Color(0xFFC39F0C),
    ],
  );
  static const gradientFxOrange = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 0.25, 0.72, 1],
    colors: [
      Color(0xFFFFE5A1),
      Color(0xFFFEAD00),
      Color(0xFFF88201),
      Color(0xFFDD6D06),
    ],
  );
  static const gradientFxNav = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFB800),
      Color(0xFFEA90B3),
      Color(0xFFF67701),
    ],
  );
  static const gradientLsRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFF8176),
      Color(0xFFF41B06),
      Color(0xFFF62C09),
      Color(0xFFFE6C13),
    ],
  );
  static const gradientXlYellow = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFF3C3),
      Color(0xFFF7CE2A),
      Color(0xFFEAC326),
      Color(0xFFC39F0C),
    ],
  );
  static const gradientFiftyone = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFADA2),
      Color(0xFFFF614B),
      Color(0xFFB43A29),
    ],
  );
  static const gradientRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFC823E),
      Color(0xFFAF501B),
    ],
  );
}
