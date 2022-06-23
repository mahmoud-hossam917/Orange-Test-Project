abstract class SignupState {}
class intiStateSignup extends SignupState{}
class SignupLoading extends SignupState{}
class SignupSuccess extends SignupState{}
class SignupError extends SignupState{
  final error;
  SignupError(this.error);
}