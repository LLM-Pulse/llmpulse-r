# llmpulse::PeecExportImportResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**import_id** | **integer** |  | 
**status** | **character** | The import was accepted and finishes in the background | [Enum: [started]] 
**prompts** | **integer** | Distinct prompts of the file, per country and language; each becomes a tracked prompt of the project | 
**new_prompts** | **integer** | The prompts the project does not hold yet, counted against the plan | 
**planned_answers** | **integer** | Weekly answers the import files (prompts x tracked AI models x weeks) | 
**models** | **map(character)** | Each AI model name of the file that is imported, with the tracked AI model its answers are filed under | 
**skipped_models** | **array[character]** | AI model names of the file whose answers are skipped, because the account does not track them | 
**detected_brands** | **array[character]** | Brand names the export&#39;s mentions column lists (up to 50), none of them created as competitors | 
**app_url** | **character** | Opens the project&#39;s prompts in the app | 
**request_id** | **character** |  | 


