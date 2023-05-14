class ValidationMixin{
  //  validateEmail(String value)
  // {
  //   if(value != null && value.contains('@'))
  //     {
  //       return 'Please Enter a valid Email';
  //     }
  //     return null;
  // }
   static String? validateEmail(String? value) {
     return value==null ||value.isEmpty ||!value.contains('@') ? "Please Enter a valid Email" : null;
   }
   
   static String? validateusername(String? value) {
     return value==null ||value.isEmpty ? "Please Enter your name" : null;
   }

  //    validatepassword (String value)
  // {
  //   if(value != null && value.length == 0)
  //     {
  //       return 'Please Enter your password';
  //     }
  //   return null;
  // }
   static String? validatepassword(String? value) {
     return value==null ||value.isEmpty ? "Password can't be empty" : null;
   }

   static String? validatebirthdate(String? value) {
     return value==null ||value.isEmpty ? "Please Enter your birthdate" : null;
   }


}