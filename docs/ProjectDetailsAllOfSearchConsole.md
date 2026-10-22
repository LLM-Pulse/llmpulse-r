# llmpulse::ProjectDetailsAllOfSearchConsole

Google Search Console connection of the project, judged by its primary property. connected means the Search Console endpoints can answer; reconnect_required means Google refused the primary property's stored access, so reads without property return ERR_SEARCH_CONSOLE_ACCESS_REVOKED until it is reconnected at connect_url, while a property GET /search_console/properties lists as connected, or property=all, still answers; not_connected means the endpoints return ERR_SEARCH_CONSOLE_NOT_CONNECTED.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **character** |  | [optional] [Enum: [connected, reconnect_required, not_connected]] 
**property** | **character** | The primary property (e.g. sc-domain:example.com), null when not connected | [optional] 
**connect_url** | **character** | The in-app page where the property is connected or reconnected (Preferences &gt; Project Settings &gt; Data Connections) | [optional] 
**properties_count** | **integer** | Connected properties Google still accepts (reconnect_required ones excluded); GET /search_console/properties lists every property with its status | [optional] 


