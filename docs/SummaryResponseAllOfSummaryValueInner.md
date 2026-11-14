# llmpulse::SummaryResponseAllOfSummaryValueInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actor** | [**Actor**](Actor.md) |  | [optional] 
**metric** | **character** |  | [optional] 
**total** | **numeric** | Count metrics sum the buckets; rate, position and sentiment metrics average them. ai_visibility_score (weighted_visibility) is the window&#39;s points divided by its data days (the days with responses under the filters), the number the app shows, whatever the granularity. | [optional] 
**aggregation** | **character** | How total combines the buckets (average for ai_visibility_score, a per-data-day score) | [optional] [Enum: [sum, average]] 
**min** | **numeric** |  | [optional] 
**max** | **numeric** |  | [optional] 
**last** | **numeric** |  | [optional] 


