# llmpulse::CustomReportWidget


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **character** |  | 
**label** | **character** |  | 
**kind** | **character** |  | [Enum: [kpi_grid, timeseries, donut, bar, table]] 
**width** | **character** |  | [Enum: [half, full]] 
**available** | **character** | false when the widget&#39;s data source (web analytics, agent analytics, owned media) is not connected | 
**data** | **map(object)** | Shaped by kind. timeseries: series [{ name, color, points [{ date, value }] }]. donut: slices [{ name, value, color }]. bar: bars [{ label, value, color }]. kpi_grid: values and changes (null unless the report compares with the previous period); performance_kpis values hold responses, weighted_visibility, citation_rate, avg_mention_position, top_1_mention_rate and top_3_mention_rate. table: rows, one object per row; the monthly_breakdown widget has one row per calendar month of the window with month, from, to, partial (a month the window cuts), responses, mentions, visibility, weighted_visibility, sov_share, citations, citation_rate, avg_mention_position, top_1_mention_rate and top_3_mention_rate. top_1_mention_rate and top_3_mention_rate are the percentage of answers to non-brand prompts that name the brand first, or among the first three brands, and null when the window holds no such answer. Null when the widget is not available. | [optional] 


