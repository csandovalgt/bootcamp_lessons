class DataModel {
  final int status;
  final String message;

  DataModel({
    required this.status,
    required this.message,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      status: json['status'] ?? 0,
      message: json['message'] ?? "",
    );
  }
}
