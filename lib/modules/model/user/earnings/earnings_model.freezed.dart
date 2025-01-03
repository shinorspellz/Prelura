// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarningsModel _$EarningsModelFromJson(Map<String, dynamic> json) {
  return _EarningsModel.fromJson(json);
}

/// @nodoc
mixin _$EarningsModel {
  double get networth => throw _privateConstructorUsedError;
  EarningValue get pendingPayments => throw _privateConstructorUsedError;
  EarningValue get completedPayments => throw _privateConstructorUsedError;
  EarningValue get earningsInMonth => throw _privateConstructorUsedError;
  EarningValue get totalEarnings => throw _privateConstructorUsedError;

  /// Serializes this EarningsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningsModelCopyWith<EarningsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsModelCopyWith<$Res> {
  factory $EarningsModelCopyWith(
          EarningsModel value, $Res Function(EarningsModel) then) =
      _$EarningsModelCopyWithImpl<$Res, EarningsModel>;
  @useResult
  $Res call(
      {double networth,
      EarningValue pendingPayments,
      EarningValue completedPayments,
      EarningValue earningsInMonth,
      EarningValue totalEarnings});

  $EarningValueCopyWith<$Res> get pendingPayments;
  $EarningValueCopyWith<$Res> get completedPayments;
  $EarningValueCopyWith<$Res> get earningsInMonth;
  $EarningValueCopyWith<$Res> get totalEarnings;
}

/// @nodoc
class _$EarningsModelCopyWithImpl<$Res, $Val extends EarningsModel>
    implements $EarningsModelCopyWith<$Res> {
  _$EarningsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networth = null,
    Object? pendingPayments = null,
    Object? completedPayments = null,
    Object? earningsInMonth = null,
    Object? totalEarnings = null,
  }) {
    return _then(_value.copyWith(
      networth: null == networth
          ? _value.networth
          : networth // ignore: cast_nullable_to_non_nullable
              as double,
      pendingPayments: null == pendingPayments
          ? _value.pendingPayments
          : pendingPayments // ignore: cast_nullable_to_non_nullable
              as EarningValue,
      completedPayments: null == completedPayments
          ? _value.completedPayments
          : completedPayments // ignore: cast_nullable_to_non_nullable
              as EarningValue,
      earningsInMonth: null == earningsInMonth
          ? _value.earningsInMonth
          : earningsInMonth // ignore: cast_nullable_to_non_nullable
              as EarningValue,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as EarningValue,
    ) as $Val);
  }

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningValueCopyWith<$Res> get pendingPayments {
    return $EarningValueCopyWith<$Res>(_value.pendingPayments, (value) {
      return _then(_value.copyWith(pendingPayments: value) as $Val);
    });
  }

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningValueCopyWith<$Res> get completedPayments {
    return $EarningValueCopyWith<$Res>(_value.completedPayments, (value) {
      return _then(_value.copyWith(completedPayments: value) as $Val);
    });
  }

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningValueCopyWith<$Res> get earningsInMonth {
    return $EarningValueCopyWith<$Res>(_value.earningsInMonth, (value) {
      return _then(_value.copyWith(earningsInMonth: value) as $Val);
    });
  }

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningValueCopyWith<$Res> get totalEarnings {
    return $EarningValueCopyWith<$Res>(_value.totalEarnings, (value) {
      return _then(_value.copyWith(totalEarnings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarningsModelImplCopyWith<$Res>
    implements $EarningsModelCopyWith<$Res> {
  factory _$$EarningsModelImplCopyWith(
          _$EarningsModelImpl value, $Res Function(_$EarningsModelImpl) then) =
      __$$EarningsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double networth,
      EarningValue pendingPayments,
      EarningValue completedPayments,
      EarningValue earningsInMonth,
      EarningValue totalEarnings});

  @override
  $EarningValueCopyWith<$Res> get pendingPayments;
  @override
  $EarningValueCopyWith<$Res> get completedPayments;
  @override
  $EarningValueCopyWith<$Res> get earningsInMonth;
  @override
  $EarningValueCopyWith<$Res> get totalEarnings;
}

/// @nodoc
class __$$EarningsModelImplCopyWithImpl<$Res>
    extends _$EarningsModelCopyWithImpl<$Res, _$EarningsModelImpl>
    implements _$$EarningsModelImplCopyWith<$Res> {
  __$$EarningsModelImplCopyWithImpl(
      _$EarningsModelImpl _value, $Res Function(_$EarningsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networth = null,
    Object? pendingPayments = null,
    Object? completedPayments = null,
    Object? earningsInMonth = null,
    Object? totalEarnings = null,
  }) {
    return _then(_$EarningsModelImpl(
      networth: null == networth
          ? _value.networth
          : networth // ignore: cast_nullable_to_non_nullable
              as double,
      pendingPayments: null == pendingPayments
          ? _value.pendingPayments
          : pendingPayments // ignore: cast_nullable_to_non_nullable
              as EarningValue,
      completedPayments: null == completedPayments
          ? _value.completedPayments
          : completedPayments // ignore: cast_nullable_to_non_nullable
              as EarningValue,
      earningsInMonth: null == earningsInMonth
          ? _value.earningsInMonth
          : earningsInMonth // ignore: cast_nullable_to_non_nullable
              as EarningValue,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as EarningValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningsModelImpl implements _EarningsModel {
  const _$EarningsModelImpl(
      {required this.networth,
      required this.pendingPayments,
      required this.completedPayments,
      required this.earningsInMonth,
      required this.totalEarnings});

  factory _$EarningsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningsModelImplFromJson(json);

  @override
  final double networth;
  @override
  final EarningValue pendingPayments;
  @override
  final EarningValue completedPayments;
  @override
  final EarningValue earningsInMonth;
  @override
  final EarningValue totalEarnings;

  @override
  String toString() {
    return 'EarningsModel(networth: $networth, pendingPayments: $pendingPayments, completedPayments: $completedPayments, earningsInMonth: $earningsInMonth, totalEarnings: $totalEarnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsModelImpl &&
            (identical(other.networth, networth) ||
                other.networth == networth) &&
            (identical(other.pendingPayments, pendingPayments) ||
                other.pendingPayments == pendingPayments) &&
            (identical(other.completedPayments, completedPayments) ||
                other.completedPayments == completedPayments) &&
            (identical(other.earningsInMonth, earningsInMonth) ||
                other.earningsInMonth == earningsInMonth) &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, networth, pendingPayments,
      completedPayments, earningsInMonth, totalEarnings);

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsModelImplCopyWith<_$EarningsModelImpl> get copyWith =>
      __$$EarningsModelImplCopyWithImpl<_$EarningsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningsModelImplToJson(
      this,
    );
  }
}

abstract class _EarningsModel implements EarningsModel {
  const factory _EarningsModel(
      {required final double networth,
      required final EarningValue pendingPayments,
      required final EarningValue completedPayments,
      required final EarningValue earningsInMonth,
      required final EarningValue totalEarnings}) = _$EarningsModelImpl;

  factory _EarningsModel.fromJson(Map<String, dynamic> json) =
      _$EarningsModelImpl.fromJson;

  @override
  double get networth;
  @override
  EarningValue get pendingPayments;
  @override
  EarningValue get completedPayments;
  @override
  EarningValue get earningsInMonth;
  @override
  EarningValue get totalEarnings;

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningsModelImplCopyWith<_$EarningsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarningValue _$EarningValueFromJson(Map<String, dynamic> json) {
  return _EarningValue.fromJson(json);
}

/// @nodoc
mixin _$EarningValue {
  int get quantity => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this EarningValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningValueCopyWith<EarningValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningValueCopyWith<$Res> {
  factory $EarningValueCopyWith(
          EarningValue value, $Res Function(EarningValue) then) =
      _$EarningValueCopyWithImpl<$Res, EarningValue>;
  @useResult
  $Res call({int quantity, double value});
}

/// @nodoc
class _$EarningValueCopyWithImpl<$Res, $Val extends EarningValue>
    implements $EarningValueCopyWith<$Res> {
  _$EarningValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningValueImplCopyWith<$Res>
    implements $EarningValueCopyWith<$Res> {
  factory _$$EarningValueImplCopyWith(
          _$EarningValueImpl value, $Res Function(_$EarningValueImpl) then) =
      __$$EarningValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity, double value});
}

/// @nodoc
class __$$EarningValueImplCopyWithImpl<$Res>
    extends _$EarningValueCopyWithImpl<$Res, _$EarningValueImpl>
    implements _$$EarningValueImplCopyWith<$Res> {
  __$$EarningValueImplCopyWithImpl(
      _$EarningValueImpl _value, $Res Function(_$EarningValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? value = null,
  }) {
    return _then(_$EarningValueImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningValueImpl implements _EarningValue {
  const _$EarningValueImpl({required this.quantity, required this.value});

  factory _$EarningValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningValueImplFromJson(json);

  @override
  final int quantity;
  @override
  final double value;

  @override
  String toString() {
    return 'EarningValue(quantity: $quantity, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningValueImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, value);

  /// Create a copy of EarningValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningValueImplCopyWith<_$EarningValueImpl> get copyWith =>
      __$$EarningValueImplCopyWithImpl<_$EarningValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningValueImplToJson(
      this,
    );
  }
}

abstract class _EarningValue implements EarningValue {
  const factory _EarningValue(
      {required final int quantity,
      required final double value}) = _$EarningValueImpl;

  factory _EarningValue.fromJson(Map<String, dynamic> json) =
      _$EarningValueImpl.fromJson;

  @override
  int get quantity;
  @override
  double get value;

  /// Create a copy of EarningValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningValueImplCopyWith<_$EarningValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
