# cats_api.api.ImagesApi

## Load the API package
```dart
import 'package:cats_api/api.dart';
```

All URIs are relative to *https://api.thecatapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imagesBkIEhN3pGGet**](ImagesApi.md#imagesbkiehn3pgget) | **GET** /images/BkIEhN3pG | /images/:image_id/analysis
[**imagesGet**](ImagesApi.md#imagesget) | **GET** /images/ | /images/ (Your uploads)
[**imagesImageIdBreedsBreedIdDelete**](ImagesApi.md#imagesimageidbreedsbreediddelete) | **DELETE** /images/{image_id}/breeds/{breed_id} | /images/:image_id/breeds/:breed_id
[**imagesImageIdBreedsGet**](ImagesApi.md#imagesimageidbreedsget) | **GET** /images/{image_id}/breeds | /images/:image_id/breeds
[**imagesImageIdBreedsPost**](ImagesApi.md#imagesimageidbreedspost) | **POST** /images/{image_id}/breeds | /images/:image_id/breeds
[**imagesImageIdDelete**](ImagesApi.md#imagesimageiddelete) | **DELETE** /images/{image_id} | /images/:image_id
[**imagesSearchGet**](ImagesApi.md#imagessearchget) | **GET** /images/search | /images/search
[**imagesUploadPost**](ImagesApi.md#imagesuploadpost) | **POST** /images/upload | /images/upload


# **imagesBkIEhN3pGGet**
> Object imagesBkIEhN3pGGet(xApiKey)

/images/:image_id/analysis

Get the raw analysis results for any uploaded image

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | [optional]  will save this request to your account analytics 

try {
    final result = api_instance.imagesBkIEhN3pGGet(xApiKey);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->imagesBkIEhN3pGGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**| [optional]  will save this request to your account analytics  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesGet**
> Object imagesGet(xApiKey, contentType, limit, page, order)

/images/ (Your uploads)

Only returns images from your account, uploaded via 'api/v1/images/upload'

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | - will return all the images from your account 
final contentType = application/json; // String | 
final limit = 10; // int | [Optional] number of images to return valid  1 to 10 - default: 1
final page = 0; // int | [Optional] only works if account_id is present to page through your own uploads
final order = DESC; // String | [Optional] only works if account_id is present, either ASC or DESC - ascending or descending.

try {
    final result = api_instance.imagesGet(xApiKey, contentType, limit, page, order);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->imagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**| - will return all the images from your account  | 
 **contentType** | **String**|  | [optional] 
 **limit** | **int**| [Optional] number of images to return valid  1 to 10 - default: 1 | [optional] 
 **page** | **int**| [Optional] only works if account_id is present to page through your own uploads | [optional] 
 **order** | **String**| [Optional] only works if account_id is present, either ASC or DESC - ascending or descending. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesImageIdBreedsBreedIdDelete**
> imagesImageIdBreedsBreedIdDelete(xApiKey, imageId, breedId, contentType)

/images/:image_id/breeds/:breed_id

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | - only you can delete breeds from your images 
final imageId = imageId_example; // String | 
final breedId = breedId_example; // String | 
final contentType = application/json; // String | 

try {
    api_instance.imagesImageIdBreedsBreedIdDelete(xApiKey, imageId, breedId, contentType);
} catch (e) {
    print('Exception when calling ImagesApi->imagesImageIdBreedsBreedIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**| - only you can delete breeds from your images  | 
 **imageId** | **String**|  | 
 **breedId** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesImageIdBreedsGet**
> imagesImageIdBreedsGet(imageId, contentType)

/images/:image_id/breeds

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final imageId = imageId_example; // String | 
final contentType = application/json; // String | 

try {
    api_instance.imagesImageIdBreedsGet(imageId, contentType);
} catch (e) {
    print('Exception when calling ImagesApi->imagesImageIdBreedsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageId** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesImageIdBreedsPost**
> imagesImageIdBreedsPost(xApiKey, imageId, contentType, body)

/images/:image_id/breeds

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | - for now, you can only tag your own images with a breed  
final imageId = imageId_example; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    api_instance.imagesImageIdBreedsPost(xApiKey, imageId, contentType, body);
} catch (e) {
    print('Exception when calling ImagesApi->imagesImageIdBreedsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**| - for now, you can only tag your own images with a breed   | 
 **imageId** | **String**|  | 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesImageIdDelete**
> imagesImageIdDelete(imageId, contentType, xApiKey)

/images/:image_id

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final imageId = dMsUj1-nz; // String | 
final contentType = application/json; // String | 
final xApiKey = {{YOUR-API-KEY}}; // String | 

try {
    api_instance.imagesImageIdDelete(imageId, contentType, xApiKey);
} catch (e) {
    print('Exception when calling ImagesApi->imagesImageIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageId** | **String**|  | 
 **contentType** | **String**|  | [optional] 
 **xApiKey** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesSearchGet**
> Object imagesSearchGet(contentType, xApiKey, size, mimeTypes, format, hasBreeds, order, page, limit)

/images/search

Searchs all approved images. Default is to reutrn RANDOM images, but with an API-Key you can use 'order=DESC' or 'order=ASC' along with the 'page' and 'limit' parameters to paginate through them in the order they were approved.  Pagination-Count, Pagination-Page, and Pagination-Limit headers are present in the response so you know the total number of images that can be paginated through for the passed search filters.

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final contentType = application/json; // String | 
final xApiKey = {{YOUR-API-KEY}}; // String | [optional] without it only the a basic set of images can be searched
final size = med; // String | [optional] thumb , small, med or full - small is perfect for Discord
final mimeTypes = jpg; // String | [optional] a comma separated strig of types to return e.g. jpg,png for static, or gif for gifs
final format = json; // String | [optional] json | src
final hasBreeds = true; // bool | [optional] - only return images with breed data
final order = RANDOM; // String | [optional] default:RANDOM - RANDOM | ASC | DESC
final page = 0; // int | [optional] paginate through results
final limit = 1; // int | [optional] number of results to return, up to 25 with a valid API-Key

try {
    final result = api_instance.imagesSearchGet(contentType, xApiKey, size, mimeTypes, format, hasBreeds, order, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->imagesSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**|  | [optional] 
 **xApiKey** | **String**| [optional] without it only the a basic set of images can be searched | [optional] 
 **size** | **String**| [optional] thumb , small, med or full - small is perfect for Discord | [optional] 
 **mimeTypes** | **String**| [optional] a comma separated strig of types to return e.g. jpg,png for static, or gif for gifs | [optional] 
 **format** | **String**| [optional] json | src | [optional] 
 **hasBreeds** | **bool**| [optional] - only return images with breed data | [optional] 
 **order** | **String**| [optional] default:RANDOM - RANDOM | ASC | DESC | [optional] 
 **page** | **int**| [optional] paginate through results | [optional] 
 **limit** | **int**| [optional] number of results to return, up to 25 with a valid API-Key | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesUploadPost**
> Object imagesUploadPost(xApiKey, contentType, file, subId, breedIds)

/images/upload

Make sure you're using the right field to send the image, and Content-Type header

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = ImagesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | - saves the uploaded image to your account.
final contentType = multipart/form-data; // String | 
final file = BINARY_DATA_HERE; // MultipartFile | 
final subId = subId_example; // String | [optional] - a string you can use to segment your images, e.g. knowing which of your own users uploaded it.
final breedIds = breedIds_example; // String | [optional] comma separated string of breed ids contained in the image

try {
    final result = api_instance.imagesUploadPost(xApiKey, contentType, file, subId, breedIds);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->imagesUploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**| - saves the uploaded image to your account. | 
 **contentType** | **String**|  | [optional] 
 **file** | **MultipartFile**|  | [optional] 
 **subId** | **String**| [optional] - a string you can use to segment your images, e.g. knowing which of your own users uploaded it. | [optional] 
 **breedIds** | **String**| [optional] comma separated string of breed ids contained in the image | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

