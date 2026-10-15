# llmpulse::OwnedMediaProfile


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **character** |  | [optional] 
**handle** | **character** | The handle, page id, store app id, subreddit or username | [optional] 
**kind** | **character** |  | [optional] [Enum: [profile, app, subreddit, username]] 
**main** | **character** | True for the main profile of its platform (or store), false for an extra one | [optional] 
**store** | **character** | google_play or app_store for an app; null elsewhere | [optional] 
**name** | **character** |  | [optional] 
**avatar_url** | **character** |  | [optional] 
**scrape_status** | **character** | State of the profile scrape that reads its name and avatar: pending, running, ready, failed or skipped; null when none has started or the platform has none | [optional] 


