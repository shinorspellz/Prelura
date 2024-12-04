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

enum Enum$ProductsSizeSizeSystemChoices {
  US,
  EU,
  UK,
  GENERIC,
  $unknown;

  factory Enum$ProductsSizeSizeSystemChoices.fromJson(String value) =>
      fromJson$Enum$ProductsSizeSizeSystemChoices(value);

  String toJson() => toJson$Enum$ProductsSizeSizeSystemChoices(this);
}

String toJson$Enum$ProductsSizeSizeSystemChoices(
    Enum$ProductsSizeSizeSystemChoices e) {
  switch (e) {
    case Enum$ProductsSizeSizeSystemChoices.US:
      return r'US';
    case Enum$ProductsSizeSizeSystemChoices.EU:
      return r'EU';
    case Enum$ProductsSizeSizeSystemChoices.UK:
      return r'UK';
    case Enum$ProductsSizeSizeSystemChoices.GENERIC:
      return r'GENERIC';
    case Enum$ProductsSizeSizeSystemChoices.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsSizeSizeSystemChoices fromJson$Enum$ProductsSizeSizeSystemChoices(
    String value) {
  switch (value) {
    case r'US':
      return Enum$ProductsSizeSizeSystemChoices.US;
    case r'EU':
      return Enum$ProductsSizeSizeSystemChoices.EU;
    case r'UK':
      return Enum$ProductsSizeSizeSystemChoices.UK;
    case r'GENERIC':
      return Enum$ProductsSizeSizeSystemChoices.GENERIC;
    default:
      return Enum$ProductsSizeSizeSystemChoices.$unknown;
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
