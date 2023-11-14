//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of cats_api;


class ImagesApi {
  ImagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// /images/:image_id/analysis
  ///
  /// Get the raw analysis results for any uploaded image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey:
  ///   [optional]  will save this request to your account analytics 
  Future<Response> imagesBkIEhN3pGGetWithHttpInfo({ String? xApiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/BkIEhN3pG';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xApiKey != null) {
      headerParams[r'x-api-key'] = parameterToString(xApiKey);
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

  /// /images/:image_id/analysis
  ///
  /// Get the raw analysis results for any uploaded image
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey:
  ///   [optional]  will save this request to your account analytics 
  Future<Object?> imagesBkIEhN3pGGet({ String? xApiKey, }) async {
    final response = await imagesBkIEhN3pGGetWithHttpInfo( xApiKey: xApiKey, );
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

  /// /images/ (Your uploads)
  ///
  /// Only returns images from your account, uploaded via 'api/v1/images/upload'
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - will return all the images from your account 
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   [Optional] number of images to return valid  1 to 10 - default: 1
  ///
  /// * [int] page:
  ///   [Optional] only works if account_id is present to page through your own uploads
  ///
  /// * [String] order:
  ///   [Optional] only works if account_id is present, either ASC or DESC - ascending or descending.
  Future<Response> imagesGetWithHttpInfo(String xApiKey, { String? contentType, int? limit, int? page, String? order, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/';

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

  /// /images/ (Your uploads)
  ///
  /// Only returns images from your account, uploaded via 'api/v1/images/upload'
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - will return all the images from your account 
  ///
  /// * [String] contentType:
  ///
  /// * [int] limit:
  ///   [Optional] number of images to return valid  1 to 10 - default: 1
  ///
  /// * [int] page:
  ///   [Optional] only works if account_id is present to page through your own uploads
  ///
  /// * [String] order:
  ///   [Optional] only works if account_id is present, either ASC or DESC - ascending or descending.
  Future<Object?> imagesGet(String xApiKey, { String? contentType, int? limit, int? page, String? order, }) async {
    final response = await imagesGetWithHttpInfo(xApiKey,  contentType: contentType, limit: limit, page: page, order: order, );
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

  /// /images/:image_id/breeds/:breed_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - only you can delete breeds from your images 
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] breedId (required):
  ///
  /// * [String] contentType:
  Future<Response> imagesImageIdBreedsBreedIdDeleteWithHttpInfo(String xApiKey, String imageId, String breedId, { String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{image_id}/breeds/{breed_id}'
      .replaceAll('{image_id}', imageId)
      .replaceAll('{breed_id}', breedId);

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

  /// /images/:image_id/breeds/:breed_id
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - only you can delete breeds from your images 
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] breedId (required):
  ///
  /// * [String] contentType:
  Future<void> imagesImageIdBreedsBreedIdDelete(String xApiKey, String imageId, String breedId, { String? contentType, }) async {
    final response = await imagesImageIdBreedsBreedIdDeleteWithHttpInfo(xApiKey, imageId, breedId,  contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// /images/:image_id/breeds
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] contentType:
  Future<Response> imagesImageIdBreedsGetWithHttpInfo(String imageId, { String? contentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{image_id}/breeds'
      .replaceAll('{image_id}', imageId);

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

  /// /images/:image_id/breeds
  ///
  /// Parameters:
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] contentType:
  Future<void> imagesImageIdBreedsGet(String imageId, { String? contentType, }) async {
    final response = await imagesImageIdBreedsGetWithHttpInfo(imageId,  contentType: contentType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// /images/:image_id/breeds
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - for now, you can only tag your own images with a breed  
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<Response> imagesImageIdBreedsPostWithHttpInfo(String xApiKey, String imageId, { String? contentType, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{image_id}/breeds'
      .replaceAll('{image_id}', imageId);

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

  /// /images/:image_id/breeds
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - for now, you can only tag your own images with a breed  
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] contentType:
  ///
  /// * [Object] body:
  Future<void> imagesImageIdBreedsPost(String xApiKey, String imageId, { String? contentType, Object? body, }) async {
    final response = await imagesImageIdBreedsPostWithHttpInfo(xApiKey, imageId,  contentType: contentType, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// /images/:image_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] contentType:
  ///
  /// * [String] xApiKey:
  Future<Response> imagesImageIdDeleteWithHttpInfo(String imageId, { String? contentType, String? xApiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{image_id}'
      .replaceAll('{image_id}', imageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    if (xApiKey != null) {
      headerParams[r'x-api-key'] = parameterToString(xApiKey);
    }

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

  /// /images/:image_id
  ///
  /// Parameters:
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] contentType:
  ///
  /// * [String] xApiKey:
  Future<void> imagesImageIdDelete(String imageId, { String? contentType, String? xApiKey, }) async {
    final response = await imagesImageIdDeleteWithHttpInfo(imageId,  contentType: contentType, xApiKey: xApiKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// /images/search
  ///
  /// Searchs all approved images. Default is to reutrn RANDOM images, but with an API-Key you can use 'order=DESC' or 'order=ASC' along with the 'page' and 'limit' parameters to paginate through them in the order they were approved.  Pagination-Count, Pagination-Page, and Pagination-Limit headers are present in the response so you know the total number of images that can be paginated through for the passed search filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contentType:
  ///
  /// * [String] xApiKey:
  ///   [optional] without it only the a basic set of images can be searched
  ///
  /// * [String] size:
  ///   [optional] thumb , small, med or full - small is perfect for Discord
  ///
  /// * [String] mimeTypes:
  ///   [optional] a comma separated strig of types to return e.g. jpg,png for static, or gif for gifs
  ///
  /// * [String] format:
  ///   [optional] json | src
  ///
  /// * [bool] hasBreeds:
  ///   [optional] - only return images with breed data
  ///
  /// * [String] order:
  ///   [optional] default:RANDOM - RANDOM | ASC | DESC
  ///
  /// * [int] page:
  ///   [optional] paginate through results
  ///
  /// * [int] limit:
  ///   [optional] number of results to return, up to 25 with a valid API-Key
  Future<Response> imagesSearchGetWithHttpInfo({ String? contentType, String? xApiKey, String? size, String? mimeTypes, String? format, bool? hasBreeds, String? order, int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (mimeTypes != null) {
      queryParams.addAll(_queryParams('', 'mime_types', mimeTypes));
    }
    if (format != null) {
      queryParams.addAll(_queryParams('', 'format', format));
    }
    if (hasBreeds != null) {
      queryParams.addAll(_queryParams('', 'has_breeds', hasBreeds));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    if (xApiKey != null) {
      headerParams[r'x-api-key'] = parameterToString(xApiKey);
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

  /// /images/search
  ///
  /// Searchs all approved images. Default is to reutrn RANDOM images, but with an API-Key you can use 'order=DESC' or 'order=ASC' along with the 'page' and 'limit' parameters to paginate through them in the order they were approved.  Pagination-Count, Pagination-Page, and Pagination-Limit headers are present in the response so you know the total number of images that can be paginated through for the passed search filters.
  ///
  /// Parameters:
  ///
  /// * [String] contentType:
  ///
  /// * [String] xApiKey:
  ///   [optional] without it only the a basic set of images can be searched
  ///
  /// * [String] size:
  ///   [optional] thumb , small, med or full - small is perfect for Discord
  ///
  /// * [String] mimeTypes:
  ///   [optional] a comma separated strig of types to return e.g. jpg,png for static, or gif for gifs
  ///
  /// * [String] format:
  ///   [optional] json | src
  ///
  /// * [bool] hasBreeds:
  ///   [optional] - only return images with breed data
  ///
  /// * [String] order:
  ///   [optional] default:RANDOM - RANDOM | ASC | DESC
  ///
  /// * [int] page:
  ///   [optional] paginate through results
  ///
  /// * [int] limit:
  ///   [optional] number of results to return, up to 25 with a valid API-Key
  Future<Object?> imagesSearchGet({ String? contentType, String? xApiKey, String? size, String? mimeTypes, String? format, bool? hasBreeds, String? order, int? page, int? limit, }) async {
    final response = await imagesSearchGetWithHttpInfo( contentType: contentType, xApiKey: xApiKey, size: size, mimeTypes: mimeTypes, format: format, hasBreeds: hasBreeds, order: order, page: page, limit: limit, );
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

  /// /images/upload
  ///
  /// Make sure you're using the right field to send the image, and Content-Type header
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - saves the uploaded image to your account.
  ///
  /// * [String] contentType:
  ///
  /// * [MultipartFile] file:
  ///
  /// * [String] subId:
  ///   [optional] - a string you can use to segment your images, e.g. knowing which of your own users uploaded it.
  ///
  /// * [String] breedIds:
  ///   [optional] comma separated string of breed ids contained in the image
  Future<Response> imagesUploadPostWithHttpInfo(String xApiKey, { String? contentType, MultipartFile? file, String? subId, String? breedIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/upload';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    headerParams[r'x-api-key'] = parameterToString(xApiKey);

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (subId != null) {
      hasFields = true;
      mp.fields[r'sub_id'] = parameterToString(subId);
    }
    if (breedIds != null) {
      hasFields = true;
      mp.fields[r'breed_ids'] = parameterToString(breedIds);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// /images/upload
  ///
  /// Make sure you're using the right field to send the image, and Content-Type header
  ///
  /// Parameters:
  ///
  /// * [String] xApiKey (required):
  ///   - saves the uploaded image to your account.
  ///
  /// * [String] contentType:
  ///
  /// * [MultipartFile] file:
  ///
  /// * [String] subId:
  ///   [optional] - a string you can use to segment your images, e.g. knowing which of your own users uploaded it.
  ///
  /// * [String] breedIds:
  ///   [optional] comma separated string of breed ids contained in the image
  Future<Object?> imagesUploadPost(String xApiKey, { String? contentType, MultipartFile? file, String? subId, String? breedIds, }) async {
    final response = await imagesUploadPostWithHttpInfo(xApiKey,  contentType: contentType, file: file, subId: subId, breedIds: breedIds, );
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
