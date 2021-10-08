import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:holywing_test/repositories/constants.dart' as cons;
import 'package:holywing_test/repositories/wgt.dart';

class Img extends StatelessWidget {
  String url;
  String? heroKey;
  BoxFit fit;
  double radius;
  bool darken = false;
  double opacity = 0;
  bool greyed = false;
  bool loaderBox = false;
  double loaderBoxWidth = 200.0;
  bool loaderSquare;
  Img({
    Key? key,
    required this.url,
    this.radius = cons.radius,
    this.fit = BoxFit.cover,
    this.darken = false,
    this.opacity = 0,
    this.greyed = false,
    this.heroKey,
    this.loaderBox = false,
    this.loaderBoxWidth = 200.0,
    this.loaderSquare = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url == '') {
      return _widgetError();
    }

    if (heroKey != null && heroKey != '') return Hero(tag: heroKey ?? '', child: _image());

    return _image();
  }

  Widget _image() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          greyed ? Colors.grey : Colors.transparent,
          BlendMode.saturation,
        ),
        child: CachedNetworkImage(
          imageBuilder: darken
              ? (context, image) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: this.fit,
                        image: image,
                        colorFilter: ColorFilter.mode(Color(0xff1D1D1D).withOpacity(this.opacity), BlendMode.darken),
                      ),
                    ),
                  );
                }
              : null,
          fit: this.fit,
          imageUrl: '$url',
          placeholder: (context, url) {
            if (loaderBox) {
              return Wgt.loaderBox(
                width: this.loaderBoxWidth,
                square: this.loaderSquare,
              );
            }
            return SizedBox(child: Wgt.loaderController());
          },
          errorWidget: (context, url, error) => _widgetError(),
        ),
      ),
    );
  }

  Widget _widgetError() {
    return Icon(Icons.error);
  }
}
