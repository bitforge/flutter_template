# telefonapi.api.HealthApi

## Load the API package
```dart
import 'package:telefonapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkHealth**](HealthApi.md#checkhealth) | **GET** /health | Checks API health.


# **checkHealth**
> HealthResponse checkHealth()

Checks API health.

### Example
```dart
import 'package:telefonapi/api.dart';

final api = Telefonapi().getHealthApi();

try {
    final response = api.checkHealth();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->checkHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthResponse**](HealthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

