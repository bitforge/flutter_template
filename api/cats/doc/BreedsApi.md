# cats_api.api.BreedsApi

## Load the API package
```dart
import 'package:cats_api/api.dart';
```

All URIs are relative to *https://api.thecatapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**breedsBreedIdGet**](BreedsApi.md#breedsbreedidget) | **GET** /breeds/{breed_id} | /breeds/:breed_id
[**breedsGet**](BreedsApi.md#breedsget) | **GET** /breeds | /breeds
[**breedsSearchGet**](BreedsApi.md#breedssearchget) | **GET** /breeds/search | Search Breeds


# **breedsBreedIdGet**
> Object breedsBreedIdGet(breedId, contentType)

/breeds/:breed_id

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = BreedsApi();
final breedId = breedId_example; // String | 
final contentType = application/json; // String | 

try {
    final result = api_instance.breedsBreedIdGet(breedId, contentType);
    print(result);
} catch (e) {
    print('Exception when calling BreedsApi->breedsBreedIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breedId** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[noauthAuth](../README.md#noauthAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **breedsGet**
> Object breedsGet(contentType, limit, page)

/breeds

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = BreedsApi();
final contentType = application/json; // String | 
final limit = 10; // int | 
final page = 0; // int | 

try {
    final result = api_instance.breedsGet(contentType, limit, page);
    print(result);
} catch (e) {
    print('Exception when calling BreedsApi->breedsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **breedsSearchGet**
> Object breedsSearchGet(q, attachImage)

Search Breeds

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = BreedsApi();
final q = air; // String | search term for breed name
final attachImage = 1; // int | [optional] whether to attach the reference_image_id image or not

try {
    final result = api_instance.breedsSearchGet(q, attachImage);
    print(result);
} catch (e) {
    print('Exception when calling BreedsApi->breedsSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| search term for breed name | [optional] 
 **attachImage** | **int**| [optional] whether to attach the reference_image_id image or not | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

