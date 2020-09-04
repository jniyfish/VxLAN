# 啟動 alpine linux container 1 (alpine1)
$ docker run -dit --name alpine1 alpine ash
b75464efd30bf09e118450de2abaeb35549e732bac5805671f1e6e97cd970897

# 啟動 alpine linux container 2 (alpine2)
$ docker run -dit --name alpine2 alpine ash
16aa4a102b14de3e151cb5e19522925bb4e143034d5b2aac4ce239c79716b703 

# 檢視目前 software bridge status (需安裝 bridge-utils 套件)
$ brctl show
bridge name	    bridge id		      STP enabled	    interfaces
docker0		    8000.024284431eec	  no		        vethbddc381
							                            vethee2a421

# 檢視 docker bridge network 狀態
$ docker network inspect bridge
[
    {
        # 使用的 docker network 名稱為 "bridge"
        "Name": "bridge",
        "Id": "a1c7b6f8038999f034b8e64ae66885fa8094a020a306ce4f5b5692d7230890b0",
        "Created": "2018-07-09T01:23:03.98371109Z",
        "Scope": "local",
        # 使用的 driver 為 bridge
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.17.0.0/16",
                    "Gateway": "172.17.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            # 此為 alpine2 所使用的網路 (對應到上面的 container ID)
            "16aa4a102b14de3e151cb5e19522925bb4e143034d5b2aac4ce239c79716b703": {
                "Name": "alpine2",
                "EndpointID": "4dc3947583ece828dd4371351501e7d0ba9fa149ac5373ea4ddb9466d333b85d",
                "MacAddress": "02:42:ac:11:00:03",
                "IPv4Address": "172.17.0.3/16",
                "IPv6Address": ""
            },
            # 此為 alpine1 所使用的網路 (對應到上面的 container ID)
            "b75464efd30bf09e118450de2abaeb35549e732bac5805671f1e6e97cd970897": {
                "Name": "alpine1",
                "EndpointID": "ea0138a2c51812f3f142db086e1690f6696e36ff972c826727be30e3c8b8cb41",
                "MacAddress": "02:42:ac:11:00:02",
                "IPv4Address": "172.17.0.2/16",
                "IPv6Address": ""
            }
        },
        "Options": {
            "com.docker.network.bridge.default_bridge": "true",
            "com.docker.network.bridge.enable_icc": "true",
            "com.docker.network.bridge.enable_ip_masquerade": "true",
            "com.docker.network.bridge.host_binding_ipv4": "0.0.0.0",
            # 使用的 bridge 名稱
            "com.docker.network.bridge.name": "docker0",
            "com.docker.network.driver.mtu": "1500"
        },
        "Labels": {}
    }
]
