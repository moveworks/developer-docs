{
    "type": "object",
    "properties": {
        "meta": {
            "type": "object",
            "properties": {
                "total": {
                    "type": "integer"
                }
            }
        },
        "jobs": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "title": {
                        "type": "string"
                    },
                    "absolute_url": {
                        "type": "string"
                    },
                    "id": {
                        "type": "integer"
                    },
                    "location": {
                        "type": "object",
                        "properties": {
                            "name": {
                                "type": "string"
                            }
                        }
                    },
                    "metadata": {
                        "type": "array",
                        "items": {
                            "type": "object",
                            "properties": {
                                "value": {
                                    "type": "array",
                                    "items": {
                                        "type": "string"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
