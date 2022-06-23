import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmahmoud/ViewModel/signup_cubit/SignUpState.dart';
import 'package:testmahmoud/database/remote/dioHelper.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(intiStateSignup());

  static SignupCubit GetInstence(context) => BlocProvider.of(context);

  SignUp() async {
    emit(SignupLoading());
    await DioHelper.PostData(url: "register", data: {
      "email": "mahmoud@gmail.com",
      "password": "mahmoud123456",
      "name": "mahmoud",
      "gender": "m",
      "phoneNumber": "01125594718",
      "universityIerrord": 1,
      "gradeId": 1,
      "roleId": 2
    }).then((value) {
      emit(SignupSuccess());
      print(value.data);
    }).catchError((onError) {
      emit(SignupError(onError.toString()));
    });
  }
}
