# llmpulse::PromptGenerationRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**source** | **character** | Which Add prompts generator to run | [Enum: [website, keyword, topic, reddit, paa, reputational, translate, search_console]] 
**query** | **character** | keyword: optional keyword or research query. topic and reddit: required topic (reddit: the brand when search_type&#x3D;brand). paa: one keyword, as an alternative to keywords. | [optional] [Max. length: 500] 
**count** | **integer** | keyword and topic: how many suggestions to ask for, capped by the prompt slots left | [optional] [default to 20] [Max: 100] [Min: 1] 
**country_code** | **character** | ISO 3166-1 alpha-2 country of the suggestions (default the project country) | [optional] 
**language_code** | **character** | ISO language code of the suggestions (default the project language) | [optional] 
**competitor_id** | **integer** | keyword: write the suggestions around this competitor of the project | [optional] 
**search_type** | **character** | reddit: search discussions of a topic or a brand | [optional] [default to &quot;topic&quot;] [Enum: [topic, brand]] 
**keywords** | **array[character]** | paa: up to 5 keywords; each is a People Also Ask lookup counted against the account&#39;s 24-hour allowance | [optional] [Max. items: 5] 
**source_country_code** | **character** | translate: country of the prompts to translate | [optional] 
**source_language_code** | **character** | translate: language of the prompts to translate | [optional] 
**min_words** | **integer** | search_console: skip queries shorter than this many words | [optional] [default to 0] [Max: 10] [Min: 0] 
**all_countries** | **character** | search_console: include queries from every country instead of country_code only | [optional] [default to FALSE] 


