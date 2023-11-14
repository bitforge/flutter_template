//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:cats_api/api.dart';
import 'package:test/test.dart';


/// tests for ImagesApi
void main() {
  // final instance = ImagesApi();

  group('tests for ImagesApi', () {
    // /images/:image_id/analysis
    //
    // Get the raw analysis results for any uploaded image
    //
    //Future<Object> imagesBkIEhN3pGGet({ String xApiKey }) async
    test('test imagesBkIEhN3pGGet', () async {
      // TODO
    });

    // /images/ (Your uploads)
    //
    // Only returns images from your account, uploaded via 'api/v1/images/upload'
    //
    //Future<Object> imagesGet(String xApiKey, { String contentType, int limit, int page, String order }) async
    test('test imagesGet', () async {
      // TODO
    });

    // /images/:image_id/breeds/:breed_id
    //
    //Future imagesImageIdBreedsBreedIdDelete(String xApiKey, String imageId, String breedId, { String contentType }) async
    test('test imagesImageIdBreedsBreedIdDelete', () async {
      // TODO
    });

    // /images/:image_id/breeds
    //
    //Future imagesImageIdBreedsGet(String imageId, { String contentType }) async
    test('test imagesImageIdBreedsGet', () async {
      // TODO
    });

    // /images/:image_id/breeds
    //
    //Future imagesImageIdBreedsPost(String xApiKey, String imageId, { String contentType, Object body }) async
    test('test imagesImageIdBreedsPost', () async {
      // TODO
    });

    // /images/:image_id
    //
    //Future imagesImageIdDelete(String imageId, { String contentType, String xApiKey }) async
    test('test imagesImageIdDelete', () async {
      // TODO
    });

    // /images/search
    //
    // Searchs all approved images. Default is to reutrn RANDOM images, but with an API-Key you can use 'order=DESC' or 'order=ASC' along with the 'page' and 'limit' parameters to paginate through them in the order they were approved.  Pagination-Count, Pagination-Page, and Pagination-Limit headers are present in the response so you know the total number of images that can be paginated through for the passed search filters.
    //
    //Future<Object> imagesSearchGet({ String contentType, String xApiKey, String size, String mimeTypes, String format, bool hasBreeds, String order, int page, int limit }) async
    test('test imagesSearchGet', () async {
      // TODO
    });

    // /images/upload
    //
    // Make sure you're using the right field to send the image, and Content-Type header
    //
    //Future<Object> imagesUploadPost(String xApiKey, { String contentType, MultipartFile file, String subId, String breedIds }) async
    test('test imagesUploadPost', () async {
      // TODO
    });

  });
}
