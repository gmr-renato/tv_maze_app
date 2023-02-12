// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'x_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$XFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(T? object) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(T? object)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(T? object)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Unexpected<T> value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Unexpected<T> value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XFailureCopyWith<T, $Res> {
  factory $XFailureCopyWith(
          XFailure<T> value, $Res Function(XFailure<T>) then) =
      _$XFailureCopyWithImpl<T, $Res, XFailure<T>>;
}

/// @nodoc
class _$XFailureCopyWithImpl<T, $Res, $Val extends XFailure<T>>
    implements $XFailureCopyWith<T, $Res> {
  _$XFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<T, $Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError<T> value, $Res Function(_$_ServerError<T>) then) =
      __$$_ServerErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<T, $Res>
    extends _$XFailureCopyWithImpl<T, $Res, _$_ServerError<T>>
    implements _$$_ServerErrorCopyWith<T, $Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError<T> _value, $Res Function(_$_ServerError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError<T> implements _ServerError<T> {
  const _$_ServerError();

  @override
  String toString() {
    return 'XFailure<$T>.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(T? object) unexpected,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(T? object)? unexpected,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(T? object)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Unexpected<T> value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Unexpected<T> value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError<T> implements XFailure<T> {
  const factory _ServerError() = _$_ServerError<T>;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<T, $Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected<T> value, $Res Function(_$_Unexpected<T>) then) =
      __$$_UnexpectedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? object});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<T, $Res>
    extends _$XFailureCopyWithImpl<T, $Res, _$_Unexpected<T>>
    implements _$$_UnexpectedCopyWith<T, $Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected<T> _value, $Res Function(_$_Unexpected<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
  }) {
    return _then(_$_Unexpected<T>(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Unexpected<T> implements _Unexpected<T> {
  const _$_Unexpected({this.object});

  @override
  final T? object;

  @override
  String toString() {
    return 'XFailure<$T>.unexpected(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected<T> &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<T, _$_Unexpected<T>> get copyWith =>
      __$$_UnexpectedCopyWithImpl<T, _$_Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(T? object) unexpected,
  }) {
    return unexpected(object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(T? object)? unexpected,
  }) {
    return unexpected?.call(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(T? object)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Unexpected<T> value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Unexpected<T> value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements XFailure<T> {
  const factory _Unexpected({final T? object}) = _$_Unexpected<T>;

  T? get object;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<T, _$_Unexpected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
