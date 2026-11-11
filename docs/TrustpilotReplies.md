# llmpulse::TrustpilotReplies

provider=trustpilot only. How the brand answers its Trustpilot reviews, on the profile of the project's own domain, among the reviews LLM Pulse holds for it (the newest ones from each monthly read, not every review on Trustpilot), whatever the date window. Every field is null until the profile has been read

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reviews_held** | **integer** | Reviews held for the profile | [optional] 
**replied_count** | **integer** | Reviews held that the brand replied to | [optional] 
**not_replied_count** | **integer** | Reviews held that the brand has not replied to | [optional] 
**reply_rate_pct** | **numeric** | replied_count over reviews_held, on a 0-100 scale; null when no review is held | [optional] 
**median_reply_hours** | **numeric** | Median hours from publication to reply over the replied reviews held that carry both dates (a reply dated before its review is left out); null when there is none | [optional] 


