# llmpulse::LlmsTxtTechnicalGeoReportResultData

The files and generation details once the report has completed; null before that

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**llms_txt_content** | **character** | Current llms.txt, manual edits included | [optional] 
**llms_full_txt_content** | **character** | Current llms-full.txt, manual edits included | [optional] 
**manually_edited_at** | **character** | When the files were last edited by hand in the app, the API or MCP; null while they are as generated | [optional] 
**content_version** | **character** | Send it back as content_version when editing the files. It changes on every save | [optional] 
**original_llms_txt_content** | **character** | The generated llms.txt, kept from the first manual edit; null while the files are as generated | [optional] 
**original_llms_full_txt_content** | **character** | The generated llms-full.txt, kept from the first manual edit; null while the files are as generated | [optional] 
**crawl_data** | **object** |  | [optional] 
**metadata** | **object** | Generation details, including output_language_code, the language the files were written in | [optional] 
**pages_crawled** | **integer** |  | [optional] 
**generation_time_ms** | **integer** |  | [optional] 
**openai_tokens_used** | **integer** |  | [optional] 


