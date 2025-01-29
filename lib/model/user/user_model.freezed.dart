// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  dynamic get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  DateTime? get dateJoined => throw _privateConstructorUsedError;
  DateTime? get lastLogin => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  int? get listing => throw _privateConstructorUsedError;
  PhoneModel? get phone => throw _privateConstructorUsedError;
  Enum$CurrencyEnum? get preferredCurrency =>
      throw _privateConstructorUsedError;
  LocationInputType? get location => throw _privateConstructorUsedError;
  bool? get isVacationMode => throw _privateConstructorUsedError;
  bool? get isFollowing => throw _privateConstructorUsedError;
  int? get noOfFollowers => throw _privateConstructorUsedError;
  ShippingAddress? get shippingAddress => throw _privateConstructorUsedError;
  bool? get isMultibuyEnabled => throw _privateConstructorUsedError;
  int? get noOfFollowing => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {dynamic id,
      String? firstName,
      String? lastName,
      String username,
      String? email,
      String? bio,
      String? profilePictureUrl,
      String? thumbnailUrl,
      String? gender,
      String? displayName,
      DateTime? dob,
      DateTime? dateJoined,
      DateTime? lastLogin,
      String? fullName,
      int? listing,
      PhoneModel? phone,
      Enum$CurrencyEnum? preferredCurrency,
      LocationInputType? location,
      bool? isVacationMode,
      bool? isFollowing,
      int? noOfFollowers,
      ShippingAddress? shippingAddress,
      bool? isMultibuyEnabled,
      int? noOfFollowing});

  $PhoneModelCopyWith<$Res>? get phone;
  $LocationInputTypeCopyWith<$Res>? get location;
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = null,
    Object? email = freezed,
    Object? bio = freezed,
    Object? profilePictureUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? gender = freezed,
    Object? displayName = freezed,
    Object? dob = freezed,
    Object? dateJoined = freezed,
    Object? lastLogin = freezed,
    Object? fullName = freezed,
    Object? listing = freezed,
    Object? phone = freezed,
    Object? preferredCurrency = freezed,
    Object? location = freezed,
    Object? isVacationMode = freezed,
    Object? isFollowing = freezed,
    Object? noOfFollowers = freezed,
    Object? shippingAddress = freezed,
    Object? isMultibuyEnabled = freezed,
    Object? noOfFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      listing: freezed == listing
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneModel?,
      preferredCurrency: freezed == preferredCurrency
          ? _value.preferredCurrency
          : preferredCurrency // ignore: cast_nullable_to_non_nullable
              as Enum$CurrencyEnum?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationInputType?,
      isVacationMode: freezed == isVacationMode
          ? _value.isVacationMode
          : isVacationMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      noOfFollowers: freezed == noOfFollowers
          ? _value.noOfFollowers
          : noOfFollowers // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
      isMultibuyEnabled: freezed == isMultibuyEnabled
          ? _value.isMultibuyEnabled
          : isMultibuyEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      noOfFollowing: freezed == noOfFollowing
          ? _value.noOfFollowing
          : noOfFollowing // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhoneModelCopyWith<$Res>? get phone {
    if (_value.phone == null) {
      return null;
    }

    return $PhoneModelCopyWith<$Res>(_value.phone!, (value) {
      return _then(_value.copyWith(phone: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationInputTypeCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationInputTypeCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String? firstName,
      String? lastName,
      String username,
      String? email,
      String? bio,
      String? profilePictureUrl,
      String? thumbnailUrl,
      String? gender,
      String? displayName,
      DateTime? dob,
      DateTime? dateJoined,
      DateTime? lastLogin,
      String? fullName,
      int? listing,
      PhoneModel? phone,
      Enum$CurrencyEnum? preferredCurrency,
      LocationInputType? location,
      bool? isVacationMode,
      bool? isFollowing,
      int? noOfFollowers,
      ShippingAddress? shippingAddress,
      bool? isMultibuyEnabled,
      int? noOfFollowing});

  @override
  $PhoneModelCopyWith<$Res>? get phone;
  @override
  $LocationInputTypeCopyWith<$Res>? get location;
  @override
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = null,
    Object? email = freezed,
    Object? bio = freezed,
    Object? profilePictureUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? gender = freezed,
    Object? displayName = freezed,
    Object? dob = freezed,
    Object? dateJoined = freezed,
    Object? lastLogin = freezed,
    Object? fullName = freezed,
    Object? listing = freezed,
    Object? phone = freezed,
    Object? preferredCurrency = freezed,
    Object? location = freezed,
    Object? isVacationMode = freezed,
    Object? isFollowing = freezed,
    Object? noOfFollowers = freezed,
    Object? shippingAddress = freezed,
    Object? isMultibuyEnabled = freezed,
    Object? noOfFollowing = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      listing: freezed == listing
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneModel?,
      preferredCurrency: freezed == preferredCurrency
          ? _value.preferredCurrency
          : preferredCurrency // ignore: cast_nullable_to_non_nullable
              as Enum$CurrencyEnum?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationInputType?,
      isVacationMode: freezed == isVacationMode
          ? _value.isVacationMode
          : isVacationMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      noOfFollowers: freezed == noOfFollowers
          ? _value.noOfFollowers
          : noOfFollowers // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
      isMultibuyEnabled: freezed == isMultibuyEnabled
          ? _value.isMultibuyEnabled
          : isMultibuyEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      noOfFollowing: freezed == noOfFollowing
          ? _value.noOfFollowing
          : noOfFollowing // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      this.firstName,
      this.lastName,
      required this.username,
      this.email,
      this.bio,
      this.profilePictureUrl,
      this.thumbnailUrl,
      this.gender,
      this.displayName,
      this.dob,
      this.dateJoined,
      this.lastLogin,
      this.fullName,
      this.listing,
      this.phone,
      this.preferredCurrency,
      this.location,
      this.isVacationMode,
      this.isFollowing,
      this.noOfFollowers,
      this.shippingAddress,
      this.isMultibuyEnabled,
      this.noOfFollowing});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String username;
  @override
  final String? email;
  @override
  final String? bio;
  @override
  final String? profilePictureUrl;
  @override
  final String? thumbnailUrl;
  @override
  final String? gender;
  @override
  final String? displayName;
  @override
  final DateTime? dob;
  @override
  final DateTime? dateJoined;
  @override
  final DateTime? lastLogin;
  @override
  final String? fullName;
  @override
  final int? listing;
  @override
  final PhoneModel? phone;
  @override
  final Enum$CurrencyEnum? preferredCurrency;
  @override
  final LocationInputType? location;
  @override
  final bool? isVacationMode;
  @override
  final bool? isFollowing;
  @override
  final int? noOfFollowers;
  @override
  final ShippingAddress? shippingAddress;
  @override
  final bool? isMultibuyEnabled;
  @override
  final int? noOfFollowing;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, username: $username, email: $email, bio: $bio, profilePictureUrl: $profilePictureUrl, thumbnailUrl: $thumbnailUrl, gender: $gender, displayName: $displayName, dob: $dob, dateJoined: $dateJoined, lastLogin: $lastLogin, fullName: $fullName, listing: $listing, phone: $phone, preferredCurrency: $preferredCurrency, location: $location, isVacationMode: $isVacationMode, isFollowing: $isFollowing, noOfFollowers: $noOfFollowers, shippingAddress: $shippingAddress, isMultibuyEnabled: $isMultibuyEnabled, noOfFollowing: $noOfFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.listing, listing) || other.listing == listing) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.preferredCurrency, preferredCurrency) ||
                other.preferredCurrency == preferredCurrency) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isVacationMode, isVacationMode) ||
                other.isVacationMode == isVacationMode) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.noOfFollowers, noOfFollowers) ||
                other.noOfFollowers == noOfFollowers) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.isMultibuyEnabled, isMultibuyEnabled) ||
                other.isMultibuyEnabled == isMultibuyEnabled) &&
            (identical(other.noOfFollowing, noOfFollowing) ||
                other.noOfFollowing == noOfFollowing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        firstName,
        lastName,
        username,
        email,
        bio,
        profilePictureUrl,
        thumbnailUrl,
        gender,
        displayName,
        dob,
        dateJoined,
        lastLogin,
        fullName,
        listing,
        phone,
        preferredCurrency,
        location,
        isVacationMode,
        isFollowing,
        noOfFollowers,
        shippingAddress,
        isMultibuyEnabled,
        noOfFollowing
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final dynamic id,
      final String? firstName,
      final String? lastName,
      required final String username,
      final String? email,
      final String? bio,
      final String? profilePictureUrl,
      final String? thumbnailUrl,
      final String? gender,
      final String? displayName,
      final DateTime? dob,
      final DateTime? dateJoined,
      final DateTime? lastLogin,
      final String? fullName,
      final int? listing,
      final PhoneModel? phone,
      final Enum$CurrencyEnum? preferredCurrency,
      final LocationInputType? location,
      final bool? isVacationMode,
      final bool? isFollowing,
      final int? noOfFollowers,
      final ShippingAddress? shippingAddress,
      final bool? isMultibuyEnabled,
      final int? noOfFollowing}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  dynamic get id;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String get username;
  @override
  String? get email;
  @override
  String? get bio;
  @override
  String? get profilePictureUrl;
  @override
  String? get thumbnailUrl;
  @override
  String? get gender;
  @override
  String? get displayName;
  @override
  DateTime? get dob;
  @override
  DateTime? get dateJoined;
  @override
  DateTime? get lastLogin;
  @override
  String? get fullName;
  @override
  int? get listing;
  @override
  PhoneModel? get phone;
  @override
  Enum$CurrencyEnum? get preferredCurrency;
  @override
  LocationInputType? get location;
  @override
  bool? get isVacationMode;
  @override
  bool? get isFollowing;
  @override
  int? get noOfFollowers;
  @override
  ShippingAddress? get shippingAddress;
  @override
  bool? get isMultibuyEnabled;
  @override
  int? get noOfFollowing;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) {
  return _PhoneModel.fromJson(json);
}

/// @nodoc
mixin _$PhoneModel {
  String get number => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  /// Serializes this PhoneModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneModelCopyWith<PhoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneModelCopyWith<$Res> {
  factory $PhoneModelCopyWith(
          PhoneModel value, $Res Function(PhoneModel) then) =
      _$PhoneModelCopyWithImpl<$Res, PhoneModel>;
  @useResult
  $Res call({String number, String countryCode});
}

/// @nodoc
class _$PhoneModelCopyWithImpl<$Res, $Val extends PhoneModel>
    implements $PhoneModelCopyWith<$Res> {
  _$PhoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneModelImplCopyWith<$Res>
    implements $PhoneModelCopyWith<$Res> {
  factory _$$PhoneModelImplCopyWith(
          _$PhoneModelImpl value, $Res Function(_$PhoneModelImpl) then) =
      __$$PhoneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, String countryCode});
}

/// @nodoc
class __$$PhoneModelImplCopyWithImpl<$Res>
    extends _$PhoneModelCopyWithImpl<$Res, _$PhoneModelImpl>
    implements _$$PhoneModelImplCopyWith<$Res> {
  __$$PhoneModelImplCopyWithImpl(
      _$PhoneModelImpl _value, $Res Function(_$PhoneModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? countryCode = null,
  }) {
    return _then(_$PhoneModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneModelImpl implements _PhoneModel {
  const _$PhoneModelImpl({required this.number, required this.countryCode});

  factory _$PhoneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneModelImplFromJson(json);

  @override
  final String number;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'PhoneModel(number: $number, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, countryCode);

  /// Create a copy of PhoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneModelImplCopyWith<_$PhoneModelImpl> get copyWith =>
      __$$PhoneModelImplCopyWithImpl<_$PhoneModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneModelImplToJson(
      this,
    );
  }
}

abstract class _PhoneModel implements PhoneModel {
  const factory _PhoneModel(
      {required final String number,
      required final String countryCode}) = _$PhoneModelImpl;

  factory _PhoneModel.fromJson(Map<String, dynamic> json) =
      _$PhoneModelImpl.fromJson;

  @override
  String get number;
  @override
  String get countryCode;

  /// Create a copy of PhoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneModelImplCopyWith<_$PhoneModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationInputType _$LocationInputTypeFromJson(Map<String, dynamic> json) {
  return _LocationInputType.fromJson(json);
}

/// @nodoc
mixin _$LocationInputType {
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;

  /// Serializes this LocationInputType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationInputType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationInputTypeCopyWith<LocationInputType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInputTypeCopyWith<$Res> {
  factory $LocationInputTypeCopyWith(
          LocationInputType value, $Res Function(LocationInputType) then) =
      _$LocationInputTypeCopyWithImpl<$Res, LocationInputType>;
  @useResult
  $Res call({String latitude, String longitude, String locationName});
}

/// @nodoc
class _$LocationInputTypeCopyWithImpl<$Res, $Val extends LocationInputType>
    implements $LocationInputTypeCopyWith<$Res> {
  _$LocationInputTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationInputType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? locationName = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationInputTypeImplCopyWith<$Res>
    implements $LocationInputTypeCopyWith<$Res> {
  factory _$$LocationInputTypeImplCopyWith(_$LocationInputTypeImpl value,
          $Res Function(_$LocationInputTypeImpl) then) =
      __$$LocationInputTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String latitude, String longitude, String locationName});
}

/// @nodoc
class __$$LocationInputTypeImplCopyWithImpl<$Res>
    extends _$LocationInputTypeCopyWithImpl<$Res, _$LocationInputTypeImpl>
    implements _$$LocationInputTypeImplCopyWith<$Res> {
  __$$LocationInputTypeImplCopyWithImpl(_$LocationInputTypeImpl _value,
      $Res Function(_$LocationInputTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationInputType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? locationName = null,
  }) {
    return _then(_$LocationInputTypeImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationInputTypeImpl implements _LocationInputType {
  const _$LocationInputTypeImpl(
      {required this.latitude,
      required this.longitude,
      required this.locationName});

  factory _$LocationInputTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationInputTypeImplFromJson(json);

  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String locationName;

  @override
  String toString() {
    return 'LocationInputType(latitude: $latitude, longitude: $longitude, locationName: $locationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationInputTypeImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, locationName);

  /// Create a copy of LocationInputType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationInputTypeImplCopyWith<_$LocationInputTypeImpl> get copyWith =>
      __$$LocationInputTypeImplCopyWithImpl<_$LocationInputTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationInputTypeImplToJson(
      this,
    );
  }
}

abstract class _LocationInputType implements LocationInputType {
  const factory _LocationInputType(
      {required final String latitude,
      required final String longitude,
      required final String locationName}) = _$LocationInputTypeImpl;

  factory _LocationInputType.fromJson(Map<String, dynamic> json) =
      _$LocationInputTypeImpl.fromJson;

  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get locationName;

  /// Create a copy of LocationInputType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationInputTypeImplCopyWith<_$LocationInputTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) {
  return _ShippingAddress.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddress {
  String get city => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;

  /// Serializes this ShippingAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingAddressCopyWith<ShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressCopyWith<$Res> {
  factory $ShippingAddressCopyWith(
          ShippingAddress value, $Res Function(ShippingAddress) then) =
      _$ShippingAddressCopyWithImpl<$Res, ShippingAddress>;
  @useResult
  $Res call({String city, String address, String country, String postcode});
}

/// @nodoc
class _$ShippingAddressCopyWithImpl<$Res, $Val extends ShippingAddress>
    implements $ShippingAddressCopyWith<$Res> {
  _$ShippingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? address = null,
    Object? country = null,
    Object? postcode = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingAddressImplCopyWith<$Res>
    implements $ShippingAddressCopyWith<$Res> {
  factory _$$ShippingAddressImplCopyWith(_$ShippingAddressImpl value,
          $Res Function(_$ShippingAddressImpl) then) =
      __$$ShippingAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, String address, String country, String postcode});
}

/// @nodoc
class __$$ShippingAddressImplCopyWithImpl<$Res>
    extends _$ShippingAddressCopyWithImpl<$Res, _$ShippingAddressImpl>
    implements _$$ShippingAddressImplCopyWith<$Res> {
  __$$ShippingAddressImplCopyWithImpl(
      _$ShippingAddressImpl _value, $Res Function(_$ShippingAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? address = null,
    Object? country = null,
    Object? postcode = null,
  }) {
    return _then(_$ShippingAddressImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAddressImpl implements _ShippingAddress {
  const _$ShippingAddressImpl(
      {required this.city,
      required this.address,
      required this.country,
      required this.postcode});

  factory _$ShippingAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingAddressImplFromJson(json);

  @override
  final String city;
  @override
  final String address;
  @override
  final String country;
  @override
  final String postcode;

  @override
  String toString() {
    return 'ShippingAddress(city: $city, address: $address, country: $country, postcode: $postcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingAddressImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, city, address, country, postcode);

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAddressImplCopyWith<_$ShippingAddressImpl> get copyWith =>
      __$$ShippingAddressImplCopyWithImpl<_$ShippingAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAddressImplToJson(
      this,
    );
  }
}

abstract class _ShippingAddress implements ShippingAddress {
  const factory _ShippingAddress(
      {required final String city,
      required final String address,
      required final String country,
      required final String postcode}) = _$ShippingAddressImpl;

  factory _ShippingAddress.fromJson(Map<String, dynamic> json) =
      _$ShippingAddressImpl.fromJson;

  @override
  String get city;
  @override
  String get address;
  @override
  String get country;
  @override
  String get postcode;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingAddressImplCopyWith<_$ShippingAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
