// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  dynamic get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  dynamic get imageUrls => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  dynamic get itemType => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;
  bool? get isItem => throw _privateConstructorUsedError;
  int? get itemId => throw _privateConstructorUsedError;
  MessageModel? get replyTo => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  UserModel get sender => throw _privateConstructorUsedError;

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {dynamic id,
      String text,
      dynamic imageUrls,
      String? attachment,
      dynamic itemType,
      bool? read,
      bool? isItem,
      int? itemId,
      MessageModel? replyTo,
      DateTime? createdAt,
      UserModel sender});

  $MessageModelCopyWith<$Res>? get replyTo;
  $UserModelCopyWith<$Res> get sender;
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = null,
    Object? imageUrls = freezed,
    Object? attachment = freezed,
    Object? itemType = freezed,
    Object? read = freezed,
    Object? isItem = freezed,
    Object? itemId = freezed,
    Object? replyTo = freezed,
    Object? createdAt = freezed,
    Object? sender = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      isItem: freezed == isItem
          ? _value.isItem
          : isItem // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res>? get replyTo {
    if (_value.replyTo == null) {
      return null;
    }

    return $MessageModelCopyWith<$Res>(_value.replyTo!, (value) {
      return _then(_value.copyWith(replyTo: value) as $Val);
    });
  }

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get sender {
    return $UserModelCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String text,
      dynamic imageUrls,
      String? attachment,
      dynamic itemType,
      bool? read,
      bool? isItem,
      int? itemId,
      MessageModel? replyTo,
      DateTime? createdAt,
      UserModel sender});

  @override
  $MessageModelCopyWith<$Res>? get replyTo;
  @override
  $UserModelCopyWith<$Res> get sender;
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = null,
    Object? imageUrls = freezed,
    Object? attachment = freezed,
    Object? itemType = freezed,
    Object? read = freezed,
    Object? isItem = freezed,
    Object? itemId = freezed,
    Object? replyTo = freezed,
    Object? createdAt = freezed,
    Object? sender = null,
  }) {
    return _then(_$MessageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: freezed == itemType ? _value.itemType! : itemType,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      isItem: freezed == isItem
          ? _value.isItem
          : isItem // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {required this.id,
      required this.text,
      this.imageUrls,
      this.attachment,
      this.itemType,
      this.read,
      this.isItem,
      this.itemId,
      this.replyTo,
      this.createdAt,
      required this.sender});

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String text;
  @override
  final dynamic imageUrls;
  @override
  final String? attachment;
  @override
  final dynamic itemType;
  @override
  final bool? read;
  @override
  final bool? isItem;
  @override
  final int? itemId;
  @override
  final MessageModel? replyTo;
  @override
  final DateTime? createdAt;
  @override
  final UserModel sender;

  @override
  String toString() {
    return 'MessageModel(id: $id, text: $text, imageUrls: $imageUrls, attachment: $attachment, itemType: $itemType, read: $read, isItem: $isItem, itemId: $itemId, replyTo: $replyTo, createdAt: $createdAt, sender: $sender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other.imageUrls, imageUrls) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            const DeepCollectionEquality().equals(other.itemType, itemType) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.isItem, isItem) || other.isItem == isItem) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      text,
      const DeepCollectionEquality().hash(imageUrls),
      attachment,
      const DeepCollectionEquality().hash(itemType),
      read,
      isItem,
      itemId,
      replyTo,
      createdAt,
      sender);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required final dynamic id,
      required final String text,
      final dynamic imageUrls,
      final String? attachment,
      final dynamic itemType,
      final bool? read,
      final bool? isItem,
      final int? itemId,
      final MessageModel? replyTo,
      final DateTime? createdAt,
      required final UserModel sender}) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  dynamic get id;
  @override
  String get text;
  @override
  dynamic get imageUrls;
  @override
  String? get attachment;
  @override
  dynamic get itemType;
  @override
  bool? get read;
  @override
  bool? get isItem;
  @override
  int? get itemId;
  @override
  MessageModel? get replyTo;
  @override
  DateTime? get createdAt;
  @override
  UserModel get sender;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
