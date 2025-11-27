curl --location --request PUT 'https://{{YOUR_INSTANCE}}/JSSResource/computers/id/{{device_id}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--data-raw '<computer>
    <general>
        <asset_tag>{{asset_tag}}</asset_tag>
    </general>
</computer>'
