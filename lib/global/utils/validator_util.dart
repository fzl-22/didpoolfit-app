class ValidatorUtil {
  String? fullNameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Full name must not be empty';
    }
    if (value.length > 64) {
      return 'Full name maximum length must not exceed 64 characters';
    }

    return null;
  }

  String? phoneNumberValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your phone number';
    }
    if (value.substring(0, 2) != "08" ||
        value.trim().length < 10 ||
        value.trim().length > 13) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email address';
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your password address';
    }
    if (value.trim().length < 8 || value.trim().length > 16) {
      return 'Password length must be between 8 and 16 characters';
    }
    final alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');
    if (!alphanumeric.hasMatch(value)) {
      return 'Password must consist of alphanumeric characters';
    }
    return null;
  }
}
