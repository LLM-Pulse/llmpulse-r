# llmpulse::UpdateProjectRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand_name** | **character** | Brand name used to detect mentions. Applies to future runs; it does not rewrite history | [optional] 
**description** | **character** | What the brand does. Context for Recommendations and GEO Writer (Brand Book) | [optional] 
**industry** | **character** | Single industry key (e.g. SAAS); unknown keys are rejected | [optional] 
**business_model** | **character** | Business model key (e.g. B2B_SAAS); unknown keys are rejected | [optional] 
**business_model_other** | **character** | Free-text business model, only accepted when business_model is OTHER; rejected against any other key | [optional] 
**target_audience** | **character** | Who the brand sells to (Brand Book) | [optional] 
**brand_voice** | **character** | Tone of voice guidance for generated content (Brand Book) | [optional] 
**goals** | **character** | What the brand wants to achieve. Context for GEO Writer and prompt suggestions | [optional] 
**primary_products** | **array[character]** | Full replacement list of the main products or services | [optional] 
**matching_names** | **array[character]** | FULL replacement list of the brand-name variants used to detect mentions; send every variant to keep | [optional] 


