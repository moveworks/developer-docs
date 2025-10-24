$CONCAT(["general.name==*", data.devicename, "*;","(general.lastContactTime=ge='", data.start_time,"' and general.lastContactTime=le='", data.end_time, "')"])
