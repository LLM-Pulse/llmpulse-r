# llmpulse::ProjectDetailsAllOfSearchConsole

Google Search Console connection of the project. connected means the Search Console endpoints can answer; reconnect_required means Google refused the stored access and the property must be reconnected in Preferences > Project Settings > Data Connections.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **character** |  | [optional] [Enum: [connected, reconnect_required, not_connected]] 
**property** | **character** | The connected property (e.g. sc-domain:example.com), null when not connected | [optional] 


