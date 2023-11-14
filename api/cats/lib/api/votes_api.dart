//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of cats_api;

class VotesApi {
  VotesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// /votes/:vote_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] voteId (required):
  ///
  /// * [String] contentType:
  Future<Response> voteVoteIdDeleteWithHttpInfo(
    String xApiKey,
    String voteId, {
    String? contentType,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/vote/{vote_id}'.replaceAll('{vote_id}', voteId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    headerParams[r'x-api-key'] = parameterToString(xApiKey);

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// /votes/:vote_id
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] voteId (required):
  ///
  /// * [String] contentType:
  Future<void> voteVoteIdDelete(
    String xApiKey,
    String voteId, {
    String? contentType,
  }) async {
    final response = await voteVoteIdDeleteWithHttpInfo(
      xApiKey,
      voteId,
      contentType: contentType,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// /votes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] contentType:
  Future<Response> votesGetWithHttpInfo(
    String xApiKey, {
    String? contentType,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/votes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    headerParams[r'x-api-key'] = parameterToString(xApiKey);

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// /votes
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] contentType:
  Future<Object?> votesGet(
    String xApiKey, {
    String? contentType,
  }) async {
    final response = await votesGetWithHttpInfo(
      xApiKey,
      contentType: contentType,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// /votes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> votesPostWithHttpInfo(
    String xApiKey, {
    String? contentType,
    Object? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/votes';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    headerParams[r'x-api-key'] = parameterToString(xApiKey);

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// /votes
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Object?> votesPost(
    String xApiKey, {
    String? contentType,
    Object? body,
  }) async {
    final response = await votesPostWithHttpInfo(
      xApiKey,
      contentType: contentType,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// /votes/:vote_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] voteId (required):
  ///
  /// * [String] contentType:
  Future<Response> votesVoteIdGetWithHttpInfo(
    String xApiKey,
    String voteId, {
    String? contentType,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/votes/{vote_id}'.replaceAll('{vote_id}', voteId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    headerParams[r'x-api-key'] = parameterToString(xApiKey);

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// /votes/:vote_id
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///
  ///
  /// * [String] voteId (required):
  ///
  /// * [String] contentType:
  Future<void> votesVoteIdGet(
    String xApiKey,
    String voteId, {
    String? contentType,
  }) async {
    final response = await votesVoteIdGetWithHttpInfo(
      xApiKey,
      voteId,
      contentType: contentType,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
