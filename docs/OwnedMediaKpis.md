# llmpulse::OwnedMediaKpis


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **integer** | Citations of the platform in the window, yours and everyone else&#39;s | [optional] 
**yours** | **integer** | Citations of your own profiles and their content | [optional] 
**your_profile** | **integer** | Citations of your profile or channel pages. Null for mobile_apps and overview | [optional] 
**your_content** | **integer** | Citations of your posts or videos. Null for mobile_apps and overview | [optional] 
**share_pct** | **numeric** | yours as a percentage of total (0-100) | [optional] 
**unique_subreddits** | **integer** | Number of cited subreddits (provider&#x3D;reddit; null or omitted for other providers) | [optional] 
**unique_authors** | **integer** | Number of cited Reddit authors (provider&#x3D;reddit; null or omitted for other providers) | [optional] 
**positive_pct** | **numeric** | Positive sentiment among rated Reddit citations, as a percentage (provider&#x3D;reddit; null or omitted for other providers) | [optional] 
**connected_count** | **integer** | provider&#x3D;overview only. The platforms with a connected profile, channel or app, out of the rows in platforms (the Connected sources card). It describes the current setup, so previous.kpis and changes leave it out | [optional] 


