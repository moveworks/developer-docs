$CONCAT(["userAndLocation.email==", data.email, ";","(general.lastContactTime=ge='",data.start_time,"' and general.lastContactTime=le='", data.end_time, "')"])
