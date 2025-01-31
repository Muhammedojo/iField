import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension StringExtension on String {
  Text toText({
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 14,
    double textHeight = 27.45 / 14.0,
    Color? color,
    TextAlign? textAlign,
    FontStyle? fontStyle,
    TextOverflow? textOverflow,
  }) {
    return Text(
      this,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        height: textHeight,
        color: color ?? AppColor.textLight,
        fontStyle: fontStyle,
      ),
      textAlign: textAlign,
      overflow: textOverflow ?? TextOverflow.visible,
    );
  }

  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  SvgPicture toSvg({
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgPicture.asset(
      'assets/vectors/$this.svg',
      width: width,
      height: height,
      color: color,
      fit: BoxFit.contain,
    );
  }

  Image pngPicture({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      'assets/images/$this.png',
      width: width,
      height: height,
      fit: fit,
    );
  }

  String currencyFormat() {
    final f = NumberFormat.currency(locale: "en_NG", symbol: "₦", name: "NGN");
    return f.format(num.parse(this).toDouble());
  }

  String readableDateTime(Locale locale) {
    if (this.isEmpty) return "";
    return DateFormat('d MMM y hh:mm aa', locale.languageCode)
        .format(DateTime.parse(this));
  }
}
