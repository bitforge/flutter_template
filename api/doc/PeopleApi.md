# telefonapi.api.PeopleApi

## Load the API package
```dart
import 'package:telefonapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPeople**](PeopleApi.md#getpeople) | **GET** /people | Gets all Baths.


# **getPeople**
> BuiltList<Person> getPeople()

Gets all Baths.

### Example
```dart
import 'package:telefonapi/api.dart';

final api = Telefonapi().getPeopleApi();

try {
    final response = api.getPeople();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PeopleApi->getPeople: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Person&gt;**](Person.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

