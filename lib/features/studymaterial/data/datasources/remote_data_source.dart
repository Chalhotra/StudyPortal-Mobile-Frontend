import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:studyportal/core/errors/exceptions.dart';
import 'package:studyportal/features/studymaterial/data/models/branch_model.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';

abstract interface class RemoteDataSource {
  Future<List<Branch>> loadExplorePage({
    required List<Branch> branches,
  });
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final String apiEndpoint = ' 10.0.0.2:3000';

  @override
  Future<List<Branch>> loadExplorePage({required List<Branch> branches}) async {
    try {
      final response = await http.get(Uri.parse("$apiEndpoint/branches"));

      if (response.statusCode != 200) {
        throw ServerException(
            "Failed to load branches: ${response.statusCode}");
      }

      final Map<String, dynamic> responseData = json.decode(response.body);

      if (responseData["branches"] == null) {
        throw const ServerException("Empty Branch List");
      }

      return (responseData["branches"] as List<dynamic>)
          .map((branch) => BranchModel.fromJson(branch))
          .toList();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
