import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studyportal/core/errors/exceptions.dart';
import 'package:studyportal/features/studymaterial/data/models/branch_model.dart';
import 'package:studyportal/features/studymaterial/data/models/file_model.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';

abstract interface class RemoteDataSource {
  Future<List<Branch>> loadExplorePage();
  Future<List<Branch>> fetchPins();
  Future<List<File>> fetchBookmarks();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final String apiEndpoint = 'http://10.0.2.2:4000';

  @override
  Future<List<Branch>> loadExplorePage() async {
    try {
      final response = await http.get(Uri.parse("$apiEndpoint/api/branches"));

      if (response.statusCode != 200) {
        throw ServerException(
            "Failed to load branches: ${response.statusCode}");
      }

      final Map<String, dynamic> responseData = json.decode(response.body);

      if (responseData["data"] == null) {
        throw const ServerException("Empty Branch List");
      }

      return (responseData["data"] as List<dynamic>)
          .map((branch) => BranchModel.fromJson(branch))
          .toList();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<Branch>> fetchPins() async {
    try {
      final response = await http.get(Uri.parse("$apiEndpoint/api/pins"));

      if (response.statusCode != 200) {
        throw ServerException("Failed to load pins: ${response.statusCode}");
      }

      final Map<String, dynamic> responseData = json.decode(response.body);

      if (responseData["data"] == null) {
        throw const ServerException("No Pins");
      }

      return (responseData["data"] as List<dynamic>)
          .map((pin) => BranchModel.fromJson(pin))
          .toList();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<File>> fetchBookmarks() async {
    try {
      final response = await http.get(Uri.parse("$apiEndpoint/api/bookmarks"));

      if (response.statusCode != 200) {
        throw ServerException(
            "Failed to load bookmarks: ${response.statusCode}");
      }

      final Map<String, dynamic> responseData = json.decode(response.body);

      if (responseData["data"] == null) {
        throw const ServerException("No Bookmarks");
      }

      return (responseData["data"] as List<dynamic>)
          .map((file) => FileModel.fromJson(file))
          .toList();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
