//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of cats_api;


class FavouritesApi {
  FavouritesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// /favourites/:favourite_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   
  ///
  /// * [String] favouriteId (required):
  ///
  /// * [String] contentType:
  Future<Response> favouritesFavouriteIdDeleteWithHttpInfo(String xApiKey, String favouriteId, { String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/favourites/{favourite_id}'
      .replaceAll('{favourite_id}', favouriteId);

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

  /// /favourites/:favourite_id
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   
  ///
  /// * [String] favouriteId (required):
  ///
  /// * [String] contentType:
  Future<void> favouritesFavouriteIdDelete(String xApiKey, String favouriteId, { String? contentType, }) async {
    final response = await favouritesFavouriteIdDeleteWithHttpInfo(xApiKey, favouriteId,  contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// /favourites/:favourite_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   
  ///
  /// * [String] favouriteId (required):
  ///
  /// * [String] contentType:
  Future<Response> favouritesFavouriteIdGetWithHttpInfo(String xApiKey, String favouriteId, { String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/favourites/{favourite_id}'
      .replaceAll('{favourite_id}', favouriteId);

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

  /// /favourites/:favourite_id
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   
  ///
  /// * [String] favouriteId (required):
  ///
  /// * [String] contentType:
  Future<void> favouritesFavouriteIdGet(String xApiKey, String favouriteId, { String? contentType, }) async {
    final response = await favouritesFavouriteIdGetWithHttpInfo(xApiKey, favouriteId,  contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// /favourites
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   
  ///
  /// * [String] contentType:
  Future<Response> favouritesGetWithHttpInfo(String xApiKey, { String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/favourites';

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

  /// /favourites
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   
  ///
  /// * [String] contentType:
  Future<Object?> favouritesGet(String xApiKey, { String? contentType, }) async {
    final response = await favouritesGetWithHttpInfo(xApiKey,  contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// /favourites
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
  Future<Response> favouritesPostWithHttpInfo(String xApiKey, { String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/favourites';

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

  /// /favourites
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Object?> favouritesPost(String xApiKey, { String? contentType, Object? body, }) async {
    final response = await favouritesPostWithHttpInfo(xApiKey,  contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
