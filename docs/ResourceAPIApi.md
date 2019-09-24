# sparkworks_client.ResourceAPIApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**count_resourmvnces**](ResourceAPIApi.md#count_resourmvnces) | **GET** /v2/resource/count | Count Resources
[**create_resource**](ResourceAPIApi.md#create_resource) | **POST** /v2/resource | Create a new Resource
[**delete_resource**](ResourceAPIApi.md#delete_resource) | **DELETE** /v2/resource/{uuid} | Delete Resource by its UUID
[**move_resource**](ResourceAPIApi.md#move_resource) | **POST** /v2/resource/{uuid}/move/{targetUUID} | Move Resource by its UUID
[**query_resources**](ResourceAPIApi.md#query_resources) | **POST** /v2/resource/query | Retrieve a Resource by a query
[**retrieve_resource**](ResourceAPIApi.md#retrieve_resource) | **GET** /v2/resource/{uuid} | Retrieve a Spark Works Resource by its UUID
[**retrieve_resources**](ResourceAPIApi.md#retrieve_resources) | **GET** /v2/resource | Retrieve a collection of Resources
[**update_resource**](ResourceAPIApi.md#update_resource) | **POST** /v2/resource/{uuid} | Update Resource


# **count_resourmvnces**
> int count_resourmvnces()

Count Resources

A Spark Works Accounts authenticated common user is able to retrieve the number of Resources that has permissions on. An administrator is able to retrieve the number of all Resources.

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))

try:
    # Count Resources
    api_response = api_instance.count_resources()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->count_resourmvnces: %s\n" % e)
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

# **create_resource**
> ResourceDTO create_resource(resource_create_dto)

Create a new Resource

A Spark Works authenticated user is able to request a new Resource creation

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))
resource_create_dto = sparkworks_client.ResourceCreateDTO() # ResourceCreateDTO | Resource Creation API Model

try:
    # Create a new Resource
    api_response = api_instance.create_resource(resource_create_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->create_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_create_dto** | [**ResourceCreateDTO**](ResourceCreateDTO.md)| Resource Creation API Model | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_resource**
> delete_resource(uuid)

Delete Resource by its UUID

A Spark Works Accounts authenticated common user is able to remove a Spark Works Resource that has permissions on by its unique identifier. An administrator is able to remove any Resource of the platform

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Resource UUID

try:
    # Delete Resource by its UUID
    api_instance.delete_resource(uuid)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->delete_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Resource UUID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **move_resource**
> ResourceDTO move_resource(uuid, target_uuid)

Move Resource by its UUID

A Spark Works Accounts authenticated common user is able to move a Spark Works Resource that has permissions on by its unique identifierto a Spark Works Group that has permissions on. An administrator is able to move any Resource of the platform

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Resource UUID
target_uuid = 'target_uuid_example' # str | The Group UUID

try:
    # Move Resource by its UUID
    api_response = api_instance.move_resource(uuid, target_uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->move_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Resource UUID | 
 **target_uuid** | **str**| The Group UUID | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_resources**
> ResourceDTO query_resources(resource_query_dto)

Retrieve a Resource by a query

A Spark Works Accounts authenticated common user is able to retrieve a Resource that has permissions on by a query object. An administrator is able to get any Resource by a query object.

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))
resource_query_dto = sparkworks_client.ResourceQueryDTO() # ResourceQueryDTO | The Resource Query

try:
    # Retrieve a Resource by a query
    api_response = api_instance.query_resources(resource_query_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->query_resources: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_query_dto** | [**ResourceQueryDTO**](ResourceQueryDTO.md)| The Resource Query | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_resource**
> ResourceDTO retrieve_resource(uuid)

Retrieve a Spark Works Resource by its UUID

A Spark Works Accounts authenticated common user is able to retrieve a Resource, that has permissions on, by its UUID. An administrator is able to retrieve any Resource of the platform

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Resource UUID

try:
    # Retrieve a Spark Works Resource by its UUID
    api_response = api_instance.retrieve_resource(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->retrieve_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Resource UUID | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_resources**
> list[ResourceDTO] retrieve_resources()

Retrieve a collection of Resources

A Spark Works Accounts authenticated common user is able to retrieve all of the Platform resources that the user has permissions on. An administrator is able to query all of the platform resources

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))

try:
    # Retrieve a collection of Resources
    api_response = api_instance.retrieve_resources()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->retrieve_resources: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[ResourceDTO]**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_resource**
> ResourceDTO update_resource(uuid, resource_update_dto)

Update Resource

A Spark Works Accounts authenticated common user is able to update a Resource's values that has permission on. An administrator is able to update the values of any Resource.

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
api_instance = sparkworks_client.ResourceAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Group UUID
resource_update_dto = sparkworks_client.ResourceUpdateDTO() # ResourceUpdateDTO | resourceUpdateDTO

try:
    # Update Resource
    api_response = api_instance.update_resource(uuid, resource_update_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ResourceAPIApi->update_resource: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Group UUID | 
 **resource_update_dto** | [**ResourceUpdateDTO**](ResourceUpdateDTO.md)| resourceUpdateDTO | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

