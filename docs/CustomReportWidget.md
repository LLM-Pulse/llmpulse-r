# llmpulse::CustomReportWidget


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **character** |  | 
**label** | **character** |  | 
**kind** | **character** |  | [Enum: [kpi_grid, timeseries, donut, bar, table]] 
**width** | **character** |  | [Enum: [half, full]] 
**available** | **character** | false when the widget&#39;s data source (web analytics, agent analytics, owned media) is not connected | 
**data** | **map(object)** | Shaped by kind. timeseries: series [{ name, color, points [{ date, value }] }]. donut: slices [{ name, value, color }]. bar: bars [{ label, value, color }]. kpi_grid: values and changes (null unless the report compares with the previous period). table: rows, one object per row. Null when the widget is not available. | [optional] 


