# llmpulse::ProjectDetailsAllOfSearchConsole

Google Search Console connection of the project. connected means the Search Console endpoints can answer; reconnect_required means Google refused the stored access, so the endpoints return ERR_SEARCH_CONSOLE_ACCESS_REVOKED until the property is reconnected at connect_url; not_connected means the endpoints return ERR_SEARCH_CONSOLE_NOT_CONNECTED.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **character** |  | [optional] [Enum: [connected, reconnect_required, not_connected]] 
**property** | **character** | The connected property (e.g. sc-domain:example.com), null when not connected | [optional] 
**connect_url** | **character** | The in-app page where the property is connected or reconnected (Preferences &gt; Project Settings &gt; Data Connections) | [optional] 


