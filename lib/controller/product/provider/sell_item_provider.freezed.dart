// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_item_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SellItemState _$SellItemStateFromJson(Map<String, dynamic> json) {
  return _SellItemState.fromJson(json);
}

/// @nodoc
mixin _$SellItemState {
  @XFileConverter()
  List<XFile> get images => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  Enum$ParcelSizeEnum? get parcel => throw _privateConstructorUsedError;
  List<String> get selectedColors => throw _privateConstructorUsedError;
  List<MaterialModel> get selectedMaterials =>
      throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError; // Enum$SizeEnum? size,
  String? get price => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  ConditionsEnum? get selectedCondition => throw _privateConstructorUsedError;
  Enum$StyleEnum? get style => throw _privateConstructorUsedError;
  String? get customBrand => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;

  /// Serializes this SellItemState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SellItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SellItemStateCopyWith<SellItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellItemStateCopyWith<$Res> {
  factory $SellItemStateCopyWith(
          SellItemState value, $Res Function(SellItemState) then) =
      _$SellItemStateCopyWithImpl<$Res, SellItemState>;
  @useResult
  $Res call(
      {@XFileConverter() List<XFile> images,
      String title,
      String description,
      CategoryModel? category,
      Enum$ParcelSizeEnum? parcel,
      List<String> selectedColors,
      List<MaterialModel> selectedMaterials,
      Brand? brand,
      int? size,
      String? price,
      String? discount,
      ConditionsEnum? selectedCondition,
      Enum$StyleEnum? style,
      String? customBrand,
      bool isFeatured});

  $CategoryModelCopyWith<$Res>? get category;
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class _$SellItemStateCopyWithImpl<$Res, $Val extends SellItemState>
    implements $SellItemStateCopyWith<$Res> {
  _$SellItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SellItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? title = null,
    Object? description = null,
    Object? category = freezed,
    Object? parcel = freezed,
    Object? selectedColors = null,
    Object? selectedMaterials = null,
    Object? brand = freezed,
    Object? size = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? selectedCondition = freezed,
    Object? style = freezed,
    Object? customBrand = freezed,
    Object? isFeatured = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      parcel: freezed == parcel
          ? _value.parcel
          : parcel // ignore: cast_nullable_to_non_nullable
              as Enum$ParcelSizeEnum?,
      selectedColors: null == selectedColors
          ? _value.selectedColors
          : selectedColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedMaterials: null == selectedMaterials
          ? _value.selectedMaterials
          : selectedMaterials // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCondition: freezed == selectedCondition
          ? _value.selectedCondition
          : selectedCondition // ignore: cast_nullable_to_non_nullable
              as ConditionsEnum?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as Enum$StyleEnum?,
      customBrand: freezed == customBrand
          ? _value.customBrand
          : customBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SellItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of SellItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SellItemStateImplCopyWith<$Res>
    implements $SellItemStateCopyWith<$Res> {
  factory _$$SellItemStateImplCopyWith(
          _$SellItemStateImpl value, $Res Function(_$SellItemStateImpl) then) =
      __$$SellItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@XFileConverter() List<XFile> images,
      String title,
      String description,
      CategoryModel? category,
      Enum$ParcelSizeEnum? parcel,
      List<String> selectedColors,
      List<MaterialModel> selectedMaterials,
      Brand? brand,
      int? size,
      String? price,
      String? discount,
      ConditionsEnum? selectedCondition,
      Enum$StyleEnum? style,
      String? customBrand,
      bool isFeatured});

  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$SellItemStateImplCopyWithImpl<$Res>
    extends _$SellItemStateCopyWithImpl<$Res, _$SellItemStateImpl>
    implements _$$SellItemStateImplCopyWith<$Res> {
  __$$SellItemStateImplCopyWithImpl(
      _$SellItemStateImpl _value, $Res Function(_$SellItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SellItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? title = null,
    Object? description = null,
    Object? category = freezed,
    Object? parcel = freezed,
    Object? selectedColors = null,
    Object? selectedMaterials = null,
    Object? brand = freezed,
    Object? size = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? selectedCondition = freezed,
    Object? style = freezed,
    Object? customBrand = freezed,
    Object? isFeatured = null,
  }) {
    return _then(_$SellItemStateImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      parcel: freezed == parcel
          ? _value.parcel
          : parcel // ignore: cast_nullable_to_non_nullable
              as Enum$ParcelSizeEnum?,
      selectedColors: null == selectedColors
          ? _value._selectedColors
          : selectedColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedMaterials: null == selectedMaterials
          ? _value._selectedMaterials
          : selectedMaterials // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCondition: freezed == selectedCondition
          ? _value.selectedCondition
          : selectedCondition // ignore: cast_nullable_to_non_nullable
              as ConditionsEnum?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as Enum$StyleEnum?,
      customBrand: freezed == customBrand
          ? _value.customBrand
          : customBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SellItemStateImpl implements _SellItemState {
  const _$SellItemStateImpl(
      {@XFileConverter() final List<XFile> images = const [],
      required this.title,
      required this.description,
      this.category,
      this.parcel,
      final List<String> selectedColors = const [],
      final List<MaterialModel> selectedMaterials = const [],
      this.brand,
      this.size,
      this.price,
      this.discount,
      this.selectedCondition,
      this.style,
      this.customBrand,
      this.isFeatured = false})
      : _images = images,
        _selectedColors = selectedColors,
        _selectedMaterials = selectedMaterials;

  factory _$SellItemStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SellItemStateImplFromJson(json);

  final List<XFile> _images;
  @override
  @JsonKey()
  @XFileConverter()
  List<XFile> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String title;
  @override
  final String description;
  @override
  final CategoryModel? category;
  @override
  final Enum$ParcelSizeEnum? parcel;
  final List<String> _selectedColors;
  @override
  @JsonKey()
  List<String> get selectedColors {
    if (_selectedColors is EqualUnmodifiableListView) return _selectedColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedColors);
  }

  final List<MaterialModel> _selectedMaterials;
  @override
  @JsonKey()
  List<MaterialModel> get selectedMaterials {
    if (_selectedMaterials is EqualUnmodifiableListView)
      return _selectedMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMaterials);
  }

  @override
  final Brand? brand;
  @override
  final int? size;
// Enum$SizeEnum? size,
  @override
  final String? price;
  @override
  final String? discount;
  @override
  final ConditionsEnum? selectedCondition;
  @override
  final Enum$StyleEnum? style;
  @override
  final String? customBrand;
  @override
  @JsonKey()
  final bool isFeatured;

  @override
  String toString() {
    return 'SellItemState(images: $images, title: $title, description: $description, category: $category, parcel: $parcel, selectedColors: $selectedColors, selectedMaterials: $selectedMaterials, brand: $brand, size: $size, price: $price, discount: $discount, selectedCondition: $selectedCondition, style: $style, customBrand: $customBrand, isFeatured: $isFeatured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellItemStateImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.parcel, parcel) || other.parcel == parcel) &&
            const DeepCollectionEquality()
                .equals(other._selectedColors, _selectedColors) &&
            const DeepCollectionEquality()
                .equals(other._selectedMaterials, _selectedMaterials) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.selectedCondition, selectedCondition) ||
                other.selectedCondition == selectedCondition) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.customBrand, customBrand) ||
                other.customBrand == customBrand) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      title,
      description,
      category,
      parcel,
      const DeepCollectionEquality().hash(_selectedColors),
      const DeepCollectionEquality().hash(_selectedMaterials),
      brand,
      size,
      price,
      discount,
      selectedCondition,
      style,
      customBrand,
      isFeatured);

  /// Create a copy of SellItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SellItemStateImplCopyWith<_$SellItemStateImpl> get copyWith =>
      __$$SellItemStateImplCopyWithImpl<_$SellItemStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SellItemStateImplToJson(
      this,
    );
  }
}

abstract class _SellItemState implements SellItemState {
  const factory _SellItemState(
      {@XFileConverter() final List<XFile> images,
      required final String title,
      required final String description,
      final CategoryModel? category,
      final Enum$ParcelSizeEnum? parcel,
      final List<String> selectedColors,
      final List<MaterialModel> selectedMaterials,
      final Brand? brand,
      final int? size,
      final String? price,
      final String? discount,
      final ConditionsEnum? selectedCondition,
      final Enum$StyleEnum? style,
      final String? customBrand,
      final bool isFeatured}) = _$SellItemStateImpl;

  factory _SellItemState.fromJson(Map<String, dynamic> json) =
      _$SellItemStateImpl.fromJson;

  @override
  @XFileConverter()
  List<XFile> get images;
  @override
  String get title;
  @override
  String get description;
  @override
  CategoryModel? get category;
  @override
  Enum$ParcelSizeEnum? get parcel;
  @override
  List<String> get selectedColors;
  @override
  List<MaterialModel> get selectedMaterials;
  @override
  Brand? get brand;
  @override
  int? get size; // Enum$SizeEnum? size,
  @override
  String? get price;
  @override
  String? get discount;
  @override
  ConditionsEnum? get selectedCondition;
  @override
  Enum$StyleEnum? get style;
  @override
  String? get customBrand;
  @override
  bool get isFeatured;

  /// Create a copy of SellItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SellItemStateImplCopyWith<_$SellItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
