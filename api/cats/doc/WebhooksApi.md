# cats_api.api.WebhooksApi

## Load the API package
```dart
import 'package:cats_api/api.dart';
```

All URIs are relative to *https://api.thecatapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooksPost**](WebhooksApi.md#webhookspost) | **POST** /webhooks | Create Webhook


# **webhooksPost**
> Object webhooksPost(body)

Create Webhook

### Example
```dart
import 'package:cats_api/api.dart';

final api_instance = WebhooksApi();
final body = Object(); // Object | 

try {
    final result = api_instance.webhooksPost(body);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->webhooksPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apikeyAuth](../README.md#apikeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

