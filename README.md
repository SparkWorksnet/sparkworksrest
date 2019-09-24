# SparkWorks Python Client
Management Service for the SparkWorks Processing Engine

This Python package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v2.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.PythonClientCodegen
For more information, please visit [http://www.sparkworks.net/](http://www.sparkworks.net/)

## Requirements.

Python 2.7 and 3.4+

## Installation & Usage
### pip install

If the python package is hosted on Github, you can install directly from Github

```sh
pip install git+https://github.com//.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com//.git`)

Then import the package:
```python
import sparkworks_client 
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import sparkworks_client
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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
api_instance = sparkworks_client.CommandAPIApi(sparkworks_client.ApiClient(configuration))
uuid = 'uuid_example' # str | The unique identifier of the Actuator Resource
command_dto = sparkworks_client.CommandAPIModel() # CommandAPIModel | commandDto

try:
    # Send a command to a SparkWorks Actuator Resource
    api_response = api_instance.send_command(uuid, command_dto)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CommandAPIApi->send_command: %s\n" % e)

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sparkworks.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CommandAPIApi* | [**send_command**](docs/CommandAPIApi.md#send_command) | **POST** /v2/command/{uuid} | Send a command to a SparkWorks Actuator Resource
*DataAPIApi* | [**publish_data_using_post**](docs/DataAPIApi.md#publish_data_using_post) | **POST** /v2/resource/data/publish | publishData
*DataAPIApi* | [**query_latest_summary_for_resources_using_post**](docs/DataAPIApi.md#query_latest_summary_for_resources_using_post) | **POST** /v2/resource/query/summary | queryLatestSummaryForResources
*DataAPIApi* | [**query_latest_values_for_resources_using_post**](docs/DataAPIApi.md#query_latest_values_for_resources_using_post) | **POST** /v2/resource/query/latest | queryLatestValuesForResources
*DataAPIApi* | [**query_time_range_using_post**](docs/DataAPIApi.md#query_time_range_using_post) | **POST** /v2/resource/query/timerange | queryTimeRange
*DataAPIApi* | [**retrieve_latest_summary_using_get**](docs/DataAPIApi.md#retrieve_latest_summary_using_get) | **GET** /v2/resource/{uuid}/summary | retrieveLatestSummary
*DataAPIApi* | [**retrieve_latest_values_using_get**](docs/DataAPIApi.md#retrieve_latest_values_using_get) | **GET** /v2/resource/{uuid}/latest | retrieveLatestValues
*GatewayAPIApi* | [**count_gateways**](docs/GatewayAPIApi.md#count_gateways) | **GET** /v2/gateway/count | Count Gateways
*GatewayAPIApi* | [**create_gateway**](docs/GatewayAPIApi.md#create_gateway) | **POST** /v2/gateway | Create a new Gateway
*GatewayAPIApi* | [**delete_gateway**](docs/GatewayAPIApi.md#delete_gateway) | **DELETE** /v2/gateway/{uuid} | Delete Gateway by its UUID
*GatewayAPIApi* | [**get_gateway_resources**](docs/GatewayAPIApi.md#get_gateway_resources) | **GET** /v2/gateway/{uuid}/resource | Get the Resources of a Gateway by the Gateway UUID
*GatewayAPIApi* | [**query_gateways**](docs/GatewayAPIApi.md#query_gateways) | **POST** /v2/gateway/query | Retrieve a Gateway by a query
*GatewayAPIApi* | [**retrieve_gateways**](docs/GatewayAPIApi.md#retrieve_gateways) | **GET** /v2/gateway/{uuid} | Retrieve a Gateway by its UUID
*GatewayAPIApi* | [**retrieve_gateways1**](docs/GatewayAPIApi.md#retrieve_gateways1) | **GET** /v2/gateway | Retrieve a collection of Gateways
*GroupAPIApi* | [**count_groups**](docs/GroupAPIApi.md#count_groups) | **GET** /v2/group/count | Count Groups
*GroupAPIApi* | [**create_group**](docs/GroupAPIApi.md#create_group) | **POST** /v2/group | Create a new Group
*GroupAPIApi* | [**delete_group_branch**](docs/GroupAPIApi.md#delete_group_branch) | **DELETE** /v2/group/{uuid} | Delete Group branch by the Group UUID
*GroupAPIApi* | [**get_group_gateways**](docs/GroupAPIApi.md#get_group_gateways) | **GET** /v2/group/{uuid}/gateway | Get the Gateways of a Group by the Group UUID
*GroupAPIApi* | [**get_group_resources**](docs/GroupAPIApi.md#get_group_resources) | **GET** /v2/group/{uuid}/resource | Get the Resources of a Group by the Group UUID
*GroupAPIApi* | [**get_main_level_groups**](docs/GroupAPIApi.md#get_main_level_groups) | **GET** /v2/group/main | List the main level Groups
*GroupAPIApi* | [**get_sub_groups**](docs/GroupAPIApi.md#get_sub_groups) | **GET** /v2/group/{uuid}/subgroup/{depth} | Get the Subgroups of a Group by the Group UUID
*GroupAPIApi* | [**move_group_branch**](docs/GroupAPIApi.md#move_group_branch) | **POST** /v2/group/move/{sourceUUID}/{targetUUID} | Move Group Branch
*GroupAPIApi* | [**retrieve_group**](docs/GroupAPIApi.md#retrieve_group) | **GET** /v2/group/{uuid} | Retrieve a Group by its UUID
*GroupAPIApi* | [**retrieve_groups**](docs/GroupAPIApi.md#retrieve_groups) | **GET** /v2/group | Retrieve a collection of Groups
*GroupAPIApi* | [**update_group**](docs/GroupAPIApi.md#update_group) | **POST** /v2/group/{uuid} | Update Group
*ParticipatorySensingAPIApi* | [**create_ps_resource**](docs/ParticipatorySensingAPIApi.md#create_ps_resource) | **POST** /v2/ps/resource | Create a Participatory Sensing Resource with an autogenerated uri
*ParticipatorySensingAPIApi* | [**delete_ps_resource**](docs/ParticipatorySensingAPIApi.md#delete_ps_resource) | **DELETE** /v2/ps/resource/{uuid} | Delete a Participatory Sensing Resource
*ParticipatorySensingAPIApi* | [**publish_ps_data**](docs/ParticipatorySensingAPIApi.md#publish_ps_data) | **POST** /v2/ps/data | Publish data to a Participatory Sensing Resource.
*PhenomenonAPIApi* | [**create_phenomenon**](docs/PhenomenonAPIApi.md#create_phenomenon) | **POST** /v2/phenomenon | Create a Phenomenon
*PhenomenonAPIApi* | [**delete_phenomenon**](docs/PhenomenonAPIApi.md#delete_phenomenon) | **DELETE** /v2/phenomenon/{uuid} | Delete a Phenomenon by its UUID
*PhenomenonAPIApi* | [**get_phenomenon_by_u_uid**](docs/PhenomenonAPIApi.md#get_phenomenon_by_u_uid) | **GET** /v2/phenomenon/{uuid} | Retrieve a Phenomenon by its UUID
*PhenomenonAPIApi* | [**list_all_phenomenons**](docs/PhenomenonAPIApi.md#list_all_phenomenons) | **GET** /v2/phenomenon | Retrieve a collection of Phenomenons
*PhenomenonAPIApi* | [**query_phenomenons**](docs/PhenomenonAPIApi.md#query_phenomenons) | **POST** /v2/phenomenon/query | Retrieve a Phenomenon by a query
*PhenomenonAPIApi* | [**update_phenomenon**](docs/PhenomenonAPIApi.md#update_phenomenon) | **POST** /v2/phenomenon/{uuid} | Update Phenomenon
*RegistryAPIApi* | [**query_registry**](docs/RegistryAPIApi.md#query_registry) | **POST** /v2/registry/query | Query the Registry Service to retrieve a collection of Resources records with their last read value and timestamp by their UUID
*ResourceAPIApi* | [**count_resourmvnces**](docs/ResourceAPIApi.md#count_resourmvnces) | **GET** /v2/resource/count | Count Resources
*ResourceAPIApi* | [**create_resource**](docs/ResourceAPIApi.md#create_resource) | **POST** /v2/resource | Create a new Resource
*ResourceAPIApi* | [**delete_resource**](docs/ResourceAPIApi.md#delete_resource) | **DELETE** /v2/resource/{uuid} | Delete Resource by its UUID
*ResourceAPIApi* | [**move_resource**](docs/ResourceAPIApi.md#move_resource) | **POST** /v2/resource/{uuid}/move/{targetUUID} | Move Resource by its UUID
*ResourceAPIApi* | [**query_resources**](docs/ResourceAPIApi.md#query_resources) | **POST** /v2/resource/query | Retrieve a Resource by a query
*ResourceAPIApi* | [**retrieve_resource**](docs/ResourceAPIApi.md#retrieve_resource) | **GET** /v2/resource/{uuid} | Retrieve a Spark Works Resource by its UUID
*ResourceAPIApi* | [**retrieve_resources**](docs/ResourceAPIApi.md#retrieve_resources) | **GET** /v2/resource | Retrieve a collection of Resources
*ResourceAPIApi* | [**update_resource**](docs/ResourceAPIApi.md#update_resource) | **POST** /v2/resource/{uuid} | Update Resource
*UnitAPIApi* | [**create_unit**](docs/UnitAPIApi.md#create_unit) | **POST** /v2/unit | Create a Unit
*UnitAPIApi* | [**create_unit_conversion**](docs/UnitAPIApi.md#create_unit_conversion) | **POST** /v2/conversion | Create a Unit Conversion
*UnitAPIApi* | [**delete_unit**](docs/UnitAPIApi.md#delete_unit) | **DELETE** /v2/unit/{uuid} | Delete a Unit by its UUID
*UnitAPIApi* | [**delete_unit_conversion**](docs/UnitAPIApi.md#delete_unit_conversion) | **DELETE** /v2/conversion/{uuid} | Delete a Unit Conversion by its UUID
*UnitAPIApi* | [**get_unit_by_u_uid**](docs/UnitAPIApi.md#get_unit_by_u_uid) | **GET** /v2/unit/{uuid} | Retrieve a Unit by its UUID
*UnitAPIApi* | [**get_unit_conversion_by_u_uid**](docs/UnitAPIApi.md#get_unit_conversion_by_u_uid) | **GET** /v2/conversion/{uuid} | Retrieve a Unit Conversion by its UUID
*UnitAPIApi* | [**list_all_unit_conversions**](docs/UnitAPIApi.md#list_all_unit_conversions) | **GET** /v2/conversion | Retrieve a collection of Unit Conversions
*UnitAPIApi* | [**list_all_units**](docs/UnitAPIApi.md#list_all_units) | **GET** /v2/unit | Retrieve a collection of Units
*UnitAPIApi* | [**query_unit_conversions**](docs/UnitAPIApi.md#query_unit_conversions) | **POST** /v2/conversion/query | Retrieve a List of Unit Conversions by a query
*UnitAPIApi* | [**query_units**](docs/UnitAPIApi.md#query_units) | **POST** /v2/unit/query | Retrieve a Unit by a query
*UnitAPIApi* | [**update_unit**](docs/UnitAPIApi.md#update_unit) | **POST** /v2/unit/{uuid} | Update Unit


## Documentation For Models

 - [AParticipatorySensingResourceRequestAPIModel](docs/AParticipatorySensingResourceRequestAPIModel.md)
 - [CollectionOfDataQueryCriteriaRequestAPIModel](docs/CollectionOfDataQueryCriteriaRequestAPIModel.md)
 - [CommandAPIModel](docs/CommandAPIModel.md)
 - [GatewayCreateDTO](docs/GatewayCreateDTO.md)
 - [GatewayDTO](docs/GatewayDTO.md)
 - [GatewayQueryDTO](docs/GatewayQueryDTO.md)
 - [GroupCreateDTO](docs/GroupCreateDTO.md)
 - [GroupDTO](docs/GroupDTO.md)
 - [GroupNodeDTO](docs/GroupNodeDTO.md)
 - [GroupUpdateDTO](docs/GroupUpdateDTO.md)
 - [ListOfParticipatorySensingDataAPIModel](docs/ListOfParticipatorySensingDataAPIModel.md)
 - [ListOfQueryCriteriaWithinATimeframeRequestAPIModel](docs/ListOfQueryCriteriaWithinATimeframeRequestAPIModel.md)
 - [ParticipatorySensingDataAPIModel](docs/ParticipatorySensingDataAPIModel.md)
 - [PhenomenonCreateDTO](docs/PhenomenonCreateDTO.md)
 - [PhenomenonDTO](docs/PhenomenonDTO.md)
 - [PhenomenonQueryDTO](docs/PhenomenonQueryDTO.md)
 - [PhenomenonUpdateDTO](docs/PhenomenonUpdateDTO.md)
 - [RegistryPairDTO](docs/RegistryPairDTO.md)
 - [RegistryRecordDTO](docs/RegistryRecordDTO.md)
 - [ResourceAnalyticsDataResponseAPIModel](docs/ResourceAnalyticsDataResponseAPIModel.md)
 - [ResourceCreateDTO](docs/ResourceCreateDTO.md)
 - [ResourceDTO](docs/ResourceDTO.md)
 - [ResourceLatestDataResponseAPIModel](docs/ResourceLatestDataResponseAPIModel.md)
 - [ResourceLatestValuesResponseAPIModel](docs/ResourceLatestValuesResponseAPIModel.md)
 - [ResourceQueryCriteriaRequestAPIModel](docs/ResourceQueryCriteriaRequestAPIModel.md)
 - [ResourceQueryCriteriaRequestWithinATimeframeAPIModel](docs/ResourceQueryCriteriaRequestWithinATimeframeAPIModel.md)
 - [ResourceQueryCriteriaWithinATimeframeResponseAPIModel](docs/ResourceQueryCriteriaWithinATimeframeResponseAPIModel.md)
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

