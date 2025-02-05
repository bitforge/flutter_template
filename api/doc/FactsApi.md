# catfacts.api.FactsApi

## Load the API package
```dart
import 'package:catfacts/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFacts**](FactsApi.md#getfacts) | **GET** /facts | Get a list of facts
[**getRandomFact**](FactsApi.md#getrandomfact) | **GET** /fact | Get Random Fact


# **getFacts**
> List<CatFact> getFacts(maxLength, limit)

Get a list of facts

Returns a a list of facts

### Example
```dart
import 'package:catfacts/api.dart';

final api = Catfacts().getFactsApi();
final int maxLength = 789; // int | maximum length of returned fact
final int limit = 789; // int | limit the amount of results returned

try {
    final response = api.getFacts(maxLength, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FactsApi->getFacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int**| maximum length of returned fact | [optional] 
 **limit** | **int**| limit the amount of results returned | [optional] 

### Return type

[**List&lt;CatFact&gt;**](CatFact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomFact**
> CatFact getRandomFact(maxLength)

Get Random Fact

Returns a random fact

### Example
```dart
import 'package:catfacts/api.dart';

final api = Catfacts().getFactsApi();
final int maxLength = 789; // int | maximum length of returned fact

try {
    final response = api.getRandomFact(maxLength);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FactsApi->getRandomFact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int**| maximum length of returned fact | [optional] 

### Return type

[**CatFact**](CatFact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

