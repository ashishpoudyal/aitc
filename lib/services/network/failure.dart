// ignore_for_file: public_member_api_docs, sort_constructors_first
class Failure {
  String message;
  String title;
  int statusCode;

  Failure(
      {required this.message, required this.title, required this.statusCode});
}
