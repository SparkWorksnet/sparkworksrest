A client library for accessing data through the [SparkWorks Rest API](https://api.sparkworks.net/swagger-ui.html).

# SparkWorks Rest API Python Client

This Python package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v2.0
- Build package: io.swagger.codegen.languages.PythonClientCodegen
For more information, please visit [http://www.sparkworks.net/](http://www.sparkworks.net/)

## Requirements.

Python 2.7 and 3.4+

## Installation & Usage
### pip install

```sh
pip install sparkworksrest
```
(you may need to run `pip` with root permission: `sudo pip install sparkworksrest`)

Then import the package:
```python
import sparkworks_client 
```

## Setting up the access to the SparkWorks Rest API

```python

import sparkworks_client

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()

# create an instance of the API class
api_client = sparkworks_client.ApiClient(configuration)

#initialize the clients needed
unit_api_instance = sparkworks_client.UnitApi(api_client)
group_api_instance = sparkworks_client.GroupApi(api_client)
phenomenon_api_instance = sparkworks_client.PhenomenonApi(api_client)
gateway_api_instance = sparkworks_client.GatewayApi(api_client)
resource_api_instance = sparkworks_client.ResourceApi(api_client)
command_api_instance = sparkworks_client.CommandApi(api_client)
registry_api_instance = sparkworks_client.RegistryApi(api_client)
data_api_instance = sparkworks_client.DataApi(api_client)
participatorySensing_api_instance = sparkworks_client.ParticipatorySensingApi(api_client)
```

## Examples

### Example 1: List Resources and Access  Resource Data
```python
import time

import sparkworks_client

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()
print("access_token: " + configuration.access_token)

# create an instance of the API class

api_client = sparkworks_client.ApiClient(configuration)

resource_api_instance = sparkworks_client.ResourceApi(api_client)
unit_api_instance = sparkworks_client.UnitApi(api_client)
phenomenon_api_instance = sparkworks_client.PhenomenonApi(api_client)
data_api_instance = sparkworks_client.DataApi(api_client)

# list all Resources
resources = resource_api_instance.get_resources()

print "====resource===="
# retrieve resource by uuid
resource = resource_api_instance.get_resource_by_uuid(resources[0].uuid)
print resource

print "====phenomenon===="
phenomenon = phenomenon_api_instance.get_phenomenon_by_uuid(resource.phenomenon_uuid)
print phenomenon

print "====unit===="
unit = unit_api_instance.get_unit_by_uuid(resource.unit_uuid)
print unit

time_from = (int(round(time.time())) - 5 * 60 * 60) * 1000
time_to = int(round(time.time())) * 1000

print "====data 5min===="
# retrieve data - granularity 5min
data = data_api_instance.query_time_range({
    "queries": [
        {
            "from": time_from,
            "to": time_to,
            "granularity": "5min",
            "resourceUuid": resource.uuid
        }
    ]
})

for d in data.results.values():
    for datum in d.data:
        print "5min", datum

print "====data hour===="
# retrieve data - granularity hour
data = data_api_instance.query_time_range({
    "queries": [
        {
            "from": time_from,
            "to": time_to,
            "granularity": "hour",
            "resourceUuid": resource.uuid
        }
    ]
})

for d in data.results.values():
    for datum in d.data:
        print "hour", datum
```

### Example 2: List Groups and Group Resources
```python
import sparkworks_client

# Configure OAuth2 access token for authorization: oauth2
configuration = sparkworks_client.Configuration("username", "password", "client_id", "client_secret")
configuration.connect()
print("access_token: " + configuration.access_token)

# create an instance of the API class

api_client = sparkworks_client.ApiClient(configuration)

resource_api_instance = sparkworks_client.ResourceApi(api_client)
group_api_instance = sparkworks_client.GroupApi(api_client)

print "====groups===="
# list all groups
groups = group_api_instance.get_all_groups()
for group in groups:
    print group

print "====group[0].resources===="
# retrieve resources by group uuid
resources = group_api_instance.get_group_resources(groups[0].uuid)
for resource in resources:
    print resource
```

## Documentation for API Endpoints

All URIs are relative to *https://api.sparkworks.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CommandApi* | [**send_command**](docs/CommandApi.md#send_command) | **POST** /v2/command/{uuid} | Send a command to a SparkWorks Actuator Resource
*DataApi* | [**get_latest_by_uuid**](docs/DataApi.md#get_latest_by_uuid) | **GET** /v2/resource/{uuid}/latest | Retrieve latest values and analytics for a single Resource
*DataApi* | [**get_summary_by_uuid**](docs/DataApi.md#get_summary_by_uuid) | **GET** /v2/resource/{uuid}/summary | Retrieve the data summary for a single Resource
*DataApi* | [**publish_data**](docs/DataApi.md#publish_data) | **POST** /v2/resource/data/publish | Publish data to a single or multiple Resources
*DataApi* | [**query_latest**](docs/DataApi.md#query_latest) | **POST** /v2/resource/query/latest | Retrieve the latest values received for multiple Resources
*DataApi* | [**query_summary**](docs/DataApi.md#query_summary) | **POST** /v2/resource/query/summary | Retrieve the data summaries of mutliple Resource
*DataApi* | [**query_time_range**](docs/DataApi.md#query_time_range) | **POST** /v2/resource/query/timerange | Retrieve analytics for a single Resource
*DataApi* | [**query_time_range_raw**](docs/DataApi.md#query_time_range_raw) | **POST** /v2/resource/query/raw/timerange | Retrieve the raw data received for a single Resource
*GatewayApi* | [**count_gateways**](docs/GatewayApi.md#count_gateways) | **GET** /v2/gateway/count | Count Gateways
*GatewayApi* | [**create_gateway**](docs/GatewayApi.md#create_gateway) | **POST** /v2/gateway | Create a new Gateway
*GatewayApi* | [**delete_gateway**](docs/GatewayApi.md#delete_gateway) | **DELETE** /v2/gateway/{uuid} | Delete Gateway by its UUID
*GatewayApi* | [**get_all_gateways**](docs/GatewayApi.md#get_all_gateways) | **GET** /v2/gateway | Retrieve a collection of Gateways
*GatewayApi* | [**get_gateway_by_uuid**](docs/GatewayApi.md#get_gateway_by_uuid) | **GET** /v2/gateway/{uuid} | Retrieve a Gateway by its UUID
*GatewayApi* | [**get_gateway_resources**](docs/GatewayApi.md#get_gateway_resources) | **GET** /v2/gateway/{uuid}/resource | Get the Resources of a Gateway by the Gateway UUID
*GatewayApi* | [**query_gateways**](docs/GatewayApi.md#query_gateways) | **POST** /v2/gateway/query | Retrieve a Gateway by a query
*GroupApi* | [**count_groups**](docs/GroupApi.md#count_groups) | **GET** /v2/group/count | Count Groups
*GroupApi* | [**create_group**](docs/GroupApi.md#create_group) | **POST** /v2/group | Create a new Group
*GroupApi* | [**delete_group_branch**](docs/GroupApi.md#delete_group_branch) | **DELETE** /v2/group/{uuid} | Delete Group branch by the Group UUID
*GroupApi* | [**get_all_groups**](docs/GroupApi.md#get_all_groups) | **GET** /v2/group | Retrieve a collection of Groups
*GroupApi* | [**get_group_by_uuid**](docs/GroupApi.md#get_group_by_uuid) | **GET** /v2/group/{uuid} | Retrieve a Group by its UUID
*GroupApi* | [**get_group_gateways**](docs/GroupApi.md#get_group_gateways) | **GET** /v2/group/{uuid}/gateway | Get the Gateways of a Group by the Group UUID
*GroupApi* | [**get_group_resources**](docs/GroupApi.md#get_group_resources) | **GET** /v2/group/{uuid}/resource | Get the Resources of a Group by the Group UUID
*GroupApi* | [**get_main_level_groups**](docs/GroupApi.md#get_main_level_groups) | **GET** /v2/group/main | List the main level Groups
*GroupApi* | [**get_subgroups**](docs/GroupApi.md#get_subgroups) | **GET** /v2/group/{uuid}/subgroup/{depth} | Get the Subgroups of a Group by the Group UUID
*GroupApi* | [**move_group_branch**](docs/GroupApi.md#move_group_branch) | **POST** /v2/group/move/{sourceUUID}/{targetUUID} | Move Group Branch
*GroupApi* | [**update_group**](docs/GroupApi.md#update_group) | **POST** /v2/group/{uuid} | Update Group
*ParticipatorySensingApi* | [**create_ps_resource**](docs/ParticipatorySensingApi.md#create_ps_resource) | **POST** /v2/ps/resource | Create a Participatory Sensing Resource with an autogenerated uri
*ParticipatorySensingApi* | [**delete_ps_resource**](docs/ParticipatorySensingApi.md#delete_ps_resource) | **DELETE** /v2/ps/resource/{uuid} | Delete a Participatory Sensing Resource
*ParticipatorySensingApi* | [**publish_ps_data**](docs/ParticipatorySensingApi.md#publish_ps_data) | **POST** /v2/ps/data | Publish data to a Participatory Sensing Resource.
*PhenomenonApi* | [**create_phenomenon**](docs/PhenomenonApi.md#create_phenomenon) | **POST** /v2/phenomenon | Create a Phenomenon
*PhenomenonApi* | [**delete_phenomenon**](docs/PhenomenonApi.md#delete_phenomenon) | **DELETE** /v2/phenomenon/{uuid} | Delete a Phenomenon by its UUID
*PhenomenonApi* | [**get_all_phenomena**](docs/PhenomenonApi.md#get_all_phenomena) | **GET** /v2/phenomenon | Retrieve a collection of Phenomenons
*PhenomenonApi* | [**get_phenomenon_by_uuid**](docs/PhenomenonApi.md#get_phenomenon_by_uuid) | **GET** /v2/phenomenon/{uuid} | Retrieve a Phenomenon by its UUID
*PhenomenonApi* | [**query_phenomena**](docs/PhenomenonApi.md#query_phenomena) | **POST** /v2/phenomenon/query | Retrieve a Phenomenon by a query
*PhenomenonApi* | [**update_phenomenon**](docs/PhenomenonApi.md#update_phenomenon) | **POST** /v2/phenomenon/{uuid} | Update Phenomenon
*RegistryApi* | [**query_registry**](docs/RegistryApi.md#query_registry) | **POST** /v2/registry/query | Query the Registry Service to retrieve a collection of Resources records with their last read value and timestamp by their UUID
*ResourceApi* | [**count_resources**](docs/ResourceApi.md#count_resources) | **GET** /v2/resource/count | Count Resources
*ResourceApi* | [**create_resource**](docs/ResourceApi.md#create_resource) | **POST** /v2/resource | Create a new Resource
*ResourceApi* | [**delete_resource**](docs/ResourceApi.md#delete_resource) | **DELETE** /v2/resource/{uuid} | Delete Resource by its UUID
*ResourceApi* | [**get_resource_by_uuid**](docs/ResourceApi.md#get_resource_by_uuid) | **GET** /v2/resource/{uuid} | Retrieve a Spark Works Resource by its UUID
*ResourceApi* | [**get_resources**](docs/ResourceApi.md#get_resources) | **GET** /v2/resource | Retrieve a collection of Resources
*ResourceApi* | [**move_resource**](docs/ResourceApi.md#move_resource) | **POST** /v2/resource/{uuid}/move/{targetUUID} | Move Resource by its UUID
*ResourceApi* | [**query_resources**](docs/ResourceApi.md#query_resources) | **POST** /v2/resource/query | Retrieve a Resource by a query
*ResourceApi* | [**update_resource**](docs/ResourceApi.md#update_resource) | **POST** /v2/resource/{uuid} | Update Resource
*UnitApi* | [**create_unit**](docs/UnitApi.md#create_unit) | **POST** /v2/unit | Create a Unit
*UnitApi* | [**delete_unit**](docs/UnitApi.md#delete_unit) | **DELETE** /v2/unit/{uuid} | Delete a Unit by its UUID
*UnitApi* | [**get_all_units**](docs/UnitApi.md#get_all_units) | **GET** /v2/unit | Retrieve a collection of Units
*UnitApi* | [**get_unit_by_uuid**](docs/UnitApi.md#get_unit_by_uuid) | **GET** /v2/unit/{uuid} | Retrieve a Unit by its UUID
*UnitApi* | [**query_units**](docs/UnitApi.md#query_units) | **POST** /v2/unit/query | Retrieve a Unit by a query
*UnitApi* | [**update_unit**](docs/UnitApi.md#update_unit) | **POST** /v2/unit/{uuid} | Update Unit
*UnitConversionApi* | [**create_unit_conversion**](docs/UnitConversionApi.md#create_unit_conversion) | **POST** /v2/conversion | Create a Unit Conversion
*UnitConversionApi* | [**delete_unit_conversion**](docs/UnitConversionApi.md#delete_unit_conversion) | **DELETE** /v2/conversion/{uuid} | Delete a Unit Conversion by its UUID
*UnitConversionApi* | [**get_all_unit_conversions**](docs/UnitConversionApi.md#get_all_unit_conversions) | **GET** /v2/conversion | Retrieve a collection of Unit Conversions
*UnitConversionApi* | [**get_unit_conversion_by_uuid**](docs/UnitConversionApi.md#get_unit_conversion_by_uuid) | **GET** /v2/conversion/{uuid} | Retrieve a Unit Conversion by its UUID
*UnitConversionApi* | [**query_unit_conversions**](docs/UnitConversionApi.md#query_unit_conversions) | **POST** /v2/conversion/query | Retrieve a List of Unit Conversions by a query


## Documentation For Models

 - [AParticipatorySensingResourceRequestAPIModel](docs/AParticipatorySensingResourceRequestAPIModel.md)
 - [AnalyticsResourceDataResponseDTOAPIModel](docs/AnalyticsResourceDataResponseDTOAPIModel.md)
 - [CommandAPIModel](docs/CommandAPIModel.md)
 - [GatewayCreateDTO](docs/GatewayCreateDTO.md)
 - [GatewayDTO](docs/GatewayDTO.md)
 - [GatewayQueryDTO](docs/GatewayQueryDTO.md)
 - [GroupCreateDTO](docs/GroupCreateDTO.md)
 - [GroupDTO](docs/GroupDTO.md)
 - [GroupNodeDTO](docs/GroupNodeDTO.md)
 - [GroupUpdateDTO](docs/GroupUpdateDTO.md)
 - [PhenomenonCreateDTO](docs/PhenomenonCreateDTO.md)
 - [PhenomenonDTO](docs/PhenomenonDTO.md)
 - [PhenomenonQueryDTO](docs/PhenomenonQueryDTO.md)
 - [PhenomenonUpdateDTO](docs/PhenomenonUpdateDTO.md)
 - [PublishDataDTOAPIModel](docs/PublishDataDTOAPIModel.md)
 - [PublishDataListDTOAPIModel](docs/PublishDataListDTOAPIModel.md)
 - [QueryLatestResourceDataDTOAPIModel](docs/QueryLatestResourceDataDTOAPIModel.md)
 - [QueryLatestResourceDataResultDTOAPIModel](docs/QueryLatestResourceDataResultDTOAPIModel.md)
 - [QueryRawDataTimeRangeDTOAPIModel](docs/QueryRawDataTimeRangeDTOAPIModel.md)
 - [QueryRawDataTimeRangeResultDTOAPIModel](docs/QueryRawDataTimeRangeResultDTOAPIModel.md)
 - [QueryResourceDataCriteriaDTOAPIModel](docs/QueryResourceDataCriteriaDTOAPIModel.md)
 - [QueryTimeRangeResourceDataCriteriaDTOAPIModel](docs/QueryTimeRangeResourceDataCriteriaDTOAPIModel.md)
 - [QueryTimeRangeResourceDataDTOAPIModel](docs/QueryTimeRangeResourceDataDTOAPIModel.md)
 - [QueryTimeRangeResourceDataResultDTOAPIModel](docs/QueryTimeRangeResourceDataResultDTOAPIModel.md)
 - [RegistryPairDTO](docs/RegistryPairDTO.md)
 - [RegistryRecordDTO](docs/RegistryRecordDTO.md)
 - [ResourceCreateDTO](docs/ResourceCreateDTO.md)
 - [ResourceDTO](docs/ResourceDTO.md)
 - [ResourceLatestValuesResponseAPIModel](docs/ResourceLatestValuesResponseAPIModel.md)
 - [ResourceQueryDTO](docs/ResourceQueryDTO.md)
 - [ResourceUpdateDTO](docs/ResourceUpdateDTO.md)
 - [SingleResourceMeasurementAPIModel](docs/SingleResourceMeasurementAPIModel.md)
 - [TheResourceSummaryDataAPIModel](docs/TheResourceSummaryDataAPIModel.md)
 - [UnitConversionCreateDTO](docs/UnitConversionCreateDTO.md)
 - [UnitConversionDTO](docs/UnitConversionDTO.md)
 - [UnitConversionQueryDTO](docs/UnitConversionQueryDTO.md)
 - [UnitCreateDTO](docs/UnitCreateDTO.md)
 - [UnitDTO](docs/UnitDTO.md)
 - [UnitQueryDTO](docs/UnitQueryDTO.md)
 - [UnitUpdateDTO](docs/UnitUpdateDTO.md)


## Documentation For Authorization


## oauth2

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: 
 - **read**: Description of read scope.


## Author

info@sparkworks.net

