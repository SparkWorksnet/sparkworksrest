# sparkworks_client.UnitConversionApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_unit_conversion**](UnitConversionApi.md#create_unit_conversion) | **POST** /v2/conversion | Create a Unit Conversion
[**delete_unit_conversion**](UnitConversionApi.md#delete_unit_conversion) | **DELETE** /v2/conversion/{uuid} | Delete a Unit Conversion by its UUID
[**get_all_unit_conversions**](UnitConversionApi.md#get_all_unit_conversions) | **GET** /v2/conversion | Retrieve a collection of Unit Conversions
[**get_unit_conversion_by_uuid**](UnitConversionApi.md#get_unit_conversion_by_uuid) | **GET** /v2/conversion/{uuid} | Retrieve a Unit Conversion by its UUID
[**query_unit_conversions**](UnitConversionApi.md#query_unit_conversions) | **POST** /v2/conversion/query | Retrieve a List of Unit Conversions by a query


# **create_unit_conversion**
> UnitConversionDTO create_unit_conversion(unit_conversion_create_dto)

Create a Unit Conversion

A Spark Works Accounts authenticated user is able to create a Unit Conversion. 

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()

# create an instance of the API class
api_instance = sparkworks_client.UnitConversionApi(sparkworks_client.ApiClient(configuration))
unit_conversion_create_dto = sparkworks_client.UnitConversionCreateDTO() # UnitConversionCreateDTO | Unit Conversion Create API Model

try:
    # Create a Unit Conversion
    api_response = api_instance.create_unit_conversion(unit_conversion_create_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitConversionApi->create_unit_conversion: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_conversion_create_dto** | [**UnitConversionCreateDTO**](UnitConversionCreateDTO.md)| Unit Conversion Create API Model | 

### Return type

[**UnitConversionDTO**](UnitConversionDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_unit_conversion**
> delete_unit_conversion(uuid)

Delete a Unit Conversion by its UUID

A Spark Works Accounts authenticated user is able to delete a Unit Conversion by its UUID.

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()

# create an instance of the API class
api_instance = sparkworks_client.UnitConversionApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Unit Conversion UUID

try:
    # Delete a Unit Conversion by its UUID
    api_instance.delete_unit_conversion(uuid)
except ApiException as e:
    print("Exception when calling UnitConversionApi->delete_unit_conversion: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Unit Conversion UUID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_unit_conversions**
> list[UnitConversionDTO] get_all_unit_conversions()

Retrieve a collection of Unit Conversions

A Spark Works Accounts authenticated user is able to retrieve all of the Platform Unit Conversions. 

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()

# create an instance of the API class
api_instance = sparkworks_client.UnitConversionApi(sparkworks_client.ApiClient(configuration))

try:
    # Retrieve a collection of Unit Conversions
    api_response = api_instance.get_all_unit_conversions()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitConversionApi->get_all_unit_conversions: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[UnitConversionDTO]**](UnitConversionDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_unit_conversion_by_uuid**
> UnitConversionDTO get_unit_conversion_by_uuid(uuid)

Retrieve a Unit Conversion by its UUID

A Spark Works Accounts authenticated user is able to retrieve a Unit Conversion.

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()

# create an instance of the API class
api_instance = sparkworks_client.UnitConversionApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Unit Conversion UUID

try:
    # Retrieve a Unit Conversion by its UUID
    api_response = api_instance.get_unit_conversion_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitConversionApi->get_unit_conversion_by_uuid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Unit Conversion UUID | 

### Return type

[**UnitConversionDTO**](UnitConversionDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_unit_conversions**
> list[UnitConversionDTO] query_unit_conversions(unit_conversion_query_dto)

Retrieve a List of Unit Conversions by a query

A Spark Works Accounts authenticated user is able to retrieve a List of Unit Conversion.

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()

# create an instance of the API class
api_instance = sparkworks_client.UnitConversionApi(sparkworks_client.ApiClient(configuration))
unit_conversion_query_dto = sparkworks_client.UnitConversionQueryDTO() # UnitConversionQueryDTO | Unit Conversion Query API Model

try:
    # Retrieve a List of Unit Conversions by a query
    api_response = api_instance.query_unit_conversions(unit_conversion_query_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitConversionApi->query_unit_conversions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_conversion_query_dto** | [**UnitConversionQueryDTO**](UnitConversionQueryDTO.md)| Unit Conversion Query API Model | 

### Return type

[**list[UnitConversionDTO]**](UnitConversionDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

