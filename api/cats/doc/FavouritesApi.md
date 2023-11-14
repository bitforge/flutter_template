# cats_api.api.FavouritesApi

## Load the API package
```dart
import 'package:cats_api/api.dart';
```

All URIs are relative to *https://api.thecatapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**favouritesFavouriteIdDelete**](FavouritesApi.md#favouritesfavouriteiddelete) | **DELETE** /favourites/{favourite_id} | /favourites/:favourite_id
[**favouritesFavouriteIdGet**](FavouritesApi.md#favouritesfavouriteidget) | **GET** /favourites/{favourite_id} | /favourites/:favourite_id
[**favouritesGet**](FavouritesApi.md#favouritesget) | **GET** /favourites | /favourites
[**favouritesPost**](FavouritesApi.md#favouritespost) | **POST** /favourites | /favourites


# **favouritesFavouriteIdDelete**
> favouritesFavouriteIdDelete(xApiKey, favouriteId, contentType)

/favourites/:favourite_id

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = FavouritesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final favouriteId = favouriteId_example; // String | 
final contentType = application/json; // String | 

try {
    api_instance.favouritesFavouriteIdDelete(xApiKey, favouriteId, contentType);
} catch (e) {
    print('Exception when calling FavouritesApi->favouritesFavouriteIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**|  | 
 **favouriteId** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favouritesFavouriteIdGet**
> favouritesFavouriteIdGet(xApiKey, favouriteId, contentType)

/favourites/:favourite_id

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = FavouritesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final favouriteId = favouriteId_example; // String | 
final contentType = application/json; // String | 

try {
    api_instance.favouritesFavouriteIdGet(xApiKey, favouriteId, contentType);
} catch (e) {
    print('Exception when calling FavouritesApi->favouritesFavouriteIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**|  | 
 **favouriteId** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favouritesGet**
> Object favouritesGet(xApiKey, contentType)

/favourites

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = FavouritesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final contentType = application/json; // String | 

try {
    final result = api_instance.favouritesGet(xApiKey, contentType);
    print(result);
} catch (e) {
    print('Exception when calling FavouritesApi->favouritesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favouritesPost**
> Object favouritesPost(xApiKey, contentType, body)

/favourites

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = FavouritesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    final result = api_instance.favouritesPost(xApiKey, contentType, body);
    print(result);
} catch (e) {
    print('Exception when calling FavouritesApi->favouritesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**|  | 
 **contentType** | **String**|  | [optional] 
 **body** | **Object**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

