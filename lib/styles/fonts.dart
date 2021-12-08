part of styles;

class AppFont {
  static TextStyle getAppFont({
    required FontWeight fontWeight,
    required double fontSize,
    required Color color,
  }) {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ));
  }
}

class HeaderFonts {
  static final primaryHeader = AppFont.getAppFont(
    fontSize: 31,
    fontWeight: FontWeight.w700,
    color: AppColors.quaternary
  );
   static final secondaryHeader = AppFont.getAppFont(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.primary
  );
}
class MiniTexts{
  static final primaryText = AppFont.getAppFont(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.primary
  );
}

class TextFonts {
  static final primaryText = AppFont.getAppFont(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: TextColors.secondary
  );
   static final secondaryText = AppFont.getAppFont(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: TextColors.secondary
  );
  static final ternaryText = AppFont.getAppFont(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.quaternary
  );
}
