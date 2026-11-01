# llmpulse::ProjectDetailsAllOfPitchRun

The one run of a pitch project; null for a tracked project. Its answers are dated between launched_at and settled_at, so read its metrics with from set to the launched_at date (the default ranges leave out a pitch older than a few weeks)

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **character** | starting before the run begins, running while answers arrive, ready once every AI model has answered or stopped trying | [optional] [Enum: [starting, running, ready]] 
**launched_at** | **character** |  | [optional] 
**settled_at** | **character** |  | [optional] 
**models** | **array[character]** | The AI models the run asks, fixed when it starts | [optional] [Enum: ] 
**answers_expected** | **integer** |  | [optional] 
**answers_received** | **integer** |  | [optional] 


