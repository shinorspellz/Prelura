// ignore_for_file: type=lint
import 'package:prelura_app/modules/model/product/product_model.dart'
    as EnumImport$ConditionEnum;

class Input$ProductFiltersInput {
  factory Input$ProductFiltersInput({
    String? name,
    int? brand,
    int? category,
    String? customBrand,
    int? subCategory,
    double? price,
    Enum$ProductStatusEnum? status,
    Enum$SizeEnum? size,
    Enum$StyleEnum? style,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    bool? discountPrice,
  }) =>
      Input$ProductFiltersInput._({
        if (name != null) r'name': name,
        if (brand != null) r'brand': brand,
        if (category != null) r'category': category,
        if (customBrand != null) r'customBrand': customBrand,
        if (subCategory != null) r'subCategory': subCategory,
        if (price != null) r'price': price,
        if (status != null) r'status': status,
        if (size != null) r'size': size,
        if (style != null) r'style': style,
        if (condition != null) r'condition': condition,
        if (discountPrice != null) r'discountPrice': discountPrice,
      });

  Input$ProductFiltersInput._(this._$data);

  factory Input$ProductFiltersInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as int?);
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = (l$category as int?);
    }
    if (data.containsKey('customBrand')) {
      final l$customBrand = data['customBrand'];
      result$data['customBrand'] = (l$customBrand as String?);
    }
    if (data.containsKey('subCategory')) {
      final l$subCategory = data['subCategory'];
      result$data['subCategory'] = (l$subCategory as int?);
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = (l$price as num?)?.toDouble();
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$ProductStatusEnum((l$status as String));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] =
          l$size == null ? null : fromJson$Enum$SizeEnum((l$size as String));
    }
    if (data.containsKey('style')) {
      final l$style = data['style'];
      result$data['style'] =
          l$style == null ? null : fromJson$Enum$StyleEnum((l$style as String));
    }
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionByApiValue(
              (l$condition as String));
    }
    if (data.containsKey('discountPrice')) {
      final l$discountPrice = data['discountPrice'];
      result$data['discountPrice'] = (l$discountPrice as bool?);
    }
    return Input$ProductFiltersInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  int? get brand => (_$data['brand'] as int?);

  int? get category => (_$data['category'] as int?);

  String? get customBrand => (_$data['customBrand'] as String?);

  int? get subCategory => (_$data['subCategory'] as int?);

  double? get price => (_$data['price'] as double?);

  Enum$ProductStatusEnum? get status =>
      (_$data['status'] as Enum$ProductStatusEnum?);

  Enum$SizeEnum? get size => (_$data['size'] as Enum$SizeEnum?);

  Enum$StyleEnum? get style => (_$data['style'] as Enum$StyleEnum?);

  EnumImport$ConditionEnum.ConditionsEnum? get condition =>
      (_$data['condition'] as EnumImport$ConditionEnum.ConditionsEnum?);

  bool? get discountPrice => (_$data['discountPrice'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    if (_$data.containsKey('customBrand')) {
      final l$customBrand = customBrand;
      result$data['customBrand'] = l$customBrand;
    }
    if (_$data.containsKey('subCategory')) {
      final l$subCategory = subCategory;
      result$data['subCategory'] = l$subCategory;
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$ProductStatusEnum(l$status);
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] =
          l$size == null ? null : toJson$Enum$SizeEnum(l$size);
    }
    if (_$data.containsKey('style')) {
      final l$style = style;
      result$data['style'] =
          l$style == null ? null : toJson$Enum$StyleEnum(l$style);
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionToApiValue(
              l$condition);
    }
    if (_$data.containsKey('discountPrice')) {
      final l$discountPrice = discountPrice;
      result$data['discountPrice'] = l$discountPrice;
    }
    return result$data;
  }

  CopyWith$Input$ProductFiltersInput<Input$ProductFiltersInput> get copyWith =>
      CopyWith$Input$ProductFiltersInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ProductFiltersInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$customBrand = customBrand;
    final lOther$customBrand = other.customBrand;
    if (_$data.containsKey('customBrand') !=
        other._$data.containsKey('customBrand')) {
      return false;
    }
    if (l$customBrand != lOther$customBrand) {
      return false;
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (_$data.containsKey('subCategory') !=
        other._$data.containsKey('subCategory')) {
      return false;
    }
    if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$style = style;
    final lOther$style = other.style;
    if (_$data.containsKey('style') != other._$data.containsKey('style')) {
      return false;
    }
    if (l$style != lOther$style) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$discountPrice = discountPrice;
    final lOther$discountPrice = other.discountPrice;
    if (_$data.containsKey('discountPrice') !=
        other._$data.containsKey('discountPrice')) {
      return false;
    }
    if (l$discountPrice != lOther$discountPrice) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$brand = brand;
    final l$category = category;
    final l$customBrand = customBrand;
    final l$subCategory = subCategory;
    final l$price = price;
    final l$status = status;
    final l$size = size;
    final l$style = style;
    final l$condition = condition;
    final l$discountPrice = discountPrice;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('brand') ? l$brand : const {},
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('customBrand') ? l$customBrand : const {},
      _$data.containsKey('subCategory') ? l$subCategory : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('style') ? l$style : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      _$data.containsKey('discountPrice') ? l$discountPrice : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFiltersInput<TRes> {
  factory CopyWith$Input$ProductFiltersInput(
    Input$ProductFiltersInput instance,
    TRes Function(Input$ProductFiltersInput) then,
  ) = _CopyWithImpl$Input$ProductFiltersInput;

  factory CopyWith$Input$ProductFiltersInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFiltersInput;

  TRes call({
    String? name,
    int? brand,
    int? category,
    String? customBrand,
    int? subCategory,
    double? price,
    Enum$ProductStatusEnum? status,
    Enum$SizeEnum? size,
    Enum$StyleEnum? style,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    bool? discountPrice,
  });
}

class _CopyWithImpl$Input$ProductFiltersInput<TRes>
    implements CopyWith$Input$ProductFiltersInput<TRes> {
  _CopyWithImpl$Input$ProductFiltersInput(
    this._instance,
    this._then,
  );

  final Input$ProductFiltersInput _instance;

  final TRes Function(Input$ProductFiltersInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? brand = _undefined,
    Object? category = _undefined,
    Object? customBrand = _undefined,
    Object? subCategory = _undefined,
    Object? price = _undefined,
    Object? status = _undefined,
    Object? size = _undefined,
    Object? style = _undefined,
    Object? condition = _undefined,
    Object? discountPrice = _undefined,
  }) =>
      _then(Input$ProductFiltersInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (brand != _undefined) 'brand': (brand as int?),
        if (category != _undefined) 'category': (category as int?),
        if (customBrand != _undefined) 'customBrand': (customBrand as String?),
        if (subCategory != _undefined) 'subCategory': (subCategory as int?),
        if (price != _undefined) 'price': (price as double?),
        if (status != _undefined) 'status': (status as Enum$ProductStatusEnum?),
        if (size != _undefined) 'size': (size as Enum$SizeEnum?),
        if (style != _undefined) 'style': (style as Enum$StyleEnum?),
        if (condition != _undefined)
          'condition': (condition as EnumImport$ConditionEnum.ConditionsEnum?),
        if (discountPrice != _undefined)
          'discountPrice': (discountPrice as bool?),
      }));
}

class _CopyWithStubImpl$Input$ProductFiltersInput<TRes>
    implements CopyWith$Input$ProductFiltersInput<TRes> {
  _CopyWithStubImpl$Input$ProductFiltersInput(this._res);

  TRes _res;

  call({
    String? name,
    int? brand,
    int? category,
    String? customBrand,
    int? subCategory,
    double? price,
    Enum$ProductStatusEnum? status,
    Enum$SizeEnum? size,
    Enum$StyleEnum? style,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    bool? discountPrice,
  }) =>
      _res;
}

class Input$NotificationsPreferenceInputType {
  factory Input$NotificationsPreferenceInputType({
    bool? likes,
    bool? newFollowers,
    bool? profileView,
    bool? messages,
  }) =>
      Input$NotificationsPreferenceInputType._({
        if (likes != null) r'likes': likes,
        if (newFollowers != null) r'newFollowers': newFollowers,
        if (profileView != null) r'profileView': profileView,
        if (messages != null) r'messages': messages,
      });

  Input$NotificationsPreferenceInputType._(this._$data);

  factory Input$NotificationsPreferenceInputType.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('likes')) {
      final l$likes = data['likes'];
      result$data['likes'] = (l$likes as bool?);
    }
    if (data.containsKey('newFollowers')) {
      final l$newFollowers = data['newFollowers'];
      result$data['newFollowers'] = (l$newFollowers as bool?);
    }
    if (data.containsKey('profileView')) {
      final l$profileView = data['profileView'];
      result$data['profileView'] = (l$profileView as bool?);
    }
    if (data.containsKey('messages')) {
      final l$messages = data['messages'];
      result$data['messages'] = (l$messages as bool?);
    }
    return Input$NotificationsPreferenceInputType._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get likes => (_$data['likes'] as bool?);

  bool? get newFollowers => (_$data['newFollowers'] as bool?);

  bool? get profileView => (_$data['profileView'] as bool?);

  bool? get messages => (_$data['messages'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('likes')) {
      final l$likes = likes;
      result$data['likes'] = l$likes;
    }
    if (_$data.containsKey('newFollowers')) {
      final l$newFollowers = newFollowers;
      result$data['newFollowers'] = l$newFollowers;
    }
    if (_$data.containsKey('profileView')) {
      final l$profileView = profileView;
      result$data['profileView'] = l$profileView;
    }
    if (_$data.containsKey('messages')) {
      final l$messages = messages;
      result$data['messages'] = l$messages;
    }
    return result$data;
  }

  CopyWith$Input$NotificationsPreferenceInputType<
          Input$NotificationsPreferenceInputType>
      get copyWith => CopyWith$Input$NotificationsPreferenceInputType(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NotificationsPreferenceInputType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (_$data.containsKey('likes') != other._$data.containsKey('likes')) {
      return false;
    }
    if (l$likes != lOther$likes) {
      return false;
    }
    final l$newFollowers = newFollowers;
    final lOther$newFollowers = other.newFollowers;
    if (_$data.containsKey('newFollowers') !=
        other._$data.containsKey('newFollowers')) {
      return false;
    }
    if (l$newFollowers != lOther$newFollowers) {
      return false;
    }
    final l$profileView = profileView;
    final lOther$profileView = other.profileView;
    if (_$data.containsKey('profileView') !=
        other._$data.containsKey('profileView')) {
      return false;
    }
    if (l$profileView != lOther$profileView) {
      return false;
    }
    final l$messages = messages;
    final lOther$messages = other.messages;
    if (_$data.containsKey('messages') !=
        other._$data.containsKey('messages')) {
      return false;
    }
    if (l$messages != lOther$messages) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$likes = likes;
    final l$newFollowers = newFollowers;
    final l$profileView = profileView;
    final l$messages = messages;
    return Object.hashAll([
      _$data.containsKey('likes') ? l$likes : const {},
      _$data.containsKey('newFollowers') ? l$newFollowers : const {},
      _$data.containsKey('profileView') ? l$profileView : const {},
      _$data.containsKey('messages') ? l$messages : const {},
    ]);
  }
}

abstract class CopyWith$Input$NotificationsPreferenceInputType<TRes> {
  factory CopyWith$Input$NotificationsPreferenceInputType(
    Input$NotificationsPreferenceInputType instance,
    TRes Function(Input$NotificationsPreferenceInputType) then,
  ) = _CopyWithImpl$Input$NotificationsPreferenceInputType;

  factory CopyWith$Input$NotificationsPreferenceInputType.stub(TRes res) =
      _CopyWithStubImpl$Input$NotificationsPreferenceInputType;

  TRes call({
    bool? likes,
    bool? newFollowers,
    bool? profileView,
    bool? messages,
  });
}

class _CopyWithImpl$Input$NotificationsPreferenceInputType<TRes>
    implements CopyWith$Input$NotificationsPreferenceInputType<TRes> {
  _CopyWithImpl$Input$NotificationsPreferenceInputType(
    this._instance,
    this._then,
  );

  final Input$NotificationsPreferenceInputType _instance;

  final TRes Function(Input$NotificationsPreferenceInputType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? likes = _undefined,
    Object? newFollowers = _undefined,
    Object? profileView = _undefined,
    Object? messages = _undefined,
  }) =>
      _then(Input$NotificationsPreferenceInputType._({
        ..._instance._$data,
        if (likes != _undefined) 'likes': (likes as bool?),
        if (newFollowers != _undefined) 'newFollowers': (newFollowers as bool?),
        if (profileView != _undefined) 'profileView': (profileView as bool?),
        if (messages != _undefined) 'messages': (messages as bool?),
      }));
}

class _CopyWithStubImpl$Input$NotificationsPreferenceInputType<TRes>
    implements CopyWith$Input$NotificationsPreferenceInputType<TRes> {
  _CopyWithStubImpl$Input$NotificationsPreferenceInputType(this._res);

  TRes _res;

  call({
    bool? likes,
    bool? newFollowers,
    bool? profileView,
    bool? messages,
  }) =>
      _res;
}

class Input$ImagesInputType {
  factory Input$ImagesInputType({
    required String url,
    required String thumbnail,
  }) =>
      Input$ImagesInputType._({
        r'url': url,
        r'thumbnail': thumbnail,
      });

  Input$ImagesInputType._(this._$data);

  factory Input$ImagesInputType.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$url = data['url'];
    result$data['url'] = (l$url as String);
    final l$thumbnail = data['thumbnail'];
    result$data['thumbnail'] = (l$thumbnail as String);
    return Input$ImagesInputType._(result$data);
  }

  Map<String, dynamic> _$data;

  String get url => (_$data['url'] as String);

  String get thumbnail => (_$data['thumbnail'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$url = url;
    result$data['url'] = l$url;
    final l$thumbnail = thumbnail;
    result$data['thumbnail'] = l$thumbnail;
    return result$data;
  }

  CopyWith$Input$ImagesInputType<Input$ImagesInputType> get copyWith =>
      CopyWith$Input$ImagesInputType(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ImagesInputType || runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$thumbnail = thumbnail;
    return Object.hashAll([
      l$url,
      l$thumbnail,
    ]);
  }
}

abstract class CopyWith$Input$ImagesInputType<TRes> {
  factory CopyWith$Input$ImagesInputType(
    Input$ImagesInputType instance,
    TRes Function(Input$ImagesInputType) then,
  ) = _CopyWithImpl$Input$ImagesInputType;

  factory CopyWith$Input$ImagesInputType.stub(TRes res) =
      _CopyWithStubImpl$Input$ImagesInputType;

  TRes call({
    String? url,
    String? thumbnail,
  });
}

class _CopyWithImpl$Input$ImagesInputType<TRes>
    implements CopyWith$Input$ImagesInputType<TRes> {
  _CopyWithImpl$Input$ImagesInputType(
    this._instance,
    this._then,
  );

  final Input$ImagesInputType _instance;

  final TRes Function(Input$ImagesInputType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? thumbnail = _undefined,
  }) =>
      _then(Input$ImagesInputType._({
        ..._instance._$data,
        if (url != _undefined && url != null) 'url': (url as String),
        if (thumbnail != _undefined && thumbnail != null)
          'thumbnail': (thumbnail as String),
      }));
}

class _CopyWithStubImpl$Input$ImagesInputType<TRes>
    implements CopyWith$Input$ImagesInputType<TRes> {
  _CopyWithStubImpl$Input$ImagesInputType(this._res);

  TRes _res;

  call({
    String? url,
    String? thumbnail,
  }) =>
      _res;
}

class Input$LocationInputType {
  factory Input$LocationInputType({
    String? latitude,
    String? longitude,
    String? locationName,
  }) =>
      Input$LocationInputType._({
        if (latitude != null) r'latitude': latitude,
        if (longitude != null) r'longitude': longitude,
        if (locationName != null) r'locationName': locationName,
      });

  Input$LocationInputType._(this._$data);

  factory Input$LocationInputType.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = (l$latitude as String?);
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = (l$longitude as String?);
    }
    if (data.containsKey('locationName')) {
      final l$locationName = data['locationName'];
      result$data['locationName'] = (l$locationName as String?);
    }
    return Input$LocationInputType._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get latitude => (_$data['latitude'] as String?);

  String? get longitude => (_$data['longitude'] as String?);

  String? get locationName => (_$data['locationName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude;
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude;
    }
    if (_$data.containsKey('locationName')) {
      final l$locationName = locationName;
      result$data['locationName'] = l$locationName;
    }
    return result$data;
  }

  CopyWith$Input$LocationInputType<Input$LocationInputType> get copyWith =>
      CopyWith$Input$LocationInputType(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LocationInputType || runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (_$data.containsKey('locationName') !=
        other._$data.containsKey('locationName')) {
      return false;
    }
    if (l$locationName != lOther$locationName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$locationName = locationName;
    return Object.hashAll([
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('locationName') ? l$locationName : const {},
    ]);
  }
}

abstract class CopyWith$Input$LocationInputType<TRes> {
  factory CopyWith$Input$LocationInputType(
    Input$LocationInputType instance,
    TRes Function(Input$LocationInputType) then,
  ) = _CopyWithImpl$Input$LocationInputType;

  factory CopyWith$Input$LocationInputType.stub(TRes res) =
      _CopyWithStubImpl$Input$LocationInputType;

  TRes call({
    String? latitude,
    String? longitude,
    String? locationName,
  });
}

class _CopyWithImpl$Input$LocationInputType<TRes>
    implements CopyWith$Input$LocationInputType<TRes> {
  _CopyWithImpl$Input$LocationInputType(
    this._instance,
    this._then,
  );

  final Input$LocationInputType _instance;

  final TRes Function(Input$LocationInputType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? locationName = _undefined,
  }) =>
      _then(Input$LocationInputType._({
        ..._instance._$data,
        if (latitude != _undefined) 'latitude': (latitude as String?),
        if (longitude != _undefined) 'longitude': (longitude as String?),
        if (locationName != _undefined)
          'locationName': (locationName as String?),
      }));
}

class _CopyWithStubImpl$Input$LocationInputType<TRes>
    implements CopyWith$Input$LocationInputType<TRes> {
  _CopyWithStubImpl$Input$LocationInputType(this._res);

  TRes _res;

  call({
    String? latitude,
    String? longitude,
    String? locationName,
  }) =>
      _res;
}

class Input$PhoneInputType {
  factory Input$PhoneInputType({
    required String countryCode,
    required String number,
    String? completed,
  }) =>
      Input$PhoneInputType._({
        r'countryCode': countryCode,
        r'number': number,
        if (completed != null) r'completed': completed,
      });

  Input$PhoneInputType._(this._$data);

  factory Input$PhoneInputType.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] = (l$countryCode as String);
    final l$number = data['number'];
    result$data['number'] = (l$number as String);
    if (data.containsKey('completed')) {
      final l$completed = data['completed'];
      result$data['completed'] = (l$completed as String?);
    }
    return Input$PhoneInputType._(result$data);
  }

  Map<String, dynamic> _$data;

  String get countryCode => (_$data['countryCode'] as String);

  String get number => (_$data['number'] as String);

  String? get completed => (_$data['completed'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = l$countryCode;
    final l$number = number;
    result$data['number'] = l$number;
    if (_$data.containsKey('completed')) {
      final l$completed = completed;
      result$data['completed'] = l$completed;
    }
    return result$data;
  }

  CopyWith$Input$PhoneInputType<Input$PhoneInputType> get copyWith =>
      CopyWith$Input$PhoneInputType(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PhoneInputType || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (_$data.containsKey('completed') !=
        other._$data.containsKey('completed')) {
      return false;
    }
    if (l$completed != lOther$completed) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    final l$number = number;
    final l$completed = completed;
    return Object.hashAll([
      l$countryCode,
      l$number,
      _$data.containsKey('completed') ? l$completed : const {},
    ]);
  }
}

abstract class CopyWith$Input$PhoneInputType<TRes> {
  factory CopyWith$Input$PhoneInputType(
    Input$PhoneInputType instance,
    TRes Function(Input$PhoneInputType) then,
  ) = _CopyWithImpl$Input$PhoneInputType;

  factory CopyWith$Input$PhoneInputType.stub(TRes res) =
      _CopyWithStubImpl$Input$PhoneInputType;

  TRes call({
    String? countryCode,
    String? number,
    String? completed,
  });
}

class _CopyWithImpl$Input$PhoneInputType<TRes>
    implements CopyWith$Input$PhoneInputType<TRes> {
  _CopyWithImpl$Input$PhoneInputType(
    this._instance,
    this._then,
  );

  final Input$PhoneInputType _instance;

  final TRes Function(Input$PhoneInputType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryCode = _undefined,
    Object? number = _undefined,
    Object? completed = _undefined,
  }) =>
      _then(Input$PhoneInputType._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as String),
        if (number != _undefined && number != null)
          'number': (number as String),
        if (completed != _undefined) 'completed': (completed as String?),
      }));
}

class _CopyWithStubImpl$Input$PhoneInputType<TRes>
    implements CopyWith$Input$PhoneInputType<TRes> {
  _CopyWithStubImpl$Input$PhoneInputType(this._res);

  TRes _res;

  call({
    String? countryCode,
    String? number,
    String? completed,
  }) =>
      _res;
}

class Input$ProfilePictureInputType {
  factory Input$ProfilePictureInputType({
    String? profilePictureUrl,
    String? thumbnailUrl,
  }) =>
      Input$ProfilePictureInputType._({
        if (profilePictureUrl != null) r'profilePictureUrl': profilePictureUrl,
        if (thumbnailUrl != null) r'thumbnailUrl': thumbnailUrl,
      });

  Input$ProfilePictureInputType._(this._$data);

  factory Input$ProfilePictureInputType.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('profilePictureUrl')) {
      final l$profilePictureUrl = data['profilePictureUrl'];
      result$data['profilePictureUrl'] = (l$profilePictureUrl as String?);
    }
    if (data.containsKey('thumbnailUrl')) {
      final l$thumbnailUrl = data['thumbnailUrl'];
      result$data['thumbnailUrl'] = (l$thumbnailUrl as String?);
    }
    return Input$ProfilePictureInputType._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get profilePictureUrl => (_$data['profilePictureUrl'] as String?);

  String? get thumbnailUrl => (_$data['thumbnailUrl'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('profilePictureUrl')) {
      final l$profilePictureUrl = profilePictureUrl;
      result$data['profilePictureUrl'] = l$profilePictureUrl;
    }
    if (_$data.containsKey('thumbnailUrl')) {
      final l$thumbnailUrl = thumbnailUrl;
      result$data['thumbnailUrl'] = l$thumbnailUrl;
    }
    return result$data;
  }

  CopyWith$Input$ProfilePictureInputType<Input$ProfilePictureInputType>
      get copyWith => CopyWith$Input$ProfilePictureInputType(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ProfilePictureInputType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (_$data.containsKey('profilePictureUrl') !=
        other._$data.containsKey('profilePictureUrl')) {
      return false;
    }
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (_$data.containsKey('thumbnailUrl') !=
        other._$data.containsKey('thumbnailUrl')) {
      return false;
    }
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$profilePictureUrl = profilePictureUrl;
    final l$thumbnailUrl = thumbnailUrl;
    return Object.hashAll([
      _$data.containsKey('profilePictureUrl') ? l$profilePictureUrl : const {},
      _$data.containsKey('thumbnailUrl') ? l$thumbnailUrl : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProfilePictureInputType<TRes> {
  factory CopyWith$Input$ProfilePictureInputType(
    Input$ProfilePictureInputType instance,
    TRes Function(Input$ProfilePictureInputType) then,
  ) = _CopyWithImpl$Input$ProfilePictureInputType;

  factory CopyWith$Input$ProfilePictureInputType.stub(TRes res) =
      _CopyWithStubImpl$Input$ProfilePictureInputType;

  TRes call({
    String? profilePictureUrl,
    String? thumbnailUrl,
  });
}

class _CopyWithImpl$Input$ProfilePictureInputType<TRes>
    implements CopyWith$Input$ProfilePictureInputType<TRes> {
  _CopyWithImpl$Input$ProfilePictureInputType(
    this._instance,
    this._then,
  );

  final Input$ProfilePictureInputType _instance;

  final TRes Function(Input$ProfilePictureInputType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
  }) =>
      _then(Input$ProfilePictureInputType._({
        ..._instance._$data,
        if (profilePictureUrl != _undefined)
          'profilePictureUrl': (profilePictureUrl as String?),
        if (thumbnailUrl != _undefined)
          'thumbnailUrl': (thumbnailUrl as String?),
      }));
}

class _CopyWithStubImpl$Input$ProfilePictureInputType<TRes>
    implements CopyWith$Input$ProfilePictureInputType<TRes> {
  _CopyWithStubImpl$Input$ProfilePictureInputType(this._res);

  TRes _res;

  call({
    String? profilePictureUrl,
    String? thumbnailUrl,
  }) =>
      _res;
}

enum Enum$AccountsUserGenderChoices {
  MALE,
  FEMALE,
  ANY,
  $unknown;

  factory Enum$AccountsUserGenderChoices.fromJson(String value) =>
      fromJson$Enum$AccountsUserGenderChoices(value);

  String toJson() => toJson$Enum$AccountsUserGenderChoices(this);
}

String toJson$Enum$AccountsUserGenderChoices(Enum$AccountsUserGenderChoices e) {
  switch (e) {
    case Enum$AccountsUserGenderChoices.MALE:
      return r'MALE';
    case Enum$AccountsUserGenderChoices.FEMALE:
      return r'FEMALE';
    case Enum$AccountsUserGenderChoices.ANY:
      return r'ANY';
    case Enum$AccountsUserGenderChoices.$unknown:
      return r'$unknown';
  }
}

Enum$AccountsUserGenderChoices fromJson$Enum$AccountsUserGenderChoices(
    String value) {
  switch (value) {
    case r'MALE':
      return Enum$AccountsUserGenderChoices.MALE;
    case r'FEMALE':
      return Enum$AccountsUserGenderChoices.FEMALE;
    case r'ANY':
      return Enum$AccountsUserGenderChoices.ANY;
    default:
      return Enum$AccountsUserGenderChoices.$unknown;
  }
}

enum Enum$ProductsProductSizeChoices {
  XS,
  S,
  M,
  L,
  XL,
  XXL,
  UK4,
  UK6,
  UK8,
  UK10,
  UK12,
  UK14,
  UK16,
  US4,
  US6,
  US8,
  US10,
  US12,
  US14,
  US16,
  EU34,
  EU36,
  EU38,
  EU40,
  EU42,
  EU44,
  EU46,
  ONE_SIZE,
  $unknown;

  factory Enum$ProductsProductSizeChoices.fromJson(String value) =>
      fromJson$Enum$ProductsProductSizeChoices(value);

  String toJson() => toJson$Enum$ProductsProductSizeChoices(this);
}

String toJson$Enum$ProductsProductSizeChoices(
    Enum$ProductsProductSizeChoices e) {
  switch (e) {
    case Enum$ProductsProductSizeChoices.XS:
      return r'XS';
    case Enum$ProductsProductSizeChoices.S:
      return r'S';
    case Enum$ProductsProductSizeChoices.M:
      return r'M';
    case Enum$ProductsProductSizeChoices.L:
      return r'L';
    case Enum$ProductsProductSizeChoices.XL:
      return r'XL';
    case Enum$ProductsProductSizeChoices.XXL:
      return r'XXL';
    case Enum$ProductsProductSizeChoices.UK4:
      return r'UK4';
    case Enum$ProductsProductSizeChoices.UK6:
      return r'UK6';
    case Enum$ProductsProductSizeChoices.UK8:
      return r'UK8';
    case Enum$ProductsProductSizeChoices.UK10:
      return r'UK10';
    case Enum$ProductsProductSizeChoices.UK12:
      return r'UK12';
    case Enum$ProductsProductSizeChoices.UK14:
      return r'UK14';
    case Enum$ProductsProductSizeChoices.UK16:
      return r'UK16';
    case Enum$ProductsProductSizeChoices.US4:
      return r'US4';
    case Enum$ProductsProductSizeChoices.US6:
      return r'US6';
    case Enum$ProductsProductSizeChoices.US8:
      return r'US8';
    case Enum$ProductsProductSizeChoices.US10:
      return r'US10';
    case Enum$ProductsProductSizeChoices.US12:
      return r'US12';
    case Enum$ProductsProductSizeChoices.US14:
      return r'US14';
    case Enum$ProductsProductSizeChoices.US16:
      return r'US16';
    case Enum$ProductsProductSizeChoices.EU34:
      return r'EU34';
    case Enum$ProductsProductSizeChoices.EU36:
      return r'EU36';
    case Enum$ProductsProductSizeChoices.EU38:
      return r'EU38';
    case Enum$ProductsProductSizeChoices.EU40:
      return r'EU40';
    case Enum$ProductsProductSizeChoices.EU42:
      return r'EU42';
    case Enum$ProductsProductSizeChoices.EU44:
      return r'EU44';
    case Enum$ProductsProductSizeChoices.EU46:
      return r'EU46';
    case Enum$ProductsProductSizeChoices.ONE_SIZE:
      return r'ONE_SIZE';
    case Enum$ProductsProductSizeChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsProductSizeChoices fromJson$Enum$ProductsProductSizeChoices(
    String value) {
  switch (value) {
    case r'XS':
      return Enum$ProductsProductSizeChoices.XS;
    case r'S':
      return Enum$ProductsProductSizeChoices.S;
    case r'M':
      return Enum$ProductsProductSizeChoices.M;
    case r'L':
      return Enum$ProductsProductSizeChoices.L;
    case r'XL':
      return Enum$ProductsProductSizeChoices.XL;
    case r'XXL':
      return Enum$ProductsProductSizeChoices.XXL;
    case r'UK4':
      return Enum$ProductsProductSizeChoices.UK4;
    case r'UK6':
      return Enum$ProductsProductSizeChoices.UK6;
    case r'UK8':
      return Enum$ProductsProductSizeChoices.UK8;
    case r'UK10':
      return Enum$ProductsProductSizeChoices.UK10;
    case r'UK12':
      return Enum$ProductsProductSizeChoices.UK12;
    case r'UK14':
      return Enum$ProductsProductSizeChoices.UK14;
    case r'UK16':
      return Enum$ProductsProductSizeChoices.UK16;
    case r'US4':
      return Enum$ProductsProductSizeChoices.US4;
    case r'US6':
      return Enum$ProductsProductSizeChoices.US6;
    case r'US8':
      return Enum$ProductsProductSizeChoices.US8;
    case r'US10':
      return Enum$ProductsProductSizeChoices.US10;
    case r'US12':
      return Enum$ProductsProductSizeChoices.US12;
    case r'US14':
      return Enum$ProductsProductSizeChoices.US14;
    case r'US16':
      return Enum$ProductsProductSizeChoices.US16;
    case r'EU34':
      return Enum$ProductsProductSizeChoices.EU34;
    case r'EU36':
      return Enum$ProductsProductSizeChoices.EU36;
    case r'EU38':
      return Enum$ProductsProductSizeChoices.EU38;
    case r'EU40':
      return Enum$ProductsProductSizeChoices.EU40;
    case r'EU42':
      return Enum$ProductsProductSizeChoices.EU42;
    case r'EU44':
      return Enum$ProductsProductSizeChoices.EU44;
    case r'EU46':
      return Enum$ProductsProductSizeChoices.EU46;
    case r'ONE_SIZE':
      return Enum$ProductsProductSizeChoices.ONE_SIZE;
    default:
      return Enum$ProductsProductSizeChoices.$unknown;
  }
}

enum Enum$ProductsProductStyleChoices {
  WORKWEAR,
  WORKOUT,
  CASUAL,
  PARTY_DRESS,
  PARTY_OUTFIT,
  FORMAL_WEAR,
  EVENING_WEAR,
  WEDDING_GUEST,
  LOUNGEWEAR,
  VACATION_RESORT_WEAR,
  FESTIVAL_WEAR,
  ACTIVEWEAR,
  NIGHTWEAR,
  VINTAGE,
  Y2K,
  BOHO,
  MINIMALIST,
  GRUNGE,
  CHIC,
  STREETWEAR,
  PREPPY,
  RETRO,
  COTTAGECORE,
  GLAM,
  SUMMER_STYLES,
  WINTER_ESSENTIALS,
  SPRING_FLORALS,
  AUTUMN_LAYERS,
  RAINY_DAY_WEAR,
  DENIM_JEANS,
  DRESSES_GOWNS,
  JACKETS_COATS,
  KNITWEAR_SWEATERS,
  SKIRTS_SHORTS,
  SUITS_BLAZERS,
  TOPS_BLOUSES,
  SHOES_FOOTWEAR,
  TRAVEL_FRIENDLY,
  MATERNITY_WEAR,
  ATHLEISURE,
  ECO_FRIENDLY_UPCYCLED,
  FESTIVAL_READY,
  DATE_NIGHT,
  ETHNIC_WEAR,
  OFFICE_PARTY_OUTFIT,
  COCKTAIL_ATTIRE,
  PROM_DRESSES,
  MUSIC_CONCERT_WEAR,
  OVERSIZED,
  SLIM_FIT,
  RELAXED_FIT,
  CHRISTMAS,
  $unknown;

  factory Enum$ProductsProductStyleChoices.fromJson(String value) =>
      fromJson$Enum$ProductsProductStyleChoices(value);

  String toJson() => toJson$Enum$ProductsProductStyleChoices(this);
}

String toJson$Enum$ProductsProductStyleChoices(
    Enum$ProductsProductStyleChoices e) {
  switch (e) {
    case Enum$ProductsProductStyleChoices.WORKWEAR:
      return r'WORKWEAR';
    case Enum$ProductsProductStyleChoices.WORKOUT:
      return r'WORKOUT';
    case Enum$ProductsProductStyleChoices.CASUAL:
      return r'CASUAL';
    case Enum$ProductsProductStyleChoices.PARTY_DRESS:
      return r'PARTY_DRESS';
    case Enum$ProductsProductStyleChoices.PARTY_OUTFIT:
      return r'PARTY_OUTFIT';
    case Enum$ProductsProductStyleChoices.FORMAL_WEAR:
      return r'FORMAL_WEAR';
    case Enum$ProductsProductStyleChoices.EVENING_WEAR:
      return r'EVENING_WEAR';
    case Enum$ProductsProductStyleChoices.WEDDING_GUEST:
      return r'WEDDING_GUEST';
    case Enum$ProductsProductStyleChoices.LOUNGEWEAR:
      return r'LOUNGEWEAR';
    case Enum$ProductsProductStyleChoices.VACATION_RESORT_WEAR:
      return r'VACATION_RESORT_WEAR';
    case Enum$ProductsProductStyleChoices.FESTIVAL_WEAR:
      return r'FESTIVAL_WEAR';
    case Enum$ProductsProductStyleChoices.ACTIVEWEAR:
      return r'ACTIVEWEAR';
    case Enum$ProductsProductStyleChoices.NIGHTWEAR:
      return r'NIGHTWEAR';
    case Enum$ProductsProductStyleChoices.VINTAGE:
      return r'VINTAGE';
    case Enum$ProductsProductStyleChoices.Y2K:
      return r'Y2K';
    case Enum$ProductsProductStyleChoices.BOHO:
      return r'BOHO';
    case Enum$ProductsProductStyleChoices.MINIMALIST:
      return r'MINIMALIST';
    case Enum$ProductsProductStyleChoices.GRUNGE:
      return r'GRUNGE';
    case Enum$ProductsProductStyleChoices.CHIC:
      return r'CHIC';
    case Enum$ProductsProductStyleChoices.STREETWEAR:
      return r'STREETWEAR';
    case Enum$ProductsProductStyleChoices.PREPPY:
      return r'PREPPY';
    case Enum$ProductsProductStyleChoices.RETRO:
      return r'RETRO';
    case Enum$ProductsProductStyleChoices.COTTAGECORE:
      return r'COTTAGECORE';
    case Enum$ProductsProductStyleChoices.GLAM:
      return r'GLAM';
    case Enum$ProductsProductStyleChoices.SUMMER_STYLES:
      return r'SUMMER_STYLES';
    case Enum$ProductsProductStyleChoices.WINTER_ESSENTIALS:
      return r'WINTER_ESSENTIALS';
    case Enum$ProductsProductStyleChoices.SPRING_FLORALS:
      return r'SPRING_FLORALS';
    case Enum$ProductsProductStyleChoices.AUTUMN_LAYERS:
      return r'AUTUMN_LAYERS';
    case Enum$ProductsProductStyleChoices.RAINY_DAY_WEAR:
      return r'RAINY_DAY_WEAR';
    case Enum$ProductsProductStyleChoices.DENIM_JEANS:
      return r'DENIM_JEANS';
    case Enum$ProductsProductStyleChoices.DRESSES_GOWNS:
      return r'DRESSES_GOWNS';
    case Enum$ProductsProductStyleChoices.JACKETS_COATS:
      return r'JACKETS_COATS';
    case Enum$ProductsProductStyleChoices.KNITWEAR_SWEATERS:
      return r'KNITWEAR_SWEATERS';
    case Enum$ProductsProductStyleChoices.SKIRTS_SHORTS:
      return r'SKIRTS_SHORTS';
    case Enum$ProductsProductStyleChoices.SUITS_BLAZERS:
      return r'SUITS_BLAZERS';
    case Enum$ProductsProductStyleChoices.TOPS_BLOUSES:
      return r'TOPS_BLOUSES';
    case Enum$ProductsProductStyleChoices.SHOES_FOOTWEAR:
      return r'SHOES_FOOTWEAR';
    case Enum$ProductsProductStyleChoices.TRAVEL_FRIENDLY:
      return r'TRAVEL_FRIENDLY';
    case Enum$ProductsProductStyleChoices.MATERNITY_WEAR:
      return r'MATERNITY_WEAR';
    case Enum$ProductsProductStyleChoices.ATHLEISURE:
      return r'ATHLEISURE';
    case Enum$ProductsProductStyleChoices.ECO_FRIENDLY_UPCYCLED:
      return r'ECO_FRIENDLY_UPCYCLED';
    case Enum$ProductsProductStyleChoices.FESTIVAL_READY:
      return r'FESTIVAL_READY';
    case Enum$ProductsProductStyleChoices.DATE_NIGHT:
      return r'DATE_NIGHT';
    case Enum$ProductsProductStyleChoices.ETHNIC_WEAR:
      return r'ETHNIC_WEAR';
    case Enum$ProductsProductStyleChoices.OFFICE_PARTY_OUTFIT:
      return r'OFFICE_PARTY_OUTFIT';
    case Enum$ProductsProductStyleChoices.COCKTAIL_ATTIRE:
      return r'COCKTAIL_ATTIRE';
    case Enum$ProductsProductStyleChoices.PROM_DRESSES:
      return r'PROM_DRESSES';
    case Enum$ProductsProductStyleChoices.MUSIC_CONCERT_WEAR:
      return r'MUSIC_CONCERT_WEAR';
    case Enum$ProductsProductStyleChoices.OVERSIZED:
      return r'OVERSIZED';
    case Enum$ProductsProductStyleChoices.SLIM_FIT:
      return r'SLIM_FIT';
    case Enum$ProductsProductStyleChoices.RELAXED_FIT:
      return r'RELAXED_FIT';
    case Enum$ProductsProductStyleChoices.CHRISTMAS:
      return r'CHRISTMAS';
    case Enum$ProductsProductStyleChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsProductStyleChoices fromJson$Enum$ProductsProductStyleChoices(
    String value) {
  switch (value) {
    case r'WORKWEAR':
      return Enum$ProductsProductStyleChoices.WORKWEAR;
    case r'WORKOUT':
      return Enum$ProductsProductStyleChoices.WORKOUT;
    case r'CASUAL':
      return Enum$ProductsProductStyleChoices.CASUAL;
    case r'PARTY_DRESS':
      return Enum$ProductsProductStyleChoices.PARTY_DRESS;
    case r'PARTY_OUTFIT':
      return Enum$ProductsProductStyleChoices.PARTY_OUTFIT;
    case r'FORMAL_WEAR':
      return Enum$ProductsProductStyleChoices.FORMAL_WEAR;
    case r'EVENING_WEAR':
      return Enum$ProductsProductStyleChoices.EVENING_WEAR;
    case r'WEDDING_GUEST':
      return Enum$ProductsProductStyleChoices.WEDDING_GUEST;
    case r'LOUNGEWEAR':
      return Enum$ProductsProductStyleChoices.LOUNGEWEAR;
    case r'VACATION_RESORT_WEAR':
      return Enum$ProductsProductStyleChoices.VACATION_RESORT_WEAR;
    case r'FESTIVAL_WEAR':
      return Enum$ProductsProductStyleChoices.FESTIVAL_WEAR;
    case r'ACTIVEWEAR':
      return Enum$ProductsProductStyleChoices.ACTIVEWEAR;
    case r'NIGHTWEAR':
      return Enum$ProductsProductStyleChoices.NIGHTWEAR;
    case r'VINTAGE':
      return Enum$ProductsProductStyleChoices.VINTAGE;
    case r'Y2K':
      return Enum$ProductsProductStyleChoices.Y2K;
    case r'BOHO':
      return Enum$ProductsProductStyleChoices.BOHO;
    case r'MINIMALIST':
      return Enum$ProductsProductStyleChoices.MINIMALIST;
    case r'GRUNGE':
      return Enum$ProductsProductStyleChoices.GRUNGE;
    case r'CHIC':
      return Enum$ProductsProductStyleChoices.CHIC;
    case r'STREETWEAR':
      return Enum$ProductsProductStyleChoices.STREETWEAR;
    case r'PREPPY':
      return Enum$ProductsProductStyleChoices.PREPPY;
    case r'RETRO':
      return Enum$ProductsProductStyleChoices.RETRO;
    case r'COTTAGECORE':
      return Enum$ProductsProductStyleChoices.COTTAGECORE;
    case r'GLAM':
      return Enum$ProductsProductStyleChoices.GLAM;
    case r'SUMMER_STYLES':
      return Enum$ProductsProductStyleChoices.SUMMER_STYLES;
    case r'WINTER_ESSENTIALS':
      return Enum$ProductsProductStyleChoices.WINTER_ESSENTIALS;
    case r'SPRING_FLORALS':
      return Enum$ProductsProductStyleChoices.SPRING_FLORALS;
    case r'AUTUMN_LAYERS':
      return Enum$ProductsProductStyleChoices.AUTUMN_LAYERS;
    case r'RAINY_DAY_WEAR':
      return Enum$ProductsProductStyleChoices.RAINY_DAY_WEAR;
    case r'DENIM_JEANS':
      return Enum$ProductsProductStyleChoices.DENIM_JEANS;
    case r'DRESSES_GOWNS':
      return Enum$ProductsProductStyleChoices.DRESSES_GOWNS;
    case r'JACKETS_COATS':
      return Enum$ProductsProductStyleChoices.JACKETS_COATS;
    case r'KNITWEAR_SWEATERS':
      return Enum$ProductsProductStyleChoices.KNITWEAR_SWEATERS;
    case r'SKIRTS_SHORTS':
      return Enum$ProductsProductStyleChoices.SKIRTS_SHORTS;
    case r'SUITS_BLAZERS':
      return Enum$ProductsProductStyleChoices.SUITS_BLAZERS;
    case r'TOPS_BLOUSES':
      return Enum$ProductsProductStyleChoices.TOPS_BLOUSES;
    case r'SHOES_FOOTWEAR':
      return Enum$ProductsProductStyleChoices.SHOES_FOOTWEAR;
    case r'TRAVEL_FRIENDLY':
      return Enum$ProductsProductStyleChoices.TRAVEL_FRIENDLY;
    case r'MATERNITY_WEAR':
      return Enum$ProductsProductStyleChoices.MATERNITY_WEAR;
    case r'ATHLEISURE':
      return Enum$ProductsProductStyleChoices.ATHLEISURE;
    case r'ECO_FRIENDLY_UPCYCLED':
      return Enum$ProductsProductStyleChoices.ECO_FRIENDLY_UPCYCLED;
    case r'FESTIVAL_READY':
      return Enum$ProductsProductStyleChoices.FESTIVAL_READY;
    case r'DATE_NIGHT':
      return Enum$ProductsProductStyleChoices.DATE_NIGHT;
    case r'ETHNIC_WEAR':
      return Enum$ProductsProductStyleChoices.ETHNIC_WEAR;
    case r'OFFICE_PARTY_OUTFIT':
      return Enum$ProductsProductStyleChoices.OFFICE_PARTY_OUTFIT;
    case r'COCKTAIL_ATTIRE':
      return Enum$ProductsProductStyleChoices.COCKTAIL_ATTIRE;
    case r'PROM_DRESSES':
      return Enum$ProductsProductStyleChoices.PROM_DRESSES;
    case r'MUSIC_CONCERT_WEAR':
      return Enum$ProductsProductStyleChoices.MUSIC_CONCERT_WEAR;
    case r'OVERSIZED':
      return Enum$ProductsProductStyleChoices.OVERSIZED;
    case r'SLIM_FIT':
      return Enum$ProductsProductStyleChoices.SLIM_FIT;
    case r'RELAXED_FIT':
      return Enum$ProductsProductStyleChoices.RELAXED_FIT;
    case r'CHRISTMAS':
      return Enum$ProductsProductStyleChoices.CHRISTMAS;
    default:
      return Enum$ProductsProductStyleChoices.$unknown;
  }
}

enum Enum$ProductsProductParcelSizeChoices {
  SMALL,
  MEDIUM,
  LARGE,
  $unknown;

  factory Enum$ProductsProductParcelSizeChoices.fromJson(String value) =>
      fromJson$Enum$ProductsProductParcelSizeChoices(value);

  String toJson() => toJson$Enum$ProductsProductParcelSizeChoices(this);
}

String toJson$Enum$ProductsProductParcelSizeChoices(
    Enum$ProductsProductParcelSizeChoices e) {
  switch (e) {
    case Enum$ProductsProductParcelSizeChoices.SMALL:
      return r'SMALL';
    case Enum$ProductsProductParcelSizeChoices.MEDIUM:
      return r'MEDIUM';
    case Enum$ProductsProductParcelSizeChoices.LARGE:
      return r'LARGE';
    case Enum$ProductsProductParcelSizeChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsProductParcelSizeChoices
    fromJson$Enum$ProductsProductParcelSizeChoices(String value) {
  switch (value) {
    case r'SMALL':
      return Enum$ProductsProductParcelSizeChoices.SMALL;
    case r'MEDIUM':
      return Enum$ProductsProductParcelSizeChoices.MEDIUM;
    case r'LARGE':
      return Enum$ProductsProductParcelSizeChoices.LARGE;
    default:
      return Enum$ProductsProductParcelSizeChoices.$unknown;
  }
}

enum Enum$ProductsProductConditionChoices {
  NEW_WITH_TAGS,
  LIKE_NEW,
  USED,
  HEAVILY_USED,
  $unknown;

  factory Enum$ProductsProductConditionChoices.fromJson(String value) =>
      fromJson$Enum$ProductsProductConditionChoices(value);

  String toJson() => toJson$Enum$ProductsProductConditionChoices(this);
}

String toJson$Enum$ProductsProductConditionChoices(
    Enum$ProductsProductConditionChoices e) {
  switch (e) {
    case Enum$ProductsProductConditionChoices.NEW_WITH_TAGS:
      return r'NEW_WITH_TAGS';
    case Enum$ProductsProductConditionChoices.LIKE_NEW:
      return r'LIKE_NEW';
    case Enum$ProductsProductConditionChoices.USED:
      return r'USED';
    case Enum$ProductsProductConditionChoices.HEAVILY_USED:
      return r'HEAVILY_USED';
    case Enum$ProductsProductConditionChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsProductConditionChoices
    fromJson$Enum$ProductsProductConditionChoices(String value) {
  switch (value) {
    case r'NEW_WITH_TAGS':
      return Enum$ProductsProductConditionChoices.NEW_WITH_TAGS;
    case r'LIKE_NEW':
      return Enum$ProductsProductConditionChoices.LIKE_NEW;
    case r'USED':
      return Enum$ProductsProductConditionChoices.USED;
    case r'HEAVILY_USED':
      return Enum$ProductsProductConditionChoices.HEAVILY_USED;
    default:
      return Enum$ProductsProductConditionChoices.$unknown;
  }
}

enum Enum$ProductsProductStatusChoices {
  ACTIVE,
  INACTIVE,
  SOLD,
  $unknown;

  factory Enum$ProductsProductStatusChoices.fromJson(String value) =>
      fromJson$Enum$ProductsProductStatusChoices(value);

  String toJson() => toJson$Enum$ProductsProductStatusChoices(this);
}

String toJson$Enum$ProductsProductStatusChoices(
    Enum$ProductsProductStatusChoices e) {
  switch (e) {
    case Enum$ProductsProductStatusChoices.ACTIVE:
      return r'ACTIVE';
    case Enum$ProductsProductStatusChoices.INACTIVE:
      return r'INACTIVE';
    case Enum$ProductsProductStatusChoices.SOLD:
      return r'SOLD';
    case Enum$ProductsProductStatusChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsProductStatusChoices fromJson$Enum$ProductsProductStatusChoices(
    String value) {
  switch (value) {
    case r'ACTIVE':
      return Enum$ProductsProductStatusChoices.ACTIVE;
    case r'INACTIVE':
      return Enum$ProductsProductStatusChoices.INACTIVE;
    case r'SOLD':
      return Enum$ProductsProductStatusChoices.SOLD;
    default:
      return Enum$ProductsProductStatusChoices.$unknown;
  }
}

enum Enum$ChatsMessageAttachmentTypeChoices {
  PICTURE,
  VIDEO,
  AUDIO,
  ZIP,
  $unknown;

  factory Enum$ChatsMessageAttachmentTypeChoices.fromJson(String value) =>
      fromJson$Enum$ChatsMessageAttachmentTypeChoices(value);

  String toJson() => toJson$Enum$ChatsMessageAttachmentTypeChoices(this);
}

String toJson$Enum$ChatsMessageAttachmentTypeChoices(
    Enum$ChatsMessageAttachmentTypeChoices e) {
  switch (e) {
    case Enum$ChatsMessageAttachmentTypeChoices.PICTURE:
      return r'PICTURE';
    case Enum$ChatsMessageAttachmentTypeChoices.VIDEO:
      return r'VIDEO';
    case Enum$ChatsMessageAttachmentTypeChoices.AUDIO:
      return r'AUDIO';
    case Enum$ChatsMessageAttachmentTypeChoices.ZIP:
      return r'ZIP';
    case Enum$ChatsMessageAttachmentTypeChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ChatsMessageAttachmentTypeChoices
    fromJson$Enum$ChatsMessageAttachmentTypeChoices(String value) {
  switch (value) {
    case r'PICTURE':
      return Enum$ChatsMessageAttachmentTypeChoices.PICTURE;
    case r'VIDEO':
      return Enum$ChatsMessageAttachmentTypeChoices.VIDEO;
    case r'AUDIO':
      return Enum$ChatsMessageAttachmentTypeChoices.AUDIO;
    case r'ZIP':
      return Enum$ChatsMessageAttachmentTypeChoices.ZIP;
    default:
      return Enum$ChatsMessageAttachmentTypeChoices.$unknown;
  }
}

enum Enum$ProductsOrderStatusChoices {
  PENDING,
  CONFIRMED,
  SHIPPED,
  DELIVERED,
  CANCELLED,
  REFUNDED,
  $unknown;

  factory Enum$ProductsOrderStatusChoices.fromJson(String value) =>
      fromJson$Enum$ProductsOrderStatusChoices(value);

  String toJson() => toJson$Enum$ProductsOrderStatusChoices(this);
}

String toJson$Enum$ProductsOrderStatusChoices(
    Enum$ProductsOrderStatusChoices e) {
  switch (e) {
    case Enum$ProductsOrderStatusChoices.PENDING:
      return r'PENDING';
    case Enum$ProductsOrderStatusChoices.CONFIRMED:
      return r'CONFIRMED';
    case Enum$ProductsOrderStatusChoices.SHIPPED:
      return r'SHIPPED';
    case Enum$ProductsOrderStatusChoices.DELIVERED:
      return r'DELIVERED';
    case Enum$ProductsOrderStatusChoices.CANCELLED:
      return r'CANCELLED';
    case Enum$ProductsOrderStatusChoices.REFUNDED:
      return r'REFUNDED';
    case Enum$ProductsOrderStatusChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsOrderStatusChoices fromJson$Enum$ProductsOrderStatusChoices(
    String value) {
  switch (value) {
    case r'PENDING':
      return Enum$ProductsOrderStatusChoices.PENDING;
    case r'CONFIRMED':
      return Enum$ProductsOrderStatusChoices.CONFIRMED;
    case r'SHIPPED':
      return Enum$ProductsOrderStatusChoices.SHIPPED;
    case r'DELIVERED':
      return Enum$ProductsOrderStatusChoices.DELIVERED;
    case r'CANCELLED':
      return Enum$ProductsOrderStatusChoices.CANCELLED;
    case r'REFUNDED':
      return Enum$ProductsOrderStatusChoices.REFUNDED;
    default:
      return Enum$ProductsOrderStatusChoices.$unknown;
  }
}

enum Enum$PaymentsPaymentPaymentMethodChoices {
  BANK_TRANSFER,
  CARD,
  STRIPE,
  $unknown;

  factory Enum$PaymentsPaymentPaymentMethodChoices.fromJson(String value) =>
      fromJson$Enum$PaymentsPaymentPaymentMethodChoices(value);

  String toJson() => toJson$Enum$PaymentsPaymentPaymentMethodChoices(this);
}

String toJson$Enum$PaymentsPaymentPaymentMethodChoices(
    Enum$PaymentsPaymentPaymentMethodChoices e) {
  switch (e) {
    case Enum$PaymentsPaymentPaymentMethodChoices.BANK_TRANSFER:
      return r'BANK_TRANSFER';
    case Enum$PaymentsPaymentPaymentMethodChoices.CARD:
      return r'CARD';
    case Enum$PaymentsPaymentPaymentMethodChoices.STRIPE:
      return r'STRIPE';
    case Enum$PaymentsPaymentPaymentMethodChoices.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentsPaymentPaymentMethodChoices
    fromJson$Enum$PaymentsPaymentPaymentMethodChoices(String value) {
  switch (value) {
    case r'BANK_TRANSFER':
      return Enum$PaymentsPaymentPaymentMethodChoices.BANK_TRANSFER;
    case r'CARD':
      return Enum$PaymentsPaymentPaymentMethodChoices.CARD;
    case r'STRIPE':
      return Enum$PaymentsPaymentPaymentMethodChoices.STRIPE;
    default:
      return Enum$PaymentsPaymentPaymentMethodChoices.$unknown;
  }
}

enum Enum$PaymentsPaymentPaymentStatusChoices {
  PENDING,
  SUCCESSFUL,
  REFUNDED,
  FAILED,
  CANCELLED,
  $unknown;

  factory Enum$PaymentsPaymentPaymentStatusChoices.fromJson(String value) =>
      fromJson$Enum$PaymentsPaymentPaymentStatusChoices(value);

  String toJson() => toJson$Enum$PaymentsPaymentPaymentStatusChoices(this);
}

String toJson$Enum$PaymentsPaymentPaymentStatusChoices(
    Enum$PaymentsPaymentPaymentStatusChoices e) {
  switch (e) {
    case Enum$PaymentsPaymentPaymentStatusChoices.PENDING:
      return r'PENDING';
    case Enum$PaymentsPaymentPaymentStatusChoices.SUCCESSFUL:
      return r'SUCCESSFUL';
    case Enum$PaymentsPaymentPaymentStatusChoices.REFUNDED:
      return r'REFUNDED';
    case Enum$PaymentsPaymentPaymentStatusChoices.FAILED:
      return r'FAILED';
    case Enum$PaymentsPaymentPaymentStatusChoices.CANCELLED:
      return r'CANCELLED';
    case Enum$PaymentsPaymentPaymentStatusChoices.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentsPaymentPaymentStatusChoices
    fromJson$Enum$PaymentsPaymentPaymentStatusChoices(String value) {
  switch (value) {
    case r'PENDING':
      return Enum$PaymentsPaymentPaymentStatusChoices.PENDING;
    case r'SUCCESSFUL':
      return Enum$PaymentsPaymentPaymentStatusChoices.SUCCESSFUL;
    case r'REFUNDED':
      return Enum$PaymentsPaymentPaymentStatusChoices.REFUNDED;
    case r'FAILED':
      return Enum$PaymentsPaymentPaymentStatusChoices.FAILED;
    case r'CANCELLED':
      return Enum$PaymentsPaymentPaymentStatusChoices.CANCELLED;
    default:
      return Enum$PaymentsPaymentPaymentStatusChoices.$unknown;
  }
}

enum Enum$ProductStatusEnum {
  ACTIVE,
  INACTIVE,
  SOLD,
  $unknown;

  factory Enum$ProductStatusEnum.fromJson(String value) =>
      fromJson$Enum$ProductStatusEnum(value);

  String toJson() => toJson$Enum$ProductStatusEnum(this);
}

String toJson$Enum$ProductStatusEnum(Enum$ProductStatusEnum e) {
  switch (e) {
    case Enum$ProductStatusEnum.ACTIVE:
      return r'ACTIVE';
    case Enum$ProductStatusEnum.INACTIVE:
      return r'INACTIVE';
    case Enum$ProductStatusEnum.SOLD:
      return r'SOLD';
    case Enum$ProductStatusEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ProductStatusEnum fromJson$Enum$ProductStatusEnum(String value) {
  switch (value) {
    case r'ACTIVE':
      return Enum$ProductStatusEnum.ACTIVE;
    case r'INACTIVE':
      return Enum$ProductStatusEnum.INACTIVE;
    case r'SOLD':
      return Enum$ProductStatusEnum.SOLD;
    default:
      return Enum$ProductStatusEnum.$unknown;
  }
}

enum Enum$SizeEnum {
  XS,
  S,
  M,
  L,
  XL,
  XXL,
  UK4,
  UK6,
  UK8,
  UK10,
  UK12,
  UK14,
  UK16,
  US4,
  US6,
  US8,
  US10,
  US12,
  US14,
  US16,
  EU34,
  EU36,
  EU38,
  EU40,
  EU42,
  EU44,
  EU46,
  ONE_SIZE,
  $unknown;

  factory Enum$SizeEnum.fromJson(String value) => fromJson$Enum$SizeEnum(value);

  String toJson() => toJson$Enum$SizeEnum(this);
}

String toJson$Enum$SizeEnum(Enum$SizeEnum e) {
  switch (e) {
    case Enum$SizeEnum.XS:
      return r'XS';
    case Enum$SizeEnum.S:
      return r'S';
    case Enum$SizeEnum.M:
      return r'M';
    case Enum$SizeEnum.L:
      return r'L';
    case Enum$SizeEnum.XL:
      return r'XL';
    case Enum$SizeEnum.XXL:
      return r'XXL';
    case Enum$SizeEnum.UK4:
      return r'UK4';
    case Enum$SizeEnum.UK6:
      return r'UK6';
    case Enum$SizeEnum.UK8:
      return r'UK8';
    case Enum$SizeEnum.UK10:
      return r'UK10';
    case Enum$SizeEnum.UK12:
      return r'UK12';
    case Enum$SizeEnum.UK14:
      return r'UK14';
    case Enum$SizeEnum.UK16:
      return r'UK16';
    case Enum$SizeEnum.US4:
      return r'US4';
    case Enum$SizeEnum.US6:
      return r'US6';
    case Enum$SizeEnum.US8:
      return r'US8';
    case Enum$SizeEnum.US10:
      return r'US10';
    case Enum$SizeEnum.US12:
      return r'US12';
    case Enum$SizeEnum.US14:
      return r'US14';
    case Enum$SizeEnum.US16:
      return r'US16';
    case Enum$SizeEnum.EU34:
      return r'EU34';
    case Enum$SizeEnum.EU36:
      return r'EU36';
    case Enum$SizeEnum.EU38:
      return r'EU38';
    case Enum$SizeEnum.EU40:
      return r'EU40';
    case Enum$SizeEnum.EU42:
      return r'EU42';
    case Enum$SizeEnum.EU44:
      return r'EU44';
    case Enum$SizeEnum.EU46:
      return r'EU46';
    case Enum$SizeEnum.ONE_SIZE:
      return r'ONE_SIZE';
    case Enum$SizeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SizeEnum fromJson$Enum$SizeEnum(String value) {
  switch (value) {
    case r'XS':
      return Enum$SizeEnum.XS;
    case r'S':
      return Enum$SizeEnum.S;
    case r'M':
      return Enum$SizeEnum.M;
    case r'L':
      return Enum$SizeEnum.L;
    case r'XL':
      return Enum$SizeEnum.XL;
    case r'XXL':
      return Enum$SizeEnum.XXL;
    case r'UK4':
      return Enum$SizeEnum.UK4;
    case r'UK6':
      return Enum$SizeEnum.UK6;
    case r'UK8':
      return Enum$SizeEnum.UK8;
    case r'UK10':
      return Enum$SizeEnum.UK10;
    case r'UK12':
      return Enum$SizeEnum.UK12;
    case r'UK14':
      return Enum$SizeEnum.UK14;
    case r'UK16':
      return Enum$SizeEnum.UK16;
    case r'US4':
      return Enum$SizeEnum.US4;
    case r'US6':
      return Enum$SizeEnum.US6;
    case r'US8':
      return Enum$SizeEnum.US8;
    case r'US10':
      return Enum$SizeEnum.US10;
    case r'US12':
      return Enum$SizeEnum.US12;
    case r'US14':
      return Enum$SizeEnum.US14;
    case r'US16':
      return Enum$SizeEnum.US16;
    case r'EU34':
      return Enum$SizeEnum.EU34;
    case r'EU36':
      return Enum$SizeEnum.EU36;
    case r'EU38':
      return Enum$SizeEnum.EU38;
    case r'EU40':
      return Enum$SizeEnum.EU40;
    case r'EU42':
      return Enum$SizeEnum.EU42;
    case r'EU44':
      return Enum$SizeEnum.EU44;
    case r'EU46':
      return Enum$SizeEnum.EU46;
    case r'ONE_SIZE':
      return Enum$SizeEnum.ONE_SIZE;
    default:
      return Enum$SizeEnum.$unknown;
  }
}

enum Enum$StyleEnum {
  WORKWEAR,
  WORKOUT,
  CASUAL,
  PARTY_DRESS,
  PARTY_OUTFIT,
  FORMAL_WEAR,
  EVENING_WEAR,
  WEDDING_GUEST,
  LOUNGEWEAR,
  VACATION_RESORT_WEAR,
  FESTIVAL_WEAR,
  ACTIVEWEAR,
  NIGHTWEAR,
  VINTAGE,
  Y2K,
  BOHO,
  MINIMALIST,
  GRUNGE,
  CHIC,
  STREETWEAR,
  PREPPY,
  RETRO,
  COTTAGECORE,
  GLAM,
  SUMMER_STYLES,
  WINTER_ESSENTIALS,
  SPRING_FLORALS,
  AUTUMN_LAYERS,
  RAINY_DAY_WEAR,
  DENIM_JEANS,
  DRESSES_GOWNS,
  JACKETS_COATS,
  KNITWEAR_SWEATERS,
  SKIRTS_SHORTS,
  SUITS_BLAZERS,
  TOPS_BLOUSES,
  SHOES_FOOTWEAR,
  TRAVEL_FRIENDLY,
  MATERNITY_WEAR,
  ATHLEISURE,
  ECO_FRIENDLY,
  FESTIVAL_READY,
  DATE_NIGHT,
  ETHNIC_WEAR,
  OFFICE_PARTY_OUTFIT,
  COCKTAIL_ATTIRE,
  PROM_DRESSES,
  MUSIC_CONCERT_WEAR,
  OVERSIZED,
  SLIM_FIT,
  RELAXED_FIT,
  CHRISTMAS,
  $unknown;

  factory Enum$StyleEnum.fromJson(String value) =>
      fromJson$Enum$StyleEnum(value);

  String toJson() => toJson$Enum$StyleEnum(this);
}

String toJson$Enum$StyleEnum(Enum$StyleEnum e) {
  switch (e) {
    case Enum$StyleEnum.WORKWEAR:
      return r'WORKWEAR';
    case Enum$StyleEnum.WORKOUT:
      return r'WORKOUT';
    case Enum$StyleEnum.CASUAL:
      return r'CASUAL';
    case Enum$StyleEnum.PARTY_DRESS:
      return r'PARTY_DRESS';
    case Enum$StyleEnum.PARTY_OUTFIT:
      return r'PARTY_OUTFIT';
    case Enum$StyleEnum.FORMAL_WEAR:
      return r'FORMAL_WEAR';
    case Enum$StyleEnum.EVENING_WEAR:
      return r'EVENING_WEAR';
    case Enum$StyleEnum.WEDDING_GUEST:
      return r'WEDDING_GUEST';
    case Enum$StyleEnum.LOUNGEWEAR:
      return r'LOUNGEWEAR';
    case Enum$StyleEnum.VACATION_RESORT_WEAR:
      return r'VACATION_RESORT_WEAR';
    case Enum$StyleEnum.FESTIVAL_WEAR:
      return r'FESTIVAL_WEAR';
    case Enum$StyleEnum.ACTIVEWEAR:
      return r'ACTIVEWEAR';
    case Enum$StyleEnum.NIGHTWEAR:
      return r'NIGHTWEAR';
    case Enum$StyleEnum.VINTAGE:
      return r'VINTAGE';
    case Enum$StyleEnum.Y2K:
      return r'Y2K';
    case Enum$StyleEnum.BOHO:
      return r'BOHO';
    case Enum$StyleEnum.MINIMALIST:
      return r'MINIMALIST';
    case Enum$StyleEnum.GRUNGE:
      return r'GRUNGE';
    case Enum$StyleEnum.CHIC:
      return r'CHIC';
    case Enum$StyleEnum.STREETWEAR:
      return r'STREETWEAR';
    case Enum$StyleEnum.PREPPY:
      return r'PREPPY';
    case Enum$StyleEnum.RETRO:
      return r'RETRO';
    case Enum$StyleEnum.COTTAGECORE:
      return r'COTTAGECORE';
    case Enum$StyleEnum.GLAM:
      return r'GLAM';
    case Enum$StyleEnum.SUMMER_STYLES:
      return r'SUMMER_STYLES';
    case Enum$StyleEnum.WINTER_ESSENTIALS:
      return r'WINTER_ESSENTIALS';
    case Enum$StyleEnum.SPRING_FLORALS:
      return r'SPRING_FLORALS';
    case Enum$StyleEnum.AUTUMN_LAYERS:
      return r'AUTUMN_LAYERS';
    case Enum$StyleEnum.RAINY_DAY_WEAR:
      return r'RAINY_DAY_WEAR';
    case Enum$StyleEnum.DENIM_JEANS:
      return r'DENIM_JEANS';
    case Enum$StyleEnum.DRESSES_GOWNS:
      return r'DRESSES_GOWNS';
    case Enum$StyleEnum.JACKETS_COATS:
      return r'JACKETS_COATS';
    case Enum$StyleEnum.KNITWEAR_SWEATERS:
      return r'KNITWEAR_SWEATERS';
    case Enum$StyleEnum.SKIRTS_SHORTS:
      return r'SKIRTS_SHORTS';
    case Enum$StyleEnum.SUITS_BLAZERS:
      return r'SUITS_BLAZERS';
    case Enum$StyleEnum.TOPS_BLOUSES:
      return r'TOPS_BLOUSES';
    case Enum$StyleEnum.SHOES_FOOTWEAR:
      return r'SHOES_FOOTWEAR';
    case Enum$StyleEnum.TRAVEL_FRIENDLY:
      return r'TRAVEL_FRIENDLY';
    case Enum$StyleEnum.MATERNITY_WEAR:
      return r'MATERNITY_WEAR';
    case Enum$StyleEnum.ATHLEISURE:
      return r'ATHLEISURE';
    case Enum$StyleEnum.ECO_FRIENDLY:
      return r'ECO_FRIENDLY';
    case Enum$StyleEnum.FESTIVAL_READY:
      return r'FESTIVAL_READY';
    case Enum$StyleEnum.DATE_NIGHT:
      return r'DATE_NIGHT';
    case Enum$StyleEnum.ETHNIC_WEAR:
      return r'ETHNIC_WEAR';
    case Enum$StyleEnum.OFFICE_PARTY_OUTFIT:
      return r'OFFICE_PARTY_OUTFIT';
    case Enum$StyleEnum.COCKTAIL_ATTIRE:
      return r'COCKTAIL_ATTIRE';
    case Enum$StyleEnum.PROM_DRESSES:
      return r'PROM_DRESSES';
    case Enum$StyleEnum.MUSIC_CONCERT_WEAR:
      return r'MUSIC_CONCERT_WEAR';
    case Enum$StyleEnum.OVERSIZED:
      return r'OVERSIZED';
    case Enum$StyleEnum.SLIM_FIT:
      return r'SLIM_FIT';
    case Enum$StyleEnum.RELAXED_FIT:
      return r'RELAXED_FIT';
    case Enum$StyleEnum.CHRISTMAS:
      return r'CHRISTMAS';
    case Enum$StyleEnum.$unknown:
      return r'$unknown';
  }
}

Enum$StyleEnum fromJson$Enum$StyleEnum(String value) {
  switch (value) {
    case r'WORKWEAR':
      return Enum$StyleEnum.WORKWEAR;
    case r'WORKOUT':
      return Enum$StyleEnum.WORKOUT;
    case r'CASUAL':
      return Enum$StyleEnum.CASUAL;
    case r'PARTY_DRESS':
      return Enum$StyleEnum.PARTY_DRESS;
    case r'PARTY_OUTFIT':
      return Enum$StyleEnum.PARTY_OUTFIT;
    case r'FORMAL_WEAR':
      return Enum$StyleEnum.FORMAL_WEAR;
    case r'EVENING_WEAR':
      return Enum$StyleEnum.EVENING_WEAR;
    case r'WEDDING_GUEST':
      return Enum$StyleEnum.WEDDING_GUEST;
    case r'LOUNGEWEAR':
      return Enum$StyleEnum.LOUNGEWEAR;
    case r'VACATION_RESORT_WEAR':
      return Enum$StyleEnum.VACATION_RESORT_WEAR;
    case r'FESTIVAL_WEAR':
      return Enum$StyleEnum.FESTIVAL_WEAR;
    case r'ACTIVEWEAR':
      return Enum$StyleEnum.ACTIVEWEAR;
    case r'NIGHTWEAR':
      return Enum$StyleEnum.NIGHTWEAR;
    case r'VINTAGE':
      return Enum$StyleEnum.VINTAGE;
    case r'Y2K':
      return Enum$StyleEnum.Y2K;
    case r'BOHO':
      return Enum$StyleEnum.BOHO;
    case r'MINIMALIST':
      return Enum$StyleEnum.MINIMALIST;
    case r'GRUNGE':
      return Enum$StyleEnum.GRUNGE;
    case r'CHIC':
      return Enum$StyleEnum.CHIC;
    case r'STREETWEAR':
      return Enum$StyleEnum.STREETWEAR;
    case r'PREPPY':
      return Enum$StyleEnum.PREPPY;
    case r'RETRO':
      return Enum$StyleEnum.RETRO;
    case r'COTTAGECORE':
      return Enum$StyleEnum.COTTAGECORE;
    case r'GLAM':
      return Enum$StyleEnum.GLAM;
    case r'SUMMER_STYLES':
      return Enum$StyleEnum.SUMMER_STYLES;
    case r'WINTER_ESSENTIALS':
      return Enum$StyleEnum.WINTER_ESSENTIALS;
    case r'SPRING_FLORALS':
      return Enum$StyleEnum.SPRING_FLORALS;
    case r'AUTUMN_LAYERS':
      return Enum$StyleEnum.AUTUMN_LAYERS;
    case r'RAINY_DAY_WEAR':
      return Enum$StyleEnum.RAINY_DAY_WEAR;
    case r'DENIM_JEANS':
      return Enum$StyleEnum.DENIM_JEANS;
    case r'DRESSES_GOWNS':
      return Enum$StyleEnum.DRESSES_GOWNS;
    case r'JACKETS_COATS':
      return Enum$StyleEnum.JACKETS_COATS;
    case r'KNITWEAR_SWEATERS':
      return Enum$StyleEnum.KNITWEAR_SWEATERS;
    case r'SKIRTS_SHORTS':
      return Enum$StyleEnum.SKIRTS_SHORTS;
    case r'SUITS_BLAZERS':
      return Enum$StyleEnum.SUITS_BLAZERS;
    case r'TOPS_BLOUSES':
      return Enum$StyleEnum.TOPS_BLOUSES;
    case r'SHOES_FOOTWEAR':
      return Enum$StyleEnum.SHOES_FOOTWEAR;
    case r'TRAVEL_FRIENDLY':
      return Enum$StyleEnum.TRAVEL_FRIENDLY;
    case r'MATERNITY_WEAR':
      return Enum$StyleEnum.MATERNITY_WEAR;
    case r'ATHLEISURE':
      return Enum$StyleEnum.ATHLEISURE;
    case r'ECO_FRIENDLY':
      return Enum$StyleEnum.ECO_FRIENDLY;
    case r'FESTIVAL_READY':
      return Enum$StyleEnum.FESTIVAL_READY;
    case r'DATE_NIGHT':
      return Enum$StyleEnum.DATE_NIGHT;
    case r'ETHNIC_WEAR':
      return Enum$StyleEnum.ETHNIC_WEAR;
    case r'OFFICE_PARTY_OUTFIT':
      return Enum$StyleEnum.OFFICE_PARTY_OUTFIT;
    case r'COCKTAIL_ATTIRE':
      return Enum$StyleEnum.COCKTAIL_ATTIRE;
    case r'PROM_DRESSES':
      return Enum$StyleEnum.PROM_DRESSES;
    case r'MUSIC_CONCERT_WEAR':
      return Enum$StyleEnum.MUSIC_CONCERT_WEAR;
    case r'OVERSIZED':
      return Enum$StyleEnum.OVERSIZED;
    case r'SLIM_FIT':
      return Enum$StyleEnum.SLIM_FIT;
    case r'RELAXED_FIT':
      return Enum$StyleEnum.RELAXED_FIT;
    case r'CHRISTMAS':
      return Enum$StyleEnum.CHRISTMAS;
    default:
      return Enum$StyleEnum.$unknown;
  }
}

enum Enum$FileTypeEnum {
  BANNER,
  PRODUCT,
  PROFILE_PICTURE,
  $unknown;

  factory Enum$FileTypeEnum.fromJson(String value) =>
      fromJson$Enum$FileTypeEnum(value);

  String toJson() => toJson$Enum$FileTypeEnum(this);
}

String toJson$Enum$FileTypeEnum(Enum$FileTypeEnum e) {
  switch (e) {
    case Enum$FileTypeEnum.BANNER:
      return r'BANNER';
    case Enum$FileTypeEnum.PRODUCT:
      return r'PRODUCT';
    case Enum$FileTypeEnum.PROFILE_PICTURE:
      return r'PROFILE_PICTURE';
    case Enum$FileTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$FileTypeEnum fromJson$Enum$FileTypeEnum(String value) {
  switch (value) {
    case r'BANNER':
      return Enum$FileTypeEnum.BANNER;
    case r'PRODUCT':
      return Enum$FileTypeEnum.PRODUCT;
    case r'PROFILE_PICTURE':
      return Enum$FileTypeEnum.PROFILE_PICTURE;
    default:
      return Enum$FileTypeEnum.$unknown;
  }
}

enum Enum$SeasonEnum {
  CHRISTMAS,
  HALLOWEEN,
  SUMMER,
  WINTER,
  SPRING,
  AUTUMN,
  BLACK_FRIDAY,
  EASTER,
  $unknown;

  factory Enum$SeasonEnum.fromJson(String value) =>
      fromJson$Enum$SeasonEnum(value);

  String toJson() => toJson$Enum$SeasonEnum(this);
}

String toJson$Enum$SeasonEnum(Enum$SeasonEnum e) {
  switch (e) {
    case Enum$SeasonEnum.CHRISTMAS:
      return r'CHRISTMAS';
    case Enum$SeasonEnum.HALLOWEEN:
      return r'HALLOWEEN';
    case Enum$SeasonEnum.SUMMER:
      return r'SUMMER';
    case Enum$SeasonEnum.WINTER:
      return r'WINTER';
    case Enum$SeasonEnum.SPRING:
      return r'SPRING';
    case Enum$SeasonEnum.AUTUMN:
      return r'AUTUMN';
    case Enum$SeasonEnum.BLACK_FRIDAY:
      return r'BLACK_FRIDAY';
    case Enum$SeasonEnum.EASTER:
      return r'EASTER';
    case Enum$SeasonEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SeasonEnum fromJson$Enum$SeasonEnum(String value) {
  switch (value) {
    case r'CHRISTMAS':
      return Enum$SeasonEnum.CHRISTMAS;
    case r'HALLOWEEN':
      return Enum$SeasonEnum.HALLOWEEN;
    case r'SUMMER':
      return Enum$SeasonEnum.SUMMER;
    case r'WINTER':
      return Enum$SeasonEnum.WINTER;
    case r'SPRING':
      return Enum$SeasonEnum.SPRING;
    case r'AUTUMN':
      return Enum$SeasonEnum.AUTUMN;
    case r'BLACK_FRIDAY':
      return Enum$SeasonEnum.BLACK_FRIDAY;
    case r'EASTER':
      return Enum$SeasonEnum.EASTER;
    default:
      return Enum$SeasonEnum.$unknown;
  }
}

enum Enum$ParcelSizeEnum {
  SMALL,
  MEDIUM,
  LARGE,
  $unknown;

  factory Enum$ParcelSizeEnum.fromJson(String value) =>
      fromJson$Enum$ParcelSizeEnum(value);

  String toJson() => toJson$Enum$ParcelSizeEnum(this);
}

String toJson$Enum$ParcelSizeEnum(Enum$ParcelSizeEnum e) {
  switch (e) {
    case Enum$ParcelSizeEnum.SMALL:
      return r'SMALL';
    case Enum$ParcelSizeEnum.MEDIUM:
      return r'MEDIUM';
    case Enum$ParcelSizeEnum.LARGE:
      return r'LARGE';
    case Enum$ParcelSizeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ParcelSizeEnum fromJson$Enum$ParcelSizeEnum(String value) {
  switch (value) {
    case r'SMALL':
      return Enum$ParcelSizeEnum.SMALL;
    case r'MEDIUM':
      return Enum$ParcelSizeEnum.MEDIUM;
    case r'LARGE':
      return Enum$ParcelSizeEnum.LARGE;
    default:
      return Enum$ParcelSizeEnum.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'Node': {'UserNode'}
};
