import 'package:bloc/bloc.dart';
import 'package:workshop/business_logic/register/register_state.dart';
import 'package:workshop/data/data_provider/remote/dio_helper.dart';

import '../../constants/end_points.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  userRegister(Map<String, dynamic> json) {
    DioHelper.postData(
      url: registerEndPoint,
      data: json,
    );
  }
}
