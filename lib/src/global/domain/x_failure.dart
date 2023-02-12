import 'package:freezed_annotation/freezed_annotation.dart';

part 'x_failure.freezed.dart';

@freezed
class XFailure<T> with _$XFailure<T> {
  // GLOBAL
  const factory XFailure.serverError() = _ServerError;
  const factory XFailure.unexpected({T? object}) = _Unexpected;
}
