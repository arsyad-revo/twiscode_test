class BasicResponse {
  int? statusCode;
  String? messages;
  dynamic data;

  BasicResponse({
    this.statusCode,
    this.messages,
    this.data,
  });
}
