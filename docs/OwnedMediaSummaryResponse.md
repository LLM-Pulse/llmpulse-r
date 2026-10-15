# llmpulse::OwnedMediaSummaryResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**provider** | **character** |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**connected** | **character** | Whether a profile is claimed on the platform (on overview, on any platform) | [optional] 
**kpis** | [**OwnedMediaKpis**](OwnedMediaKpis.md) |  | [optional] 
**previous** | [**OwnedMediaSummaryResponsePrevious**](OwnedMediaSummaryResponse_previous.md) |  | [optional] 
**changes** | [**OwnedMediaKpiChanges**](OwnedMediaKpiChanges.md) |  | [optional] 
**weekly** | [**array[OwnedMediaWeek]**](OwnedMediaWeek.md) |  | [optional] 
**by_model** | [**array[OwnedMediaModelShare]**](OwnedMediaModelShare.md) | Null for provider&#x3D;overview | [optional] 
**by_country** | [**array[OwnedMediaCountryShare]**](OwnedMediaCountryShare.md) | Null for provider&#x3D;overview | [optional] 
**content_types** | [**array[OwnedMediaContentTypeShare]**](OwnedMediaContentTypeShare.md) | Social and YouTube providers only | [optional] 
**age_buckets** | [**array[OwnedMediaAgeBucketShare]**](OwnedMediaAgeBucketShare.md) | Social and YouTube providers only. Posts or videos without a known publication date are left out | [optional] 
**stores** | [**array[OwnedMediaStoreTotals]**](OwnedMediaStoreTotals.md) | provider&#x3D;mobile_apps only | [optional] 
**platforms** | [**array[OwnedMediaPlatformRollup]**](OwnedMediaPlatformRollup.md) | provider&#x3D;overview only, one row per platform the caller can read | [optional] 
**request_id** | **character** |  | [optional] 


