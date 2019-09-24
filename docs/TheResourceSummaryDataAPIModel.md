# TheResourceSummaryDataAPIModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**average** | **dict(str, float)** | Average value of the aggregate arrays available above | [optional] 
**day** | **list[float]** | The 42 latest 1-day aggregates computed by the system for the Resource | [optional] 
**day_cost** | **list[float]** | The 42 latest 1-day electricity cost values computed by the system for the Resource if enabled | [optional] 
**key_name** | **str** | The Resource uniform resource identifier | [optional] 
**latest** | **float** | The last value the system received from the Resource | [optional] 
**latest_string** | **str** | The value of a string value Resource | [optional] 
**latest_time** | **int** | The last time the system received a new measurement from the Resource | [optional] 
**max** | **dict(str, int)** | Maximum values of the aggregate arrays available above | [optional] 
**min** | **dict(str, int)** | Minimum values of the aggregate arrays available above | [optional] 
**minutes5** | **list[float]** | The 42 latest 5-minute aggregates computed by the system for the Resource | [optional] 
**minutes5cost** | **list[float]** | The 42 latest 5-minute electricity cost values computed by the system for the Resource if enabled | [optional] 
**minutes60** | **list[float]** | The 42 latest 1-hour aggregates computed by the system for the Resource | [optional] 
**minutes60cost** | **list[float]** | The 42 latest 1-hour electricity cost values computed by the system for the Resource if enabled | [optional] 
**month** | **list[float]** | The 42 latest 1-month aggregates computed by the system for the Resource | [optional] 
**month_cost** | **list[float]** | The 42 latest 1-month electricity cost values computed by the system for the Resource if enabled | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


