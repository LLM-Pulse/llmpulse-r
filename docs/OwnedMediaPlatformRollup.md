# llmpulse::OwnedMediaPlatformRollup


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **character** |  | [optional] [Enum: [youtube, mobile_apps, instagram, facebook, tiktok, linkedin, trustpilot, reddit]] 
**connected** | **character** |  | [optional] 
**total** | **integer** |  | [optional] 
**yours** | **integer** |  | [optional] 
**share_pct** | **numeric** |  | [optional] 
**weekly** | [**array[OwnedMediaPlatformRollupWeeklyInner]**](OwnedMediaPlatformRollup_weekly_inner.md) |  | [optional] 
**activity** | [**array[OwnedMediaPlatformActivityPeriod]**](OwnedMediaPlatformActivityPeriod.md) | One date/citation row per project tracking period that holds a run inside the window; a period whose runs all fell before from is left out | [optional] 


