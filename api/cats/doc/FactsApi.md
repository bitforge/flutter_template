# cats_api.api.FactsApi

## Load the API package
```dart
import 'package:cats_api/api.dart';
```

All URIs are relative to *https://api.thecatapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**breedsBreedIdFactsGet**](FactsApi.md#breedsbreedidfactsget) | **GET** /breeds/{breed_id}/facts | Get Ordered Fact(s) About Breed
[**factsGet**](FactsApi.md#factsget) | **GET** /facts | Get Random Fact(s)


# **breedsBreedIdFactsGet**
> Object breedsBreedIdFactsGet(breedId, limit, page, order)

Get Ordered Fact(s) About Breed

Get one or more facts about the Species. For more at a time just update the 'limit' field, and to paginate through them just increment the 'page' field.  The response headers have the pagination details, such as how many there are in total, what page you're on, and the current amount per page.  To redorder change the order to ASC for ascending order, DESC for descending, and RAND for random order.

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = FactsApi();
final breedId = ragd; // String | 
final limit = 5; // int | 
final page = 0; // int | 
final order = ASC; // String | 

try {
    final result = api_instance.breedsBreedIdFactsGet(breedId, limit, page, order);
    print(result);
} catch (e) {
    print('Exception when calling FactsApi->breedsBreedIdFactsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breedId** | **String**|  | 
 **limit** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **order** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **factsGet**
> Object factsGet()

Get Random Fact(s)

Get one or more Random facts and the Species. For more at a time just update the 'limit' field

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = FactsApi();

try {
    final result = api_instance.factsGet();
    print(result);
} catch (e) {
    print('Exception when calling FactsApi->factsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

