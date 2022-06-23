import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmahmoud/ViewModel/login_cubit/LoginState.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit():super(Intistate());
  static LoginCubit GetInstence(context)=>BlocProvider.of(context);

}