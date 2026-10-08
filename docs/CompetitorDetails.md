# llmpulse::CompetitorDetails


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**brand_name** | **character** |  | [optional] 
**domain** | **character** |  | [optional] 
**matching_names** | **array[character]** |  | [optional] 
**google_play_id** | **character** |  | [optional] 
**app_store_id** | **character** |  | [optional] 
**citation_match_mode** | [**CitationMatchMode**](CitationMatchMode.md) |  | [optional] [Enum: ] 
**citation_match_path** | **character** | Set only when citation_match_mode is path_prefix | [optional] 
**google_play_name** | **character** | English app name on Google Play, when the competitor has an Android app | [optional] 
**app_store_name** | **character** | English app name on the App Store, when the competitor has an iOS app | [optional] 
**google_play_icon_url** | **character** |  | [optional] 
**app_store_icon_url** | **character** |  | [optional] 
**color** | **character** |  | [optional] 
**processing** | **character** | True while the competitor&#39;s historical mentions are being recalculated | [optional] 
**created_at** | **character** |  | [optional] 
**request_id** | **character** |  | [optional] 


