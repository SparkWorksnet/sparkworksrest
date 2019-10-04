# sparkworks_client.DataApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_latest_by_uuid**](DataApi.md#get_latest_by_uuid) | **GET** /v2/resource/{uuid}/latest | Retrieve latest values and analytics for a single Resource
[**get_summary_by_uuid**](DataApi.md#get_summary_by_uuid) | **GET** /v2/resource/{uuid}/summary | Retrieve the data summary for a single Resource
[**publish_data**](DataApi.md#publish_data) | **POST** /v2/resource/data/publish | Publish data to a single or multiple Resources
[**query_latest**](DataApi.md#query_latest) | **POST** /v2/resource/query/latest | Retrieve the latest values received for multiple Resources
[**query_summary**](DataApi.md#query_summary) | **POST** /v2/resource/query/summary | Retrieve the data summaries of mutliple Resource
[**query_time_range**](DataApi.md#query_time_range) | **POST** /v2/resource/query/timerange | Retrieve analytics for a single Resource
[**query_time_range_raw**](DataApi.md#query_time_range_raw) | **POST** /v2/resource/query/raw/timerange | Retrieve the raw data received for a single Resource


# **get_latest_by_uuid**
> ResourceLatestValuesResponseAPIModel get_latest_by_uuid(uuid)

Retrieve latest values and analytics for a single Resource

Retrieve the latest values received for a single Resource. The response contains the latest value received for the Resource, the timestamp of the measurement as well as the analytics calculated for this measurement for the last 5minute, hour, day and month interval.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The UUID of the Resource

try:
    # Retrieve latest values and analytics for a single Resource
    api_response = api_instance.get_latest_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_latest_by_uuid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The UUID of the Resource | 

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

Retrieve the data summary for a single Resource

Retrieve a summary of the latest analytics calculated for a single Resource. The summary contains the latest calculated analytics for the Resource for the past 48 5minute, hour, day and month intervals.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The UUID of the Resource

try:
    # Retrieve the data summary for a single Resource
    api_response = api_instance.get_summary_by_uuid(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_summary_by_uuid: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The UUID of the Resource | 

### Return type

[**TheResourceSummaryDataAPIModel**](TheResourceSummaryDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publish_data**
> PublishDataListDTOAPIModel publish_data(publish_data_list_dto=publish_data_list_dto)

Publish data to a single or multiple Resources

Publish data to a single or multiple Resources. Send data for processing for one or more Resources that you have permission to update.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
publish_data_list_dto = sparkworks_client.PublishDataListDTOAPIModel() # PublishDataListDTOAPIModel | Data to be published (optional)

try:
    # Publish data to a single or multiple Resources
    api_response = api_instance.publish_data(publish_data_list_dto=publish_data_list_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->publish_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publish_data_list_dto** | [**PublishDataListDTOAPIModel**](PublishDataListDTOAPIModel.md)| Data to be published | [optional] 

### Return type

[**PublishDataListDTOAPIModel**](PublishDataListDTOAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_latest**
> QueryLatestResourceDataResultDTOAPIModel query_latest(query_latest_resource_data_dto)

Retrieve the latest values received for multiple Resources

Retrieve the latest values received for multiple Resources. The response contains the latest value received for the Resource and the timestamp of the measurement. For more information on how to define the criteria check the method parameters.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
query_latest_resource_data_dto = sparkworks_client.QueryLatestResourceDataDTOAPIModel() # QueryLatestResourceDataDTOAPIModel | Data query criteria

try:
    # Retrieve the latest values received for multiple Resources
    api_response = api_instance.query_latest(query_latest_resource_data_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->query_latest: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_latest_resource_data_dto** | [**QueryLatestResourceDataDTOAPIModel**](QueryLatestResourceDataDTOAPIModel.md)| Data query criteria | 

### Return type

[**QueryLatestResourceDataResultDTOAPIModel**](QueryLatestResourceDataResultDTOAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_summary**
> TheResourceSummaryDataAPIModel query_summary(query_resource_data_criteria_dto)

Retrieve the data summaries of mutliple Resource

Retrieve the data summaries received of multiple Resources. The response contains the summary with calculated analytics for each Resource for the past 48 5minute, hour, day and month intervals. A single summary is returned for each Resource

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
query_resource_data_criteria_dto = sparkworks_client.QueryResourceDataCriteriaDTOAPIModel() # QueryResourceDataCriteriaDTOAPIModel | Data query criteria

try:
    # Retrieve the data summaries of mutliple Resource
    api_response = api_instance.query_summary(query_resource_data_criteria_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->query_summary: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_resource_data_criteria_dto** | [**QueryResourceDataCriteriaDTOAPIModel**](QueryResourceDataCriteriaDTOAPIModel.md)| Data query criteria | 

### Return type

[**TheResourceSummaryDataAPIModel**](TheResourceSummaryDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_time_range**
> QueryTimeRangeResourceDataResultDTOAPIModel query_time_range(query_time_range_resource_data_dto)

Retrieve analytics for a single Resource

Retrieve analytics for a single Resource on multiple intervals and granularities. The response contains the latest calculated analytics for the Resource based on the query criteria provided with the request. For more information on how to define the criteria check the method parameters.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
query_time_range_resource_data_dto = sparkworks_client.QueryTimeRangeResourceDataDTOAPIModel() # QueryTimeRangeResourceDataDTOAPIModel | Timerange criteria

try:
    # Retrieve analytics for a single Resource
    api_response = api_instance.query_time_range(query_time_range_resource_data_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->query_time_range: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_time_range_resource_data_dto** | [**QueryTimeRangeResourceDataDTOAPIModel**](QueryTimeRangeResourceDataDTOAPIModel.md)| Timerange criteria | 

### Return type

[**QueryTimeRangeResourceDataResultDTOAPIModel**](QueryTimeRangeResourceDataResultDTOAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_time_range_raw**
> QueryRawDataTimeRangeResultDTOAPIModel query_time_range_raw(query_raw_data_time_range_dto)

Retrieve the raw data received for a single Resource

Retrieve the raw data received for a single Resource over a specified time interval. This method retrieves from the raw data storage and depending on the amount of data that need to be accessed may take longer time to respond. If your get a response timeout you may need to limit the requested time range.

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
api_instance = sparkworks_client.DataApi(sparkworks_client.ApiClient(configuration))
query_raw_data_time_range_dto = sparkworks_client.QueryRawDataTimeRangeDTOAPIModel() # QueryRawDataTimeRangeDTOAPIModel | Raw Data Timerange Criteria

try:
    # Retrieve the raw data received for a single Resource
    api_response = api_instance.query_time_range_raw(query_raw_data_time_range_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->query_time_range_raw: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_raw_data_time_range_dto** | [**QueryRawDataTimeRangeDTOAPIModel**](QueryRawDataTimeRangeDTOAPIModel.md)| Raw Data Timerange Criteria | 

### Return type

[**QueryRawDataTimeRangeResultDTOAPIModel**](QueryRawDataTimeRangeResultDTOAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

