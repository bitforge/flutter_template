//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of cats_api;

class FactsApi {
  FactsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Ordered Fact(s) About Breed
  ///
  /// Get one or more facts about the Species. For more at a time just update the 'limit' field, and to paginate through them just increment the 'page' field.  The response headers have the pagination details, such as how many there are in total, what page you're on, and the current amount per page.  To redorder change the order to ASC for ascending order, DESC for descending, and RAND for random order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] breedId (required):
  ///
  /// * [int] limit:
  ///
  /// * [int] page:
  ///
  /// * [String] order:
  Future<Response> breedsBreedIdFactsGetWithHttpInfo(
    String breedId, {
    int? limit,
    int? page,
    String? order,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/breeds/{breed_id}/facts'.replaceAll('{breed_id}', breedId);

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
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
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

  /// Get Ordered Fact(s) About Breed
  ///
  /// Get one or more facts about the Species. For more at a time just update the 'limit' field, and to paginate through them just increment the 'page' field.  The response headers have the pagination details, such as how many there are in total, what page you're on, and the current amount per page.  To redorder change the order to ASC for ascending order, DESC for descending, and RAND for random order.
  ///
  /// Parameters:
  ///
  /// * [String] breedId (required):
  ///
  /// * [int] limit:
  ///
  /// * [int] page:
  ///
  /// * [String] order:
  Future<Object?> breedsBreedIdFactsGet(
    String breedId, {
    int? limit,
    int? page,
    String? order,
  }) async {
    final response = await breedsBreedIdFactsGetWithHttpInfo(
      breedId,
      limit: limit,
      page: page,
      order: order,
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

  /// Get Random Fact(s)
  ///
  /// Get one or more Random facts and the Species. For more at a time just update the 'limit' field
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> factsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/facts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Random Fact(s)
  ///
  /// Get one or more Random facts and the Species. For more at a time just update the 'limit' field
  Future<Object?> factsGet() async {
    final response = await factsGetWithHttpInfo();
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
}
