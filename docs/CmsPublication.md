# llmpulse::CmsPublication


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**platform** | **character** |  | [optional] [Enum: [wordpress]] 
**site_url** | **character** |  | [optional] 
**status** | **character** | queued and sending are on their way; unknown means a send timed out and the next attempt looks the draft up before creating one; drafted carries remote_id and edit_url; failed carries error_code | [optional] [Enum: [queued, sending, unknown, drafted, failed]] 
**title** | **character** |  | [optional] 
**slug** | **character** |  | [optional] 
**source_url** | **character** | For an update task, the page the draft revises | [optional] 
**remote_id** | **integer** | WordPress post id of the draft | [optional] 
**remote_status** | **character** | WordPress status of the post when the draft was created (draft) | [optional] 
**remote_url** | **character** |  | [optional] 
**edit_url** | **character** | The post&#39;s edit screen in the WordPress admin | [optional] 
**error_code** | **character** | Why the send failed, the same token as error.meta.reason, for example reconnect_required, authorization_header_lost, missing_capability, firewall_blocked, timeout, unreachable or rejected | [optional] 
**created_at** | **character** |  | [optional] 
**sent_at** | **character** |  | [optional] 


