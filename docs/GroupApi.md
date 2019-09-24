# sparkworks_client.GroupApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**count_groups**](GroupApi.md#count_groups) | **GET** /v2/group/count | Count Groups
[**create_group**](GroupApi.md#create_group) | **POST** /v2/group | Create a new Group
[**delete_group_branch**](GroupApi.md#delete_group_branch) | **DELETE** /v2/group/{uuid} | Delete Group branch by the Group UUID
[**get_all_groups**](GroupApi.md#get_all_groups) | **GET** /v2/group | Retrieve a collection of Groups
[**get_group_by_uuid**](GroupApi.md#get_group_by_uuid) | **GET** /v2/group/{uuid} | Retrieve a Group by its UUID
[**get_group_gateways**](GroupApi.md#get_group_gateways) | **GET** /v2/group/{uuid}/gateway | Get the Gateways of a Group by the Group UUID
[**get_group_resources**](GroupApi.md#get_group_resources) | **GET** /v2/group/{uuid}/resource | Get the Resources of a Group by the Group UUID
[**get_main_level_groups**](GroupApi.md#get_main_level_groups) | **GET** /v2/group/main | List the main level Groups
[**get_subgroups**](GroupApi.md#get_subgroups) | **GET** /v2/group/{uuid}/subgroup/{depth} | Get the Subgroups of a Group by the Group UUID
[**move_group_branch**](GroupApi.md#move_group_branch) | **POST** /v2/group/move/{sourceUUID}/{targetUUID} | Move Group Branch
[**update_group**](GroupApi.md#update_group) | **POST** /v2/group/{uuid} | Update Group


# **count_groups**
> int count_groups()

Count Groups

A Spark Works Accounts authenticated common user is able to retrieve the number of Groups that has permissions on. An administrator is able to retrieve the number of all Groups.

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))

try:
    # Count Groups
    api_response = api_instance.count_groups()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->count_groups: %s\n" % e)
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

# **create_group**
> GroupDTO create_group(group_create_dto)

Create a new Group

A Spark Works authenticated user is able to request a new Group creation

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
group_create_dto = sparkworks_client.GroupCreateDTO() # GroupCreateDTO | Group Creation API Model

try:
    # Create a new Group
    api_response = api_instance.create_group(group_create_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->create_group: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_create_dto** | [**GroupCreateDTO**](GroupCreateDTO.md)| Group Creation API Model | 

### Return type

[**GroupDTO**](GroupDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group_branch**
> delete_group_branch(uuid)

Delete Group branch by the Group UUID

A Spark Works Accounts authenticated common user is able to remove a Spark Works Group branch that has permissions on by its UUID. An administrator is able to remove any Group branch of the platform

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Group UUID

try:
    # Delete Group branch by the Group UUID
    api_instance.delete_group_branch(uuid)
except ApiException as e:
    print("Exception when calling GroupApi->delete_group_branch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Group UUID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_groups**
> list[GroupDTO] get_all_groups()

Retrieve a collection of Groups

A Spark Works Accounts authenticated common user is able to retrieve all of the Platform Groups that has permissions on. An administrator is able to query all of the platform Groups

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))

try:
    # Retrieve a collection of Groups
    api_response = api_instance.get_all_groups()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->get_all_groups: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[GroupDTO]**](GroupDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_by_uuid**
> GroupDTO get_group_by_uuid(uuid)

Retrieve a Group by its UUID

A Spark Works Accounts authenticated common user is able to retrieve a Group that has permissions on by its UUID. An administrator is able to get any Group by its UUID.

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Group UUID

try:
    # Retrieve a Group by its UUID
    api_response = api_instance.get_group_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->get_group_by_uuid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Group UUID | 

### Return type

[**GroupDTO**](GroupDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_gateways**
> list[GatewayDTO] get_group_gateways(uuid)

Get the Gateways of a Group by the Group UUID

A Spark Works Accounts authenticated common user is able to retrieve the Gateways of Group that has permissions on by its UUID. An administrator is able to retrieve the Gateways of any Group.

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Group UUID

try:
    # Get the Gateways of a Group by the Group UUID
    api_response = api_instance.get_group_gateways(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->get_group_gateways: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Group UUID | 

### Return type

[**list[GatewayDTO]**](GatewayDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_resources**
> list[ResourceDTO] get_group_resources(uuid)

Get the Resources of a Group by the Group UUID

A Spark Works Accounts authenticated common user is able to retrieve the Resources of Group that has permissions on by its UUID. An administrator is able to retrieve the Resources of any Group.

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Group UUID

try:
    # Get the Resources of a Group by the Group UUID
    api_response = api_instance.get_group_resources(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->get_group_resources: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Group UUID | 

### Return type

[**list[ResourceDTO]**](ResourceDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_main_level_groups**
> list[GroupDTO] get_main_level_groups()

List the main level Groups

A Spark Works Accounts authenticated common user is able to list the Groups of main level that has permissions on. An administrator is able to list all the Groups of main level.

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))

try:
    # List the main level Groups
    api_response = api_instance.get_main_level_groups()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->get_main_level_groups: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[GroupDTO]**](GroupDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_subgroups**
> list[GroupDTO] get_subgroups(uuid, depth)

Get the Subgroups of a Group by the Group UUID

A Spark Works Accounts authenticated common user is able to retrieve the Subgroups of Group that has permissions on by its UUID. An administrator is able to retrieve the Subgroups of any Group.

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Group UUID
depth = 56 # int | depth

try:
    # Get the Subgroups of a Group by the Group UUID
    api_response = api_instance.get_subgroups(uuid, depth)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->get_subgroups: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Group UUID | 
 **depth** | **int**| depth | 

### Return type

[**list[GroupDTO]**](GroupDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **move_group_branch**
> move_group_branch(source_uuid, target_uuid)

Move Group Branch

A Spark Works Accounts authenticated common user is able to move a Spark Works Group branch that has permissions on under another Group that has permissions on. An administrator is able to move any Group of the platform under any other Group

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
source_uuid = 'source_uuid_example' # str | The source Group UUID
target_uuid = 'target_uuid_example' # str | The target Group UUID

try:
    # Move Group Branch
    api_instance.move_group_branch(source_uuid, target_uuid)
except ApiException as e:
    print("Exception when calling GroupApi->move_group_branch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_uuid** | **str**| The source Group UUID | 
 **target_uuid** | **str**| The target Group UUID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group**
> GroupDTO update_group(uuid, group_update_dto)

Update Group

A Spark Works Accounts authenticated common user is able to update a Group's values that has permission on. An administrator is able to update the values of any Group.

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
api_instance = sparkworks_client.GroupApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The Group UUID
group_update_dto = sparkworks_client.GroupUpdateDTO() # GroupUpdateDTO | groupUpdateDTO

try:
    # Update Group
    api_response = api_instance.update_group(uuid, group_update_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GroupApi->update_group: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The Group UUID | 
 **group_update_dto** | [**GroupUpdateDTO**](GroupUpdateDTO.md)| groupUpdateDTO | 

### Return type

[**GroupDTO**](GroupDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

