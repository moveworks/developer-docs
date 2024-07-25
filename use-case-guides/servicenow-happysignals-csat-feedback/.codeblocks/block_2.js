(function executeRule(current, previous /*null when async*/) {

var happyLinkCreator = new x_pgo_happysignals.HappyLinkCreator();

var url = happyLinkCreator.createLink(current);

var message = 'Your case "' + current.number + ' - ' + current.short_description + '" has been resolved with the following notes:<br>Please click <a href="'+ url + '">here</a> to <b>accept the resolution</b> and rate your experience.<br>If your issue was not resolved, please reopen the ticket!';

var event_id="REPLACE_ME";

var moveworksAPI = new MoveworksApiSdk();

moveworksAPI.send_message([current.caller_id.email.toString()], message, event_id);

})(current, previous);
