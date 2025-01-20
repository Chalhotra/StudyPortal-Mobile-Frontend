import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studyportal/core/errors/exceptions.dart';
import 'package:studyportal/features/studymaterial/data/models/branch_model.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';

abstract interface class RemoteDataSource {
  Future<List<Branch>> loadExplorePage();
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
}
