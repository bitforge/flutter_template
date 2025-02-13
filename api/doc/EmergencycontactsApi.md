# telefonapi.api.EmergencycontactsApi

## Load the API package
```dart
import 'package:telefonapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmergencyContacts**](EmergencycontactsApi.md#getemergencycontacts) | **GET** /emergencycontacts | Gets all Departments.


# **getEmergencyContacts**
> BuiltList<EmergencyContact> getEmergencyContacts()

Gets all Departments.

### Example
```dart
import 'package:telefonapi/api.dart';

final api = Telefonapi().getEmergencycontactsApi();

try {
    final response = api.getEmergencyContacts();
    print(response);
} catch on DioException (e) {
    print('Exception when calling EmergencycontactsApi->getEmergencyContacts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;EmergencyContact&gt;**](EmergencyContact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

