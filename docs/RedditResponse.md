# llmpulse::RedditResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**page** | **integer** |  | 
**per_page** | **integer** |  | 
**total** | **integer** | Rows matching the filters across every page | 
**request_id** | **character** |  | 
**view** | **character** | subreddits, authors, threads or breakdowns | 
**from** | **character** | Start of the window, 30 days back by default | 
**to** | **character** |  | 
**citations** | **integer** | Reddit citations after the filters (view&#x3D;breakdowns) | [optional] 
**data** | [**array[RedditRow]**](RedditRow.md) |  | 


