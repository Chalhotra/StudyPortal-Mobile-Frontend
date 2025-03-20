import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studyportal/core/errors/exceptions.dart';
import 'package:studyportal/features/studymaterial/data/models/branch_model.dart';
import 'package:studyportal/features/studymaterial/data/models/course_model.dart';
import 'package:studyportal/features/studymaterial/data/models/file_model.dart';
import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/entities/course.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';
import 'package:studyportal/features/studymaterial/domain/entities/pin.dart';

abstract interface class RemoteDataSource {
  Future<List<Branch>> fetchDepartments();
  Future<List<Branch>> fetchPins();
  Future<List<File>> fetchBookmarks();
  Future<List<Course>> fetchCourses(String branchId);
  Future<List<File>> fetchFiles(String courseId);
  Future<void> addPin(Pin pin);
  Future<void> addBookmark(Bookmark bookmark);
  Future<void> removePin(Pin pin);
  Future<void> removeBookmark(Bookmark bookmark);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final String apiEndpoint = 'http://10.0.2.2:4000';

  @override
  Future<List<Branch>> fetchDepartments() async {
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

  @override
  Future<List<Course>> fetchCourses(String branchId) async {
    try {
      final response =
          await http.get(Uri.parse("$apiEndpoint/api/courses/$branchId"));

      if (response.statusCode != 200) {
        throw ServerException("Failed to load courses: ${response.statusCode}");
      }

      final Map<String, dynamic> responseData = json.decode(response.body);

      if (responseData["data"] == null) {
        throw const ServerException("No Courses");
      }

      return (responseData["data"] as List<dynamic>)
          .map((file) => CourseModel.fromJson(file))
          .toList();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<File>> fetchFiles(String courseCode) async {
    try {
      final response =
          await http.get(Uri.parse("$apiEndpoint/api/course-mat/$courseCode"));

      if (response.statusCode != 200) {
        throw ServerException("Failed to load files: ${response.statusCode}");
      }

      final Map<String, dynamic> responseData = json.decode(response.body);

      if (responseData["data"] == null) {
        throw const ServerException("No Files");
      }

      return (responseData["data"] as List<dynamic>)
          .map((file) => FileModel.fromJson(file))
          .toList();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> addBookmark(Bookmark bookmark) async {
    try {
      final response = await http.post(
        Uri.parse("$apiEndpoint/api/add-bookmark"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(bookmark),
      );

      if (response.statusCode != 201) {
        throw ServerException("Failed to add bookmark: ${response.statusCode}");
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> addPin(Pin pin) async {
    try {
      final response = await http.post(
        Uri.parse("$apiEndpoint/api/add-pin"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(pin),
      );

      if (response.statusCode != 201) {
        throw ServerException("Failed to add pin: ${response.statusCode}");
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> removeBookmark(Bookmark bookmark) async {
    try {
      final response = await http.post(
        Uri.parse("$apiEndpoint/api/remove-bookmark"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(bookmark),
      );

      if (response.statusCode != 201) {
        throw ServerException(
            "Failed to remove bookmark: ${response.statusCode}");
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> removePin(Pin pin) async {
    try {
      final response = await http.post(
        Uri.parse("$apiEndpoint/api/remove-pin"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(pin),
      );

      if (response.statusCode != 201) {
        throw ServerException("Failed to remove pin: ${response.statusCode}");
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
