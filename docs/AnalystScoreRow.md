# llmpulse::AnalystScoreRow

One analyst model's score of one brand (a subject in a custom study) on one attribute of one dimension

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **character** | Brand name; the subject name in a custom study | 
**is_project** | **character** | Whether it is the project&#39;s own brand; in a custom study, the focus subject | 
**model** | **character** |  | [Enum: [chatgpt, perplexity, gemini, deepseek, grok, claude]] 
**report_date** | **character** |  | 
**dimension** | **character** | Dimension key, as the dimension filter takes it | 
**dimension_name** | **character** |  | 
**attribute** | **character** | Attribute key within the dimension | 
**attribute_name** | **character** |  | 
**score** | **object** | The 0-100 score as the analyst model wrote it, normally a number, or null when it gave none. Deliberately untyped, as the model&#39;s output is stored without coercion | 
**reasoning** | **character** | Why the model gave this score; null when it gave no reasoning | 


