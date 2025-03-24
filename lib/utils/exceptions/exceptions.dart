/// Exception class for handling various errors.
class FAExceptions implements Exception {
  /// The associated error message.
  final String message;

  /// Default constructor with a generic error message.
  const FAExceptions([this.message = 'An unexpected error occurred. Please try again.']);

  /// Create an authentication exception from a Firebase authentication exception code.
  factory FAExceptions.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const FAExceptions('The email address is already registered. Please use a different email.');
      case 'invalid-email':
        return const FAExceptions('The email address provided is invalid. Please enter a valid email.');
      case 'weak-password':
        return const FAExceptions('The password is too weak. Please choose a stronger password.');
      case 'user-disabled':
        return const FAExceptions('This user account has been disabled. Please contact support for assistance.');
      case 'user-not-found':
        return const FAExceptions('Invalid login details. User not found.');
      case 'wrong-password':
        return const FAExceptions('Incorrect password. Please check your password and try again.');
      case 'INVALID_LOGIN_CREDENTIALS':
        return const FAExceptions('Invalid login credentials. Please double-check your information.');
      case 'too-many-requests':
        return const FAExceptions('Too many requests. Please try again later.');
      case 'invalid-argument':
        return const FAExceptions('Invalid argument provided to the authentication method.');
      case 'invalid-password':
        return const FAExceptions('Incorrect password. Please try again.');
      case 'invalid-phone-number':
        return const FAExceptions('The provided phone number is invalid.');
      case 'operation-not-allowed':
        return const FAExceptions('The sign-in provider is disabled for your Firebase project.');
      case 'session-cookie-expired':
        return const FAExceptions('The Firebase session cookie has expired. Please sign in again.');
      case 'uid-already-exists':
        return const FAExceptions('The provided user ID is already in use by another user.');
      case 'sign_in_failed':
        return const FAExceptions('Sign-in failed. Please try again.');
      case 'network-request-failed':
        return const FAExceptions('Network request failed. Please check your internet connection.');
      case 'internal-error':
        return const FAExceptions('Internal error. Please try again later.');
      case 'invalid-verification-code':
        return const FAExceptions('Invalid verification code. Please enter a valid code.');
      case 'invalid-verification-id':
        return const FAExceptions('Invalid verification ID. Please request a new verification code.');
      case 'quota-exceeded':
        return const FAExceptions('Quota exceeded. Please try again later.');
      default:
        return const FAExceptions();
    }
  }
}
