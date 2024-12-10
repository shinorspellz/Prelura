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
