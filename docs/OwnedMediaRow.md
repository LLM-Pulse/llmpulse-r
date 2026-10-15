# llmpulse::OwnedMediaRow

One row of /dimensions/owned_media. Fields depend on provider and view: videos (title, url, channel_name, channel_handle, channel_url, video_id, thumbnail_url, views, published_at), channels (key, name, handle, url, avatar_url, unique_videos), posts (url, caption, owner_handle, thumbnail_url, content_type, likes, comments, views, posted_at), profiles (handle, name, url, avatar_url, followers, unique_posts), own_citations (url, citation_date, position, model) and apps (domain, total_responses, rank, global_rank). Every view but own_citations carries citations and yours; videos, channels, posts and profiles carry avg_position.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **character** |  | [optional] 
**url** | **character** |  | [optional] 
**channel_name** | **character** |  | [optional] 
**channel_handle** | **character** | The video&#39;s channel handle, without the @ | [optional] 
**channel_url** | **character** |  | [optional] 
**video_id** | **character** |  | [optional] 
**key** | **character** | The channel key (handle:..., channel:... or name:...), accepted as profile by /dimensions/owned_media/citing_prompts | [optional] 
**name** | **character** |  | [optional] 
**handle** | **character** |  | [optional] 
**caption** | **character** |  | [optional] 
**owner_handle** | **character** |  | [optional] 
**thumbnail_url** | **character** | The post or video image. Our cached copy where one exists, so the link does not expire | [optional] 
**avatar_url** | **character** | The profile or channel image. Our cached copy where one exists | [optional] 
**content_type** | **character** | The post format on its platform: reel, post or tv on Instagram, post or pulse on LinkedIn, post elsewhere | [optional] 
**citations** | **integer** |  | [optional] 
**unique_videos** | **integer** |  | [optional] 
**unique_posts** | **integer** |  | [optional] 
**followers** | **integer** |  | [optional] 
**likes** | **integer** |  | [optional] 
**comments** | **integer** |  | [optional] 
**views** | **object** | View count as the platform reports it, a number or a numeric string, or null when unknown | [optional] 
**published_at** | **character** | Publication date as the platform reports it | [optional] 
**posted_at** | **character** | Publication date as the platform reports it (ISO 8601, or Unix seconds on TikTok) | [optional] 
**avg_position** | **numeric** | Average position of the citation in the answers (1 &#x3D; first); null when unknown | [optional] 
**yours** | **character** |  | [optional] 
**citation_date** | **character** |  | [optional] 
**position** | **integer** |  | [optional] 
**model** | **character** |  | [optional] 
**domain** | **character** | The app&#39;s store listing URL (provider&#x3D;mobile_apps) | [optional] 
**total_responses** | **integer** |  | [optional] 
**rank** | **integer** |  | [optional] 
**global_rank** | **integer** |  | [optional] 


