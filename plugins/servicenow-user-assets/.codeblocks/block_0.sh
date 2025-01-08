curl --request GET \
--url '[https://your-domain.service-now.com/api/now/table/alm_asset?](https://api/now/table/alm_asset?sysparm_query=assigned_to.email%3Dexample%40email.com&sysparm_fields=model_category.name,display_name,asset_tag)sysparm_query=assigned_to.email%3Dexample%[40email.com](http://40email.com/)&sysparm_fields=model_category.name%2C%20display_name%2C%20asset_tag\
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
