# sparkworks_client.UnitAPIApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_unit**](UnitAPIApi.md#create_unit) | **POST** /v2/unit | Create a Unit
[**create_unit_conversion**](UnitAPIApi.md#create_unit_conversion) | **POST** /v2/conversion | Create a Unit Conversion
[**delete_unit**](UnitAPIApi.md#delete_unit) | **DELETE** /v2/unit/{uuid} | Delete a Unit by its UUID
[**delete_unit_conversion**](UnitAPIApi.md#delete_unit_conversion) | **DELETE** /v2/conversion/{uuid} | Delete a Unit Conversion by its UUID
[**get_unit_by_u_uid**](UnitAPIApi.md#get_unit_by_u_uid) | **GET** /v2/unit/{uuid} | Retrieve a Unit by its UUID
[**get_unit_conversion_by_u_uid**](UnitAPIApi.md#get_unit_conversion_by_u_uid) | **GET** /v2/conversion/{uuid} | Retrieve a Unit Conversion by its UUID
[**list_all_unit_conversions**](UnitAPIApi.md#list_all_unit_conversions) | **GET** /v2/conversion | Retrieve a collection of Unit Conversions
[**list_all_units**](UnitAPIApi.md#list_all_units) | **GET** /v2/unit | Retrieve a collection of Units
[**query_unit_conversions**](UnitAPIApi.md#query_unit_conversions) | **POST** /v2/conversion/query | Retrieve a List of Unit Conversions by a query
[**query_units**](UnitAPIApi.md#query_units) | **POST** /v2/unit/query | Retrieve a Unit by a query
[**update_unit**](UnitAPIApi.md#update_unit) | **POST** /v2/unit/{uuid} | Update Unit


# **create_unit**
> UnitDTO create_unit(unit_create_dto)

Create a Unit

A Spark Works Accounts authenticated user is able to create a Unit. 

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
unit_create_dto = sparkworks_client.UnitCreateDTO() # UnitCreateDTO | Unit Creation API Model

try:
    # Create a Unit
    api_response = api_instance.create_unit(unit_create_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->create_unit: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_create_dto** | [**UnitCreateDTO**](UnitCreateDTO.md)| Unit Creation API Model | 

### Return type

[**UnitDTO**](UnitDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
unit_conversion_create_dto = sparkworks_client.UnitConversionCreateDTO() # UnitConversionCreateDTO | Unit Conversion Create API Model

try:
    # Create a Unit Conversion
    api_response = api_instance.create_unit_conversion(unit_conversion_create_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->create_unit_conversion: %s\n" % e)
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

# **delete_unit**
> delete_unit(uuid)

Delete a Unit by its UUID

A Spark Works Accounts authenticated user is able to delete a Unit by its UUID.

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Unit UUID

try:
    # Delete a Unit by its UUID
    api_instance.delete_unit(uuid)
except ApiException as e:
    print("Exception when calling UnitAPIApi->delete_unit: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Unit UUID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
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
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Unit Conversion UUID

try:
    # Delete a Unit Conversion by its UUID
    api_instance.delete_unit_conversion(uuid)
except ApiException as e:
    print("Exception when calling UnitAPIApi->delete_unit_conversion: %s\n" % e)
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

# **get_unit_by_u_uid**
> UnitDTO get_unit_by_u_uid(uuid)

Retrieve a Unit by its UUID

A Spark Works Accounts authenticated common user is able to retrieve a Unit that has permissions on by its UUID. An administrator is able to get any Unit by its UUID.

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Unit UUID

try:
    # Retrieve a Unit by its UUID
    api_response = api_instance.get_unit_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->get_unit_by_u_uid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Unit UUID | 

### Return type

[**UnitDTO**](UnitDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_unit_conversion_by_u_uid**
> UnitConversionDTO get_unit_conversion_by_u_uid(uuid)

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
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Unit Conversion UUID

try:
    # Retrieve a Unit Conversion by its UUID
    api_response = api_instance.get_unit_conversion_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->get_unit_conversion_by_u_uid: %s\n" % e)
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

# **list_all_unit_conversions**
> list[UnitConversionDTO] list_all_unit_conversions()

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
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))

try:
    # Retrieve a collection of Unit Conversions
    api_response = api_instance.list_all_unit_conversions()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->list_all_unit_conversions: %s\n" % e)
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

# **list_all_units**
> list[UnitDTO] list_all_units()

Retrieve a collection of Units

A Spark Works Accounts authenticated user is able to retrieve all of the Platform Units. 

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))

try:
    # Retrieve a collection of Units
    api_response = api_instance.list_all_units()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->list_all_units: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[UnitDTO]**](UnitDTO.md)

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
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
unit_conversion_query_dto = sparkworks_client.UnitConversionQueryDTO() # UnitConversionQueryDTO | Unit Conversion Query API Model

try:
    # Retrieve a List of Unit Conversions by a query
    api_response = api_instance.query_unit_conversions(unit_conversion_query_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->query_unit_conversions: %s\n" % e)
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

# **query_units**
> UnitDTO query_units(unit_query_dto)

Retrieve a Unit by a query

A Spark Works Accounts authenticated user is able to retrieve a Unit. 

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
unit_query_dto = sparkworks_client.UnitQueryDTO() # UnitQueryDTO | Unit Query API Model

try:
    # Retrieve a Unit by a query
    api_response = api_instance.query_units(unit_query_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->query_units: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_query_dto** | [**UnitQueryDTO**](UnitQueryDTO.md)| Unit Query API Model | 

### Return type

[**UnitDTO**](UnitDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_unit**
> UnitDTO update_unit(uuid, update_dto)

Update Unit

A Spark Works Accounts administrator is able to update a Unit by its UUID.

### Example
```python
from __future__ import print_function
import time
import sparkworks_client
from sparkworks_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = sparkworks_client.UnitAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Unit UUID
update_dto = sparkworks_client.UnitUpdateDTO() # UnitUpdateDTO | updateDTO

try:
    # Update Unit
    api_response = api_instance.update_unit(uuid, update_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UnitAPIApi->update_unit: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Unit UUID | 
 **update_dto** | [**UnitUpdateDTO**](UnitUpdateDTO.md)| updateDTO | 

### Return type

[**UnitDTO**](UnitDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

