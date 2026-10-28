# llmpulse::CreateApiKeyRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | A label to recognize the key, for example the customer it is for | [Max. length: 100] 
**scope** | **character** | read (default) only reads data; read_write can also create, change and delete within the key&#39;s projects | [optional] [default to &quot;read&quot;] [Enum: [read, read_write]] 
**project_ids** | **array[integer]** | The projects the key is limited to, at least one | [Min. items: 1] 


