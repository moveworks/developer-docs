curl --location --request PUT 'https://<YOUR_INSTANCE>/JSSResource/computers/id/<device_id>' \
--header 'Content-Type: application/xml' \
--header 'Accept: application/xml' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--data '
<computer>
    <general>
        <remote_management>
            <managed>false</managed>
        </remote_management>
    </general>
    <extension_attributes>
        <extension_attribute>
            <name>Lifecycle Status</name>
            <value>Retired</value>
        </extension_attribute>
    </extension_attributes>
</computer>'
