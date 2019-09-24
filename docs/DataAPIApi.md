# sparkworks_client.DataAPIApi

All URIs are relative to *https://api.sparkworks.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**publish_data_using_post**](DataAPIApi.md#publish_data_using_post) | **POST** /v2/resource/data/publish | publishData
[**query_latest_summary_for_resources_using_post**](DataAPIApi.md#query_latest_summary_for_resources_using_post) | **POST** /v2/resource/query/summary | queryLatestSummaryForResources
[**query_latest_values_for_resources_using_post**](DataAPIApi.md#query_latest_values_for_resources_using_post) | **POST** /v2/resource/query/latest | queryLatestValuesForResources
[**query_time_range_using_post**](DataAPIApi.md#query_time_range_using_post) | **POST** /v2/resource/query/timerange | queryTimeRange
[**retrieve_latest_summary_using_get**](DataAPIApi.md#retrieve_latest_summary_using_get) | **GET** /v2/resource/{uuid}/summary | retrieveLatestSummary
[**retrieve_latest_values_using_get**](DataAPIApi.md#retrieve_latest_values_using_get) | **GET** /v2/resource/{uuid}/latest | retrieveLatestValues


# **publish_data_using_post**
> ListOfParticipatorySensingDataAPIModel publish_data_using_post(publish_data_list_dto)

publishData

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
api_instance = sparkworks_client.DataAPIApi(sparkworks_client.ApiClient(configuration))
publish_data_list_dto = sparkworks_client.ListOfParticipatorySensingDataAPIModel() # ListOfParticipatorySensingDataAPIModel | publishDataListDTO

try:
    # publishData
    api_response = api_instance.publish_data(publish_data_list_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataAPIApi->publish_data_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publish_data_list_dto** | [**ListOfParticipatorySensingDataAPIModel**](ListOfParticipatorySensingDataAPIModel.md)| publishDataListDTO | 

### Return type

[**ListOfParticipatorySensingDataAPIModel**](ListOfParticipatorySensingDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_latest_summary_for_resources_using_post**
> TheResourceSummaryDataAPIModel query_latest_summary_for_resources_using_post(query_resource_data_criteria_dto)

queryLatestSummaryForResources

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
api_instance = sparkworks_client.DataAPIApi(sparkworks_client.ApiClient(configuration))
query_resource_data_criteria_dto = sparkworks_client.ResourceQueryCriteriaRequestAPIModel() # ResourceQueryCriteriaRequestAPIModel | queryResourceDataCriteriaDTO

try:
    # queryLatestSummaryForResources
    api_response = api_instance.query_summary(query_resource_data_criteria_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataAPIApi->query_latest_summary_for_resources_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_resource_data_criteria_dto** | [**ResourceQueryCriteriaRequestAPIModel**](ResourceQueryCriteriaRequestAPIModel.md)| queryResourceDataCriteriaDTO | 

### Return type

[**TheResourceSummaryDataAPIModel**](TheResourceSummaryDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_latest_values_for_resources_using_post**
> ResourceLatestDataResponseAPIModel query_latest_values_for_resources_using_post(query_latest_resource_data_dto)

queryLatestValuesForResources

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
api_instance = sparkworks_client.DataAPIApi(sparkworks_client.ApiClient(configuration))
query_latest_resource_data_dto = sparkworks_client.CollectionOfDataQueryCriteriaRequestAPIModel() # CollectionOfDataQueryCriteriaRequestAPIModel | queryLatestResourceDataDTO

try:
    # queryLatestValuesForResources
    api_response = api_instance.query_latest(query_latest_resource_data_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataAPIApi->query_latest_values_for_resources_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_latest_resource_data_dto** | [**CollectionOfDataQueryCriteriaRequestAPIModel**](CollectionOfDataQueryCriteriaRequestAPIModel.md)| queryLatestResourceDataDTO | 

### Return type

[**ResourceLatestDataResponseAPIModel**](ResourceLatestDataResponseAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_time_range_using_post**
> ResourceQueryCriteriaWithinATimeframeResponseAPIModel query_time_range_using_post(query_time_range_resource_data_dto)

queryTimeRange

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
api_instance = sparkworks_client.DataAPIApi(sparkworks_client.ApiClient(configuration))
query_time_range_resource_data_dto = sparkworks_client.ListOfQueryCriteriaWithinATimeframeRequestAPIModel() # ListOfQueryCriteriaWithinATimeframeRequestAPIModel | queryTimeRangeResourceDataDTO

try:
    # queryTimeRange
    api_response = api_instance.query_time_range(query_time_range_resource_data_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataAPIApi->query_time_range_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_time_range_resource_data_dto** | [**ListOfQueryCriteriaWithinATimeframeRequestAPIModel**](ListOfQueryCriteriaWithinATimeframeRequestAPIModel.md)| queryTimeRangeResourceDataDTO | 

### Return type

[**ResourceQueryCriteriaWithinATimeframeResponseAPIModel**](ResourceQueryCriteriaWithinATimeframeResponseAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_latest_summary_using_get**
> TheResourceSummaryDataAPIModel retrieve_latest_summary_using_get(uuid)

retrieveLatestSummary

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
api_instance = sparkworks_client.DataAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | uuid

try:
    # retrieveLatestSummary
    api_response = api_instance.retrieve_summary(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataAPIApi->retrieve_latest_summary_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| uuid | 

### Return type

[**TheResourceSummaryDataAPIModel**](TheResourceSummaryDataAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_latest_values_using_get**
> ResourceLatestValuesResponseAPIModel retrieve_latest_values_using_get(uuid)

retrieveLatestValues

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
api_instance = sparkworks_client.DataAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | uuid

try:
    # retrieveLatestValues
    api_response = api_instance.retrieve_latest(uuid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataAPIApi->retrieve_latest_values_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| uuid | 

### Return type

[**ResourceLatestValuesResponseAPIModel**](ResourceLatestValuesResponseAPIModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

