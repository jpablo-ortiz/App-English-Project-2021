class Validators {
  // create regExp
  // Email:
  static final RegExp _emailRegExp = RegExp(
    // a-z, A-Z, 0-9, _, ., - after @ and after .
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  // Password:
  static final RegExp _passwordRegExp = RegExp(
    // min 1 digit and 8 letters min
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  // Two Functions:
  // 1. isValidEmail
  static isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  // 2. isValidPassword
  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }
}
