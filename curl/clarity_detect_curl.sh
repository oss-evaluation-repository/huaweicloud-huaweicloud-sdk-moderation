#!/bin/sh

#
# Here, if we get the token use the gettoken_curl.sh
#
TOKEN=''
curl -X POST https://moderation.cn-north-4.myhuaweicloud.com/v1.0/moderation/image/clarity-detect \
  --header 'Content-Type: application/json' \
  --header "X-Auth-Token: $TOKEN" -d'
 {
      "image":"",
      "url":"https://sdk-obs-source-save.obs.cn-north-4.myhuaweicloud.com/moderation-clarity-detect.jpg",
      "threshold": 0.8,
}'
# if you want to use image paramter, change file to base64,please choose only one paramter in data or url