# sparkworks_client.PhenomenonApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_phenomenon**](PhenomenonApi.md#create_phenomenon) | **POST** /v2/phenomenon | Create a Phenomenon
[**delete_phenomenon**](PhenomenonApi.md#delete_phenomenon) | **DELETE** /v2/phenomenon/{uuid} | Delete a Phenomenon by its UUID
[**get_all_phenomena**](PhenomenonApi.md#get_all_phenomena) | **GET** /v2/phenomenon | Retrieve a collection of Phenomenons
[**get_phenomenon_by_uuid**](PhenomenonApi.md#get_phenomenon_by_uuid) | **GET** /v2/phenomenon/{uuid} | Retrieve a Phenomenon by its UUID
[**query_phenomena**](PhenomenonApi.md#query_phenomena) | **POST** /v2/phenomenon/query | Retrieve a Phenomenon by a query
[**update_phenomenon**](PhenomenonApi.md#update_phenomenon) | **POST** /v2/phenomenon/{uuid} | Update Phenomenon


# **create_phenomenon**
> PhenomenonDTO create_phenomenon(phenomenon_create_dto)

Create a Phenomenon

A Spark Works Accounts authenticated user is able to create a Phenomenon. 

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
api_instance = sparkworks_client.PhenomenonApi(sparkworks_client.ApiClient(configuration))
phenomenon_create_dto = sparkworks_client.PhenomenonCreateDTO() # PhenomenonCreateDTO | The Phenomenon Query

try:
    # Create a Phenomenon
    api_response = api_instance.create_phenomenon(phenomenon_create_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PhenomenonApi->create_phenomenon: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phenomenon_create_dto** | [**PhenomenonCreateDTO**](PhenomenonCreateDTO.md)| The Phenomenon Query | 

### Return type

[**PhenomenonDTO**](PhenomenonDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_phenomenon**
> delete_phenomenon(uuid)

Delete a Phenomenon by its UUID

A Spark Works Accounts authenticated user is able to delete a Phenomenon by its UUID.

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
api_instance = sparkworks_client.PhenomenonApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Phenomenon UUID

try:
    # Delete a Phenomenon by its UUID
    api_instance.delete_phenomenon(uuid)
except ApiException as e:
    print("Exception when calling PhenomenonApi->delete_phenomenon: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Phenomenon UUID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_phenomena**
> list[PhenomenonDTO] get_all_phenomena()

Retrieve a collection of Phenomenons

A Spark Works Accounts authenticated user is able to retrieve all of the Platform Phenomenons. 

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
api_instance = sparkworks_client.PhenomenonApi(sparkworks_client.ApiClient(configuration))

try:
    # Retrieve a collection of Phenomenons
    api_response = api_instance.get_all_phenomena()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PhenomenonApi->get_all_phenomena: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[PhenomenonDTO]**](PhenomenonDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_phenomenon_by_uuid**
> PhenomenonDTO get_phenomenon_by_uuid(uuid)

Retrieve a Phenomenon by its UUID

A Spark Works Accounts authenticated common user is able to retrieve a Phenomenon that has permissions on by its UUID. An administrator is able to get any Phenomenon by its UUID.

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
api_instance = sparkworks_client.PhenomenonApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Phenomenon UUID

try:
    # Retrieve a Phenomenon by its UUID
    api_response = api_instance.get_phenomenon_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PhenomenonApi->get_phenomenon_by_uuid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Phenomenon UUID | 

### Return type

[**PhenomenonDTO**](PhenomenonDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_phenomena**
> PhenomenonDTO query_phenomena(phenomenon_query_dto)

Retrieve a Phenomenon by a query

A Spark Works Accounts authenticated user is able to retrieve a Phenomenon. 

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
api_instance = sparkworks_client.PhenomenonApi(sparkworks_client.ApiClient(configuration))
phenomenon_query_dto = sparkworks_client.PhenomenonQueryDTO() # PhenomenonQueryDTO | The Phenomenon Query

try:
    # Retrieve a Phenomenon by a query
    api_response = api_instance.query_phenomena(phenomenon_query_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PhenomenonApi->query_phenomena: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phenomenon_query_dto** | [**PhenomenonQueryDTO**](PhenomenonQueryDTO.md)| The Phenomenon Query | 

### Return type

[**PhenomenonDTO**](PhenomenonDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_phenomenon**
> PhenomenonDTO update_phenomenon(uuid, update_dto)

Update Phenomenon

A Spark Works Accounts administrator is able to update a Phenomenon by its UUID.

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
api_instance = sparkworks_client.PhenomenonApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Phenomenon UUID
update_dto = sparkworks_client.PhenomenonUpdateDTO() # PhenomenonUpdateDTO | updateDTO

try:
    # Update Phenomenon
    api_response = api_instance.update_phenomenon(uuid, update_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PhenomenonApi->update_phenomenon: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Phenomenon UUID | 
 **update_dto** | [**PhenomenonUpdateDTO**](PhenomenonUpdateDTO.md)| updateDTO | 

### Return type

[**PhenomenonDTO**](PhenomenonDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

