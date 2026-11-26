# llmpulse::PromptsImportRequestRowsInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prompt** | **character** | The prompt text, up to 2,000 bytes of UTF-8 text (about 2,000 characters in English, fewer with accented letters or non-Latin scripts). A longer new prompt skips the row, which comes back in row_errors; a row matching a prompt the project already tracks counts as a duplicate | 
**country_code** | **character** | ISO 3166-1 alpha-2 code or country name (default the project country) | [optional] 
**language_code** | **character** | ISO language code or language name (default the project language) | [optional] 
**tags** | **array[character]** | Tag names for this prompt, created when missing | [optional] 


