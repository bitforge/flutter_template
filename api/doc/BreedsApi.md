# catfacts.api.BreedsApi

## Load the API package
```dart
import 'package:catfacts/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBreeds**](BreedsApi.md#getbreeds) | **GET** /breeds | Get a list of breeds


# **getBreeds**
> List<Breed> getBreeds(limit)

Get a list of breeds

Returns a a list of breeds

### Example
```dart
import 'package:catfacts/api.dart';

final api = Catfacts().getBreedsApi();
final int limit = 789; // int | limit the amount of results returned

try {
    final response = api.getBreeds(limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BreedsApi->getBreeds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| limit the amount of results returned | [optional] 

### Return type

[**List&lt;Breed&gt;**](Breed.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

