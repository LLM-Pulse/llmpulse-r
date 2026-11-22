# llmpulse::BingWebmasterTimeseriesResponse


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
**data_through** | **character** | The last day synced for the site. Later days are missing, not zero. | [optional] 
**granularity** | **character** |  | [optional] 
**data** | [**array[BingWebmasterTimeseriesResponseDataInner]**](BingWebmasterTimeseriesResponse_data_inner.md) | One bucket per day, week (starting Monday) or month that has synced days. Days without data are left out, not reported as zero. | [optional] 
**request_id** | **character** |  | [optional] 


