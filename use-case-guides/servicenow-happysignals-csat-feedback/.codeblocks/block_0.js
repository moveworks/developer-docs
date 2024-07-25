var MoveworksApiSdk = Class.create();
 
MoveworksApiSdk.prototype = {
 
	initialize: function () {
    	this.baseUrl = "https://api.moveworks.com"
	},
 
	request: function (method, path, body) {
    	var req = new sn_ws.RESTMessageV2();
    	req.setHttpMethod(method);
    	req.setEndpoint(this.baseUrl + path);
        req.setRequestHeader("Authorization", "Bearer " +     gs.getProperty('moveworks.api.bearer_auth_token'));
        req.setRequestBody(JSON.stringify(body));
    	req.setHttpTimeout(60000);
    	response = req.execute();
    	return response;
	},
 
	send_message: function (recipients, msg, event_id) {
    	return this.request("post", "/rest/v1/events/" + event_id + "/messages/send", {
        	"recipients": recipients,
        	"message": msg
    	});
	},
 
	type: 'MoveworksApiSdk'
};

