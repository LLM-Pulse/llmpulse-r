# llmpulse::ProjectDetailsAllOfAgentTraffic

Agent traffic source behind /metrics/agent_traffic. connected and reconnect_required (the source refused the stored access, so syncing stopped) both answer from stored data; imported means no live source is connected but imported logs answer; not_connected means it returns ERR_AGENT_TRAFFIC_NOT_CONNECTED.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **character** |  | [optional] [Enum: [connected, reconnect_required, imported, not_connected]] 
**provider** | **character** | The connected source (e.g. cloudflare_graphql, bunny_cdn, s3 or the log drain&#39;s provider), null without a live source | [optional] 
**connect_url** | **character** | The in-app Agent Analytics page, where a source is connected or reconnected | [optional] 


