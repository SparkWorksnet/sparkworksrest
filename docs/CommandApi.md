# sparkworks_client.CommandApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_command**](CommandApi.md#send_command) | **POST** /v2/command/{uuid} | Send a command to a SparkWorks Actuator Resource


# **send_command**
> CommandAPIModel send_command(uuid, command_dto)

Send a command to a SparkWorks Actuator Resource

A Spark Works Accounts authorized user is able to send a command to a Spark Works Actuator Resource by its unique identifier. An administrator is able to send a command to any Actuator Resource of the platform

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
api_instance = sparkworks_client.CommandApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The unique identifier of the Actuator Resource
command_dto = sparkworks_client.CommandAPIModel() # CommandAPIModel | commandDto

try:
    # Send a command to a SparkWorks Actuator Resource
    api_response = api_instance.send_command(uuid, command_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CommandApi->send_command: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The unique identifier of the Actuator Resource | 
 **command_dto** | [**CommandAPIModel**](CommandAPIModel.md)| commandDto | 

### Return type

[**CommandAPIModel**](CommandAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

