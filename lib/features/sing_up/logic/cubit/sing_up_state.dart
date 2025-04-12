import 'package:freezed_annotation/freezed_annotation.dart';
part 'sing_up_state.freezed.dart';

@freezed
class SingUpState<T> with _$SingUpState<T> {
  const factory SingUpState.initial() = _Initial<T>;
  const factory SingUpState.singUpLoading() = SingUpLoading;
  const factory SingUpState.singUpSuccess(T data) = SingUpSuccess<T>;
  const factory SingUpState.singUpError({required String error}) = SingUpError;
}
