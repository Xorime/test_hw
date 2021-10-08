import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'constants.dart';

class Wgt {
  static AppBar appbar({
    required String title,
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
    Function()? leading,
    Color? bgColor,
  }) {
    return AppBar(
      title: Text(
        title,
        style: headline2,
      ),
      actions: actions,
      centerTitle: true,
      backgroundColor: bgColor ?? color_bg,
      elevation: 0,
      iconTheme: const IconThemeData(color: color_text),
      bottom: bottom,
      leading: leading != null ? InkWell(onTap: () => leading(), child: const Icon(Icons.arrow_back_ios)) : null,
    );
  }

  static Widget loaderController({Color color = color_primary, double weight = 3}) {
    return Center(
        child: Container(
      padding: const EdgeInsets.all(padding_xxs),
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: weight,
      ),
    ));
  }

  static Widget loaderBox({
    double width = 200,
    double height = profile_pic,
    double borderRadius = radius,
    bool square = false,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Shimmer.fromColors(
        baseColor: color_bg_accent.withOpacity(0.3),
        highlightColor: color_bg_accent_2.withOpacity(0.3),
        child: square
            ? AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                    width: width,
                    height: height,
                    child: Container(
                      color: color_bg_accent,
                    )))
            : SizedBox(
                width: width,
                height: height,
                child: Container(
                  color: color_bg_accent,
                )),
      ),
    );
  }
}
