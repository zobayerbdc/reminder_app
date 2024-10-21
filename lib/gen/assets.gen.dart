/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Bookmark.svg
  String get bookmark => 'assets/icons/Bookmark.svg';

  /// File path: assets/icons/Chat.svg
  String get chat => 'assets/icons/Chat.svg';

  /// File path: assets/icons/Edit Square.svg
  String get editSquare => 'assets/icons/Edit Square.svg';

  /// File path: assets/icons/Home.svg
  String get home => 'assets/icons/Home.svg';

  /// File path: assets/icons/HomeFill.svg
  String get homeFill => 'assets/icons/HomeFill.svg';

  /// File path: assets/icons/Lock.svg
  String get lock => 'assets/icons/Lock.svg';

  /// File path: assets/icons/Message.svg
  String get message => 'assets/icons/Message.svg';

  /// File path: assets/icons/Notification.svg
  String get notification => 'assets/icons/Notification.svg';

  /// File path: assets/icons/Profile.svg
  String get profile => 'assets/icons/Profile.svg';

  /// File path: assets/icons/Search.svg
  String get search => 'assets/icons/Search.svg';

  /// File path: assets/icons/apple.svg
  String get apple => 'assets/icons/apple.svg';

  /// File path: assets/icons/arrow-right.svg
  String get arrowRight => 'assets/icons/arrow-right.svg';

  /// File path: assets/icons/book-saved.svg
  String get bookSaved => 'assets/icons/book-saved.svg';

  /// File path: assets/icons/bookSavedFill.svg
  String get bookSavedFill => 'assets/icons/bookSavedFill.svg';

  /// File path: assets/icons/bookSquareFill.svg
  String get bookSquareFill => 'assets/icons/bookSquareFill.svg';

  /// File path: assets/icons/editSquareFill.svg
  String get editSquareFill => 'assets/icons/editSquareFill.svg';

  /// File path: assets/icons/google.svg
  String get google => 'assets/icons/google.svg';

  /// File path: assets/icons/homeFillIcon.svg
  String get homeFillIcon => 'assets/icons/homeFillIcon.svg';

  /// File path: assets/icons/info-circle.svg
  String get infoCircle => 'assets/icons/info-circle.svg';

  /// File path: assets/icons/logout.svg
  String get logout => 'assets/icons/logout.svg';

  /// File path: assets/icons/more-square.svg
  String get moreSquare => 'assets/icons/more-square.svg';

  /// File path: assets/icons/profileFill.svg
  String get profileFill => 'assets/icons/profileFill.svg';

  /// File path: assets/icons/shield-tick.svg
  String get shieldTick => 'assets/icons/shield-tick.svg';

  /// File path: assets/icons/wallet-3.svg
  String get wallet3 => 'assets/icons/wallet-3.svg';

  /// List of all assets
  List<String> get values => [
        bookmark,
        chat,
        editSquare,
        home,
        homeFill,
        lock,
        message,
        notification,
        profile,
        search,
        apple,
        arrowRight,
        bookSaved,
        bookSavedFill,
        bookSquareFill,
        editSquareFill,
        google,
        homeFillIcon,
        infoCircle,
        logout,
        moreSquare,
        profileFill,
        shieldTick,
        wallet3
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg.png
  AssetGenImage get bg => const AssetGenImage('assets/images/bg.png');

  /// File path: assets/images/card_bg_image.jpg
  AssetGenImage get cardBgImage =>
      const AssetGenImage('assets/images/card_bg_image.jpg');

  /// File path: assets/images/forget_image.png
  AssetGenImage get forgetImage =>
      const AssetGenImage('assets/images/forget_image.png');

  /// File path: assets/images/home_bg_image.png
  AssetGenImage get homeBgImage =>
      const AssetGenImage('assets/images/home_bg_image.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/onboard.png
  AssetGenImage get onboard => const AssetGenImage('assets/images/onboard.png');

  /// File path: assets/images/onboard_image.png
  AssetGenImage get onboardImage =>
      const AssetGenImage('assets/images/onboard_image.png');

  /// File path: assets/images/person_image.png
  AssetGenImage get personImage =>
      const AssetGenImage('assets/images/person_image.png');

  /// File path: assets/images/profileImage.png
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profileImage.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bg,
        cardBgImage,
        forgetImage,
        homeBgImage,
        logo,
        onboard,
        onboardImage,
        personImage,
        profileImage
      ];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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