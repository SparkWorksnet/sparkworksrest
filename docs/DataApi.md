# sparkworks_client.DataApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_latest_by_uuid**](DataApi.md#get_latest_by_uuid) | **GET** /v2/resource/{uuid}/latest | Retrieve latest values for a Resource by its UUID
[**get_summary_by_uuid**](DataApi.md#get_summary_by_uuid) | **GET** /v2/resource/{uuid}/summary | Retrieve summary for a Resource by its UUID
[**publish_data**](DataApi.md#publish_data) | **POST** /v2/resource/data/publish | Publish data to Resources
[**query_latest**](DataApi.md#query_latest) | **POST** /v2/resource/query/latest | Query the Data Service to retrieve a collection of Resource records with their latest values by their UUID
[**query_summary**](DataApi.md#query_summary) | **POST** /v2/resource/query/summary | Query the Data Service to retrieve a collection of Resource records with their summaries by their UUID
[**query_time_range**](DataApi.md#query_time_range) | **POST** /v2/resource/query/timerange | Retrieve timeranged data for a Resource


# **get_latest_by_uuid**
> ResourceLatestValuesResponseAPIModel get_latest_by_uuid(uuid)

Retrieve latest values for a Resource by its UUID

A Spark Works Accounts authenticated common user is able to retrieve a Resource's latest values by its UUID. An administrator is able to get any Resource's latest values by its UUID.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The unique identifier of the Resource

try:
    # Retrieve latest values for a Resource by its UUID
    api_response = api_instance.get_latest_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_latest_by_uuid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The unique identifier of the Resource | 

### Return type

[**ResourceLatestValuesResponseAPIModel**](ResourceLatestValuesResponseAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_summary_by_uuid**
> TheResourceSummaryDataAPIModel get_summary_by_uuid(uuid)

Retrieve summary for a Resource by its UUID

A Spark Works Accounts authenticated common user is able to retrieve a Resource's summary by its UUID. An administrator is able to get any Resource's summary by its UUID.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The unique identifier of the Resource

try:
    # Retrieve summary for a Resource by its UUID
    api_response = api_instance.get_summary_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_summary_by_uuid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The unique identifier of the Resource | 

### Return type

[**TheResourceSummaryDataAPIModel**](TheResourceSummaryDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publish_data**
> ListOfParticipatorySensingDataAPIModel publish_data(publish_data_list_dto=publish_data_list_dto)

Publish data to Resources

A Spark Works Accounts authenticated common user is able to publish data to all of the platform Resources info that has permissions on. An administrator is able to publish data to all of the platform Resources

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
publish_data_list_dto = sparkworks_client.ListOfParticipatorySensingDataAPIModel() # ListOfParticipatorySensingDataAPIModel | List holding data to publish to specified Resources (optional)

try:
    # Publish data to Resources
    api_response = api_instance.publish_data(publish_data_list_dto=publish_data_list_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->publish_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publish_data_list_dto** | [**ListOfParticipatorySensingDataAPIModel**](ListOfParticipatorySensingDataAPIModel.md)| List holding data to publish to specified Resources | [optional] 

### Return type

[**ListOfParticipatorySensingDataAPIModel**](ListOfParticipatorySensingDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_latest**
> ResourceLatestDataResponseAPIModel query_latest(query_latest_resource_data_dto)

Query the Data Service to retrieve a collection of Resource records with their latest values by their UUID

A Spark Works Accounts authenticated common user is able to retrieve all of the platform Resources info that has permissions on. An administrator is able to query all of the platform Resources

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
query_latest_resource_data_dto = sparkworks_client.CollectionOfDataQueryCriteriaRequestAPIModel() # CollectionOfDataQueryCriteriaRequestAPIModel | Collection of Data Query Criteria Request API Model

try:
    # Query the Data Service to retrieve a collection of Resource records with their latest values by their UUID
    api_response = api_instance.query_latest(query_latest_resource_data_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->query_latest: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_latest_resource_data_dto** | [**CollectionOfDataQueryCriteriaRequestAPIModel**](CollectionOfDataQueryCriteriaRequestAPIModel.md)| Collection of Data Query Criteria Request API Model | 

### Return type

[**ResourceLatestDataResponseAPIModel**](ResourceLatestDataResponseAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_summary**
> TheResourceSummaryDataAPIModel query_summary(query_resource_data_criteria_dto)

Query the Data Service to retrieve a collection of Resource records with their summaries by their UUID

A Spark Works Accounts authenticated common user is able to retrieve all of the platform Resources info that has permissions on. An administrator is able to query all of the platform Resources

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
query_resource_data_criteria_dto = sparkworks_client.ResourceQueryCriteriaRequestAPIModel() # ResourceQueryCriteriaRequestAPIModel | Resource Query Criteria Request API Model

try:
    # Query the Data Service to retrieve a collection of Resource records with their summaries by their UUID
    api_response = api_instance.query_summary(query_resource_data_criteria_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->query_summary: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_resource_data_criteria_dto** | [**ResourceQueryCriteriaRequestAPIModel**](ResourceQueryCriteriaRequestAPIModel.md)| Resource Query Criteria Request API Model | 

### Return type

[**TheResourceSummaryDataAPIModel**](TheResourceSummaryDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_time_range**
> TheResourceSummaryDataAPIModel query_time_range(query_time_range_resource_data_dto)

Retrieve timeranged data for a Resource

A Spark Works Accounts authenticated common user is able to retrieve a Resource's timeranged data that has permissions. An administrator is able to get any Resource's timeranged data.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
query_time_range_resource_data_dto = sparkworks_client.ListOfQueryCriteriaWithinATimeframeRequestAPIModel() # ListOfQueryCriteriaWithinATimeframeRequestAPIModel | Collection of timerange criteria to request Resource Data

try:
    # Retrieve timeranged data for a Resource
    api_response = api_instance.query_time_range(query_time_range_resource_data_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->query_time_range: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_time_range_resource_data_dto** | [**ListOfQueryCriteriaWithinATimeframeRequestAPIModel**](ListOfQueryCriteriaWithinATimeframeRequestAPIModel.md)| Collection of timerange criteria to request Resource Data | 

### Return type

[**TheResourceSummaryDataAPIModel**](TheResourceSummaryDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

