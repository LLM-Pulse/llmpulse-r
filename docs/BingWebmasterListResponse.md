# llmpulse::BingWebmasterListResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**site** | **character** | The connected site, as Bing Webmaster Tools names it (e.g. https://example.com/) | [optional] 
**sync_status** | **character** | State of the daily sync: pending, syncing, completed, failed or on_hold (the data already synced still answers, but stops updating until the site is reconnected) | [optional] 
**last_synced_at** | **character** | When the site last synced. Null before its first sync, or while history_current is false. | [optional] 
**history_current** | **character** | False right after the site was changed and before its first sync. Until then data is empty and data_through is null. | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**data_through** | **character** | The last week_ending synced for the site (the Friday that closes a Bing week) | [optional] 
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** | Distinct pages or queries found in the weeks of the window | [optional] 
**sort** | **character** |  | [optional] 
**weeks_covered** | **integer** | Weeks with data whose week_ending falls in the window | [optional] 
**data** | [**array[BingWebmasterListResponseDataInner]**](BingWebmasterListResponse_data_inner.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


