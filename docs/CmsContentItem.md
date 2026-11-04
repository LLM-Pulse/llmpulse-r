# llmpulse::CmsContentItem


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | WordPress post or page id | [optional] 
**type** | **character** |  | [optional] [Enum: [post, page]] 
**status** | **character** | WordPress status (publish, future, draft, pending or private) | [optional] 
**slug** | **character** |  | [optional] 
**title** | **character** | Plain-text title as the site renders it | [optional] 
**url** | **character** | The public link on the connected site; null when the site names a link on another host | [optional] 
**modified_at** | **character** |  | [optional] 
**excerpt** | **character** | Plain-text excerpt, up to 2,000 characters | [optional] 
**content_html** | **character** | Sanitized HTML (headings, paragraphs, lists, tables, quotes, code, links with href only), up to 200,000 characters | [optional] 
**content_truncated** | **character** |  | [optional] 


