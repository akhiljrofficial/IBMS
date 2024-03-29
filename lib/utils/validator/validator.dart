


class Cvalidator{

  static String? validateEmptyText(String? fieldname,String? value){
    if(value==null || value.isEmpty){
      return "$fieldname is required"; 
    }
    return null;
  }  
  static String? validateEmail(String? value){
    if(value==null || value.isEmpty){
      return "Email is required";
    }

    // ignore: valid_regexps
    //final emailRegExp=RegExp(r'^[w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
   // if(!emailRegExp.hasMatch(value)){
    //  return "Invalid email assress";
    //}
    else{
    return null;
    }
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required';
    }

    if(value.length<6){
      return "Password must be at least 6 charecters long";

    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return "Password must contain at least one upper case letter";
    }

    if(!value.contains(RegExp(r'[0-9]'))){
      return "Password nust contain at least one number";
    }

    if(!value.contains(RegExp(r'[!!@#$%^&*(),.?":{}|<>]'))){
      return "Password must contain one special charecter";

    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return "Phone number is requried";
    }

    final phoneRegExp=RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return "Invalid phone number format (10 digits required)";

    }

    return null;
  }

}