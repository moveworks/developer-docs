curl --location 'https://<YOUR_INSTANCE>.jamfcloud.com/JSSResource/computerinvitations/invitation/0' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/xml; charset=utf-8' \
--header 'Accept: application/xml' \
--data-raw '
<computer_invitation>
  <invitation_type>DEFAULT</invitation_type>
  <expiration_date>{{expiration_date}}</expiration_date>
  <ssh_username>{{username}}</ssh_username>
  <ssh_password>{{password}}</ssh_password>
  <multiple_uses_allowed>false</multiple_uses_allowed>
  <create_account_if_does_not_exist>false</create_account_if_does_not_exist>
  <hide_account>false</hide_account>
  <lock_down_ssh>false</lock_down_ssh>
  <enroll_into_site>
    <id>{{site_id}}</id>
    <name>{{site_name}}</name>
  </enroll_into_site>
  <keep_existing_site_membership>false</keep_existing_site_membership>
  <site>
    <id>{{site_id}}</id>
    <name>{{site_name}}</name>
  </site>
  <computer>
    <general>
      <name>{{Device_name}}</name>
      <department>{{Department}}</department>
      <userEmail>{{UserEmail}}</userEmail>
    </general>
    <hardware>
      <serial_number>{{Serial_Number}}</serial_number>
    </hardware>
    <location>
      <username>{{Username}}</username>
    </location>
  </computer>
</computer_invitation>'
