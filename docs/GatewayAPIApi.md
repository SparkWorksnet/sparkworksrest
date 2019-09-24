# sparkworks_client.GatewayAPIApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**count_gateways**](GatewayAPIApi.md#count_gateways) | **GET** /v2/gateway/count | Count Gateways
[**create_gateway**](GatewayAPIApi.md#create_gateway) | **POST** /v2/gateway | Create a new Gateway
[**delete_gateway**](GatewayAPIApi.md#delete_gateway) | **DELETE** /v2/gateway/{uuid} | Delete Gateway by its UUID
[**get_gateway_resources**](GatewayAPIApi.md#get_gateway_resources) | **GET** /v2/gateway/{uuid}/resource | Get the Resources of a Gateway by the Gateway UUID
[**query_gateways**](GatewayAPIApi.md#query_gateways) | **POST** /v2/gateway/query | Retrieve a Gateway by a query
[**retrieve_gateways**](GatewayAPIApi.md#retrieve_gateways) | **GET** /v2/gateway/{uuid} | Retrieve a Gateway by its UUID
[**retrieve_gateways1**](GatewayAPIApi.md#retrieve_gateways1) | **GET** /v2/gateway | Retrieve a collection of Gateways


# **count_gateways**
> int count_gateways()

Count Gateways

A Spark Works Accounts authenticated common user is able to retrieve the number of Gateways that has permissions on. An administrator is able to retrieve the number of all Gateways.

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
api_instance = sparkworks_client.GatewayAPIApi(sparkworks_client.ApiClient(configuration))

try:
    # Count Gateways
    api_response = api_instance.count_gateways()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GatewayAPIApi->count_gateways: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**int**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_gateway**
> GatewayDTO create_gateway(gateway_create_dto)

Create a new Gateway

A Spark Works authenticated user is able to request a new Gateway creation

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
api_instance = sparkworks_client.GatewayAPIApi(sparkworks_client.ApiClient(configuration))
gateway_create_dto = sparkworks_client.GatewayCreateDTO() # GatewayCreateDTO | Gateway Creation API Model

try:
    # Create a new Gateway
    api_response = api_instance.create_gateway(gateway_create_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GatewayAPIApi->create_gateway: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway_create_dto** | [**GatewayCreateDTO**](GatewayCreateDTO.md)| Gateway Creation API Model | 

### Return type

[**GatewayDTO**](GatewayDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_gateway**
> delete_gateway(uuid)

Delete Gateway by its UUID

A Spark Works Accounts authenticated common user is able to remove a Spark Works Gateway that has permissions on by its unique identifier. An administrator is able to remove any Gateway of the platform

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
api_instance = sparkworks_client.GatewayAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Gateway UUID

try:
    # Delete Gateway by its UUID
    api_instance.delete_gateway(uuid)
except ApiException as e:
    print("Exception when calling GatewayAPIApi->delete_gateway: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Gateway UUID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_gateway_resources**
> list[ResourceDTO] get_gateway_resources(uuid)

Get the Resources of a Gateway by the Gateway UUID

A Spark Works Accounts authenticated common user is able to retrieve the Resources of Gateway that has permissions on by its UUID. An administrator is able to retrieve the Resources of any Gateway.

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
api_instance = sparkworks_client.GatewayAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Gateway UUID

try:
    # Get the Resources of a Gateway by the Gateway UUID
    api_response = api_instance.get_gateway_resources(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GatewayAPIApi->get_gateway_resources: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Gateway UUID | 

### Return type

[**list[ResourceDTO]**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_gateways**
> GatewayDTO query_gateways(gateway_query)

Retrieve a Gateway by a query

A Spark Works Accounts authenticated common user is able to retrieve a Gateway that has permissions on by a query object. An administrator is able to get any Gateway by a query object.

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
api_instance = sparkworks_client.GatewayAPIApi(sparkworks_client.ApiClient(configuration))
gateway_query = sparkworks_client.GatewayQueryDTO() # GatewayQueryDTO | The Gateway Query

try:
    # Retrieve a Gateway by a query
    api_response = api_instance.query_gateways(gateway_query)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GatewayAPIApi->query_gateways: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway_query** | [**GatewayQueryDTO**](GatewayQueryDTO.md)| The Gateway Query | 

### Return type

[**GatewayDTO**](GatewayDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_gateways**
> GatewayDTO retrieve_gateways(uuid)

Retrieve a Gateway by its UUID

A Spark Works Accounts authenticated common user is able to retrieve a Gateway that has permissions on by its UUID. An administrator is able to get any Gateway by its UUID.

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
api_instance = sparkworks_client.GatewayAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Gateway UUID

try:
    # Retrieve a Gateway by its UUID
    api_response = api_instance.retrieve_gateway_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GatewayAPIApi->retrieve_gateways: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Gateway UUID | 

### Return type

[**GatewayDTO**](GatewayDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_gateways1**
> list[GatewayDTO] retrieve_gateways1()

Retrieve a collection of Gateways

A Spark Works Accounts authenticated common user is able to retrieve all of the Platform Gateways that has permissions on. An administrator is able to query all of the platform Gateways

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
api_instance = sparkworks_client.GatewayAPIApi(sparkworks_client.ApiClient(configuration))

try:
    # Retrieve a collection of Gateways
    api_response = api_instance.retrieve_gateways()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GatewayAPIApi->retrieve_gateways1: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[GatewayDTO]**](GatewayDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

