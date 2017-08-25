#!/usr/local/bin/python3.5

from kubernetes import client, config

def nodeReady(cond):
	for conItem in cond:
		#print("332", (conItem))
		#print("222", (conItem.to_dict()))
		if conItem.to_dict()['type'] == 'Ready':
			if conItem.to_dict()['status'] == 'True':
				return 'Ready'
			else:
				return 'NotReady'
	


# Configs can be set in Configuration class directly or using helper utility
config.load_kube_config()

v1 = client.CoreV1Api()
print("Listing nodes with their IPs:")
ret = v1.list_node(watch=False)
for i in ret.items:
    #print("11111", i.status.conditions[0])
    print("%s\t%s\t%s" %(i.metadata.name, i.status.addresses[0].address, nodeReady(i.status.conditions)))

