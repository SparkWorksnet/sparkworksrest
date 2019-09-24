# sparkworks_client.RegistryApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query_registry**](RegistryApi.md#query_registry) | **POST** /v2/registry/query | Query the Registry Service to retrieve a collection of Resources records with their last read value and timestamp by their UUID


# **query_registry**
> list[RegistryRecordDTO] query_registry(uuids)

Query the Registry Service to retrieve a collection of Resources records with their last read value and timestamp by their UUID

A Spark Works Accounts authenticated common user is able to retrieve all of the Platform Resource info that has permissions on. An administrator is able to query all of the platform Resources

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
api_instance = sparkworks_client.RegistryApi(sparkworks_client.ApiClient(configuration))
uuids = [sparkworks_client.list[str]()] # list[str] | uuids

try:
    # Query the Registry Service to retrieve a collection of Resources records with their last read value and timestamp by their UUID
    api_response = api_instance.query_registry(uuids)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling RegistryApi->query_registry: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuids** | **list[str]**| uuids | 

### Return type

[**list[RegistryRecordDTO]**](RegistryRecordDTO.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

