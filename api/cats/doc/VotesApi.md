# cats_api.api.VotesApi

## Load the API package
```dart
import 'package:cats_api/api.dart';
```

All URIs are relative to *https://api.thecatapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voteVoteIdDelete**](VotesApi.md#votevoteiddelete) | **DELETE** /vote/{vote_id} | /votes/:vote_id
[**votesGet**](VotesApi.md#votesget) | **GET** /votes | /votes
[**votesPost**](VotesApi.md#votespost) | **POST** /votes | /votes
[**votesVoteIdGet**](VotesApi.md#votesvoteidget) | **GET** /votes/{vote_id} | /votes/:vote_id


# **voteVoteIdDelete**
> voteVoteIdDelete(xApiKey, voteId, contentType)

/votes/:vote_id

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = VotesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final voteId = voteId_example; // String | 
final contentType = application/json; // String | 

try {
    api_instance.voteVoteIdDelete(xApiKey, voteId, contentType);
} catch (e) {
    print('Exception when calling VotesApi->voteVoteIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**|  | 
 **voteId** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **votesGet**
> Object votesGet(xApiKey, contentType)

/votes

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = VotesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final contentType = application/json; // String | 

try {
    final result = api_instance.votesGet(xApiKey, contentType);
    print(result);
} catch (e) {
    print('Exception when calling VotesApi->votesGet: $e\n');
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

# **votesPost**
> Object votesPost(xApiKey, contentType, body)

/votes

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = VotesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final contentType = application/json; // String | 
final body = Object(); // Object | 

try {
    final result = api_instance.votesPost(xApiKey, contentType, body);
    print(result);
} catch (e) {
    print('Exception when calling VotesApi->votesPost: $e\n');
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

# **votesVoteIdGet**
> votesVoteIdGet(xApiKey, voteId, contentType)

/votes/:vote_id

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = VotesApi();
final xApiKey = {{YOUR-API-KEY}}; // String | 
final voteId = voteId_example; // String | 
final contentType = application/json; // String | 

try {
    api_instance.votesVoteIdGet(xApiKey, voteId, contentType);
} catch (e) {
    print('Exception when calling VotesApi->votesVoteIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String**|  | 
 **voteId** | **String**|  | 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

