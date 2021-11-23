/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering

import 'package:flutter/widgets.dart';

class $ImagesGen {
  const $ImagesGen();

  /// File path: images/ic_hide_pw.png
  AssetGenImage get icHidePw => const AssetGenImage('images/ic_hide_pw.png');

  /// File path: images/ic_login.png
  AssetGenImage get icLogin => const AssetGenImage('images/ic_login.png');

  /// File path: images/ic_logo.png
  AssetGenImage get icLogo => const AssetGenImage('images/ic_logo.png');

  /// File path: images/ic_logout.png
  AssetGenImage get icLogout => const AssetGenImage('images/ic_logout.png');

  /// File path: images/ic_show_pw.png
  AssetGenImage get icShowPw => const AssetGenImage('images/ic_show_pw.png');
}

class $LangGen {
  const $LangGen();

  /// File path: lang/en-US.json
  String get enUS => 'lang/en-US.json';
}

class Assets {
  Assets._();

  static const $ImagesGen images = $ImagesGen();
  static const $LangGen lang = $LangGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
