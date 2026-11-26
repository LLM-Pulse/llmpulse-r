# llmpulse::ShoppingRow

One row of /dimensions/shopping. Fields depend on view: products (product_key, title, domain, url, merchants, currency, currency_count, min_price, max_price, avg_rating, rating_votes, appearances, is_client, best_rank, models, last_seen_at) and merchants (merchant, appearances, products, currency, min_price, max_price, avg_price, avg_rating).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_key** | **character** | Stable grouping key of the product: its external id, else title: and the lowercased title (view&#x3D;products) | [optional] 
**title** | **character** |  | [optional] 
**domain** | **character** |  | [optional] 
**url** | **character** |  | [optional] 
**merchants** | **character** | The merchants the product card names (view&#x3D;products) | [optional] 
**merchant** | **character** | The merchant (view&#x3D;merchants) | [optional] 
**products** | **integer** | Distinct products the merchant sold (view&#x3D;merchants) | [optional] 
**currency** | **character** | Currency code the prices are in; null when no price names one | 
**currency_count** | **integer** | Currencies the product was priced in; above 1 the row reports its highest-priced listing (view&#x3D;products) | [optional] 
**min_price** | **numeric** |  | 
**max_price** | **numeric** |  | 
**avg_price** | **numeric** | Average price in currency (view&#x3D;merchants) | [optional] 
**avg_rating** | **numeric** |  | 
**rating_votes** | **integer** | Most rating votes any listing of the product showed (view&#x3D;products) | [optional] 
**appearances** | **integer** |  | 
**is_client** | **character** | Whether the product is identified as your brand&#39;s own (view&#x3D;products) | [optional] 
**best_rank** | **integer** | Best rank the product got in a card list (view&#x3D;products) | [optional] 
**models** | **array[character]** | Models that showed the product (view&#x3D;products) | [optional] [Enum: ] 
**last_seen_at** | **character** | The latest answer that showed the product (view&#x3D;products) | [optional] 


