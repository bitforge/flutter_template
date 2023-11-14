//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of cats_api;


class BreedsApi {
  BreedsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// /breeds/:breed_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] breedId (required):
  ///
  /// * [String] contentType:
  Future<Response> breedsBreedIdGetWithHttpInfo(String breedId, { String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/breeds/{breed_id}'
      .replaceAll('{breed_id}', breedId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

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

  /// /breeds/:breed_id
  ///
  /// Parameters:
  ///
  /// * [String] breedId (required):
  ///
  /// * [String] contentType:
  Future<Object?> breedsBreedIdGet(String breedId, { String? contentType, }) async {
    final response = await breedsBreedIdGetWithHttpInfo(breedId,  contentType: contentType, );
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

  /// /breeds
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///
  /// * [int] page:
  Future<Response> breedsGetWithHttpInfo({ String? contentType, int? limit, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/breeds';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

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

  /// /breeds
  ///
  /// Parameters:
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///
  /// * [int] page:
  Future<Object?> breedsGet({ String? contentType, int? limit, int? page, }) async {
    final response = await breedsGetWithHttpInfo( contentType: contentType, limit: limit, page: page, );
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

  /// Search Breeds
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   search term for breed name
  ///
  /// * [int] attachImage:
  ///   [optional] whether to attach the reference_image_id image or not
  Future<Response> breedsSearchGetWithHttpInfo({ String? q, int? attachImage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/breeds/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (attachImage != null) {
      queryParams.addAll(_queryParams('', 'attach_image', attachImage));
    }

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

  /// Search Breeds
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   search term for breed name
  ///
  /// * [int] attachImage:
  ///   [optional] whether to attach the reference_image_id image or not
  Future<Object?> breedsSearchGet({ String? q, int? attachImage, }) async {
    final response = await breedsSearchGetWithHttpInfo( q: q, attachImage: attachImage, );
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
