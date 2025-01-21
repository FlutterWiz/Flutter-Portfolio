/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/MaterialIcons-Regular.ttf
  String get materialIconsRegular => 'assets/fonts/MaterialIcons-Regular.ttf';

  /// File path: assets/fonts/RobotoCondensed-VariableFont_wght.ttf
  String get robotoCondensedVariableFontWght =>
      'assets/fonts/RobotoCondensed-VariableFont_wght.ttf';

  /// List of all assets
  List<String> get values =>
      [materialIconsRegular, robotoCondensedVariableFontWght];
}

class Assets {
  Assets._();

  static const AssetGenImage efe = AssetGenImage('assets/efe.jpg');
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const AssetGenImage medium1 = AssetGenImage('assets/medium1.jpg');
  static const AssetGenImage medium2 = AssetGenImage('assets/medium2.jpg');
  static const AssetGenImage medium3 = AssetGenImage('assets/medium3.jpg');
  static const AssetGenImage stream = AssetGenImage('assets/stream.jpg');
  static const AssetGenImage trFlag = AssetGenImage('assets/tr_flag.jpg');
  static const AssetGenImage ukFlag = AssetGenImage('assets/uk_flag.jpg');
  static const AssetGenImage websiteIcon =
      AssetGenImage('assets/website_icon.jpg');
  static const AssetGenImage youtubePodcast =
      AssetGenImage('assets/youtube_podcast.jpg');

  /// List of all assets
  static List<AssetGenImage> get values => [
        efe,
        medium1,
        medium2,
        medium3,
        stream,
        trFlag,
        ukFlag,
        websiteIcon,
        youtubePodcast
      ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
