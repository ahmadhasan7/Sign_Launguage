


import '../../../core/classes/crud.dart';
import '../../../core/constant/staticdata.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  PostSignUpdata({required String email,required String password,required String username}) async {
    var response =
    await crud.postData( linkurl:"${StaticData().baseurl}/api/v1/auth/signup",data:  {
      'password': password,
      'email': email,
      'username':username

    },
    );
    return response.fold((l) => l, (r) => r);
  }
}
