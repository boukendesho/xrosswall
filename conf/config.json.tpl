{
    "inbounds": [
        {
	    "listen": "127.0.0.1",
            "port": ${V2RAY_PORT},
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "${V2RAY_UUID}",
			"alterId": 0
                    }
                ]
            },
            "streamSettings": {
                "network": "ws"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom",
	    "settings": {}
        }
    ]
}
