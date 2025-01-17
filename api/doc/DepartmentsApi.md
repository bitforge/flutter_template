# telefonapi.api.DepartmentsApi

## Load the API package
```dart
import 'package:telefonapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDepartments**](DepartmentsApi.md#getdepartments) | **GET** /departments | Gets all Departments.


# **getDepartments**
> List<Dept> getDepartments()

Gets all Departments.

### Example
```dart
import 'package:telefonapi/api.dart';

final api = Telefonapi().getDepartmentsApi();

try {
    final response = api.getDepartments();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DepartmentsApi->getDepartments: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Dept&gt;**](Dept.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

