# Steps

# Idea Wall
This awesome application lets you post ideas, to a wall.  Clue is in the name, hey?

This application is not actually a genuine app, it's to be used in the docker/kubernetes workshop.

## Dependencies
This application writes its data to Redis, so you need to have a redis to connect it to.

## Building & Running
The following steps will get you into a working state:

  - `npm install`
  - `npm run assets`
  - set environment variables `REDIS_HOST` and `REDIS_PASSWORD` to the right values
  - `npm run start`

The application should then be on http://127.0.0.1:9000


### Issues found

* eu-west1-c region not found

---

### Deploy 

1. install gcloud sdk
2. install terraform
3. gcloud auth login
4. ./deploy.sh

### Support China 

|  | gcloud | kubectl | service | 
| ------| ------ | ------ | ------ |
| **office** | &#10004; | &#10004; | &#10004; |
| **vpn** | &#10004; | &#10004; | &#10004; |
| **home** | &#65794; | &#65794; | &#10004; |


### Asia Region Service Accessing

|Region\Action  | Office TW VPN(Xian DC) | Office | Home | Home TW VPN(Xian DC) | 
| ------| ------ | ------ | ------ | ------ |
| **Asia-southeast1** | ![office-xian](./asserts/images/southeast-office-xian-vpn.png) | ![office](./asserts/images/southeast-office.png) | ![home](./asserts/images/southeast-home.png) | ![home-xian](./asserts/images/southeast-home-xian-vpn.png) |
| **Asia-east1** | ![office-xian](./asserts/images/east-office-xian-vpn.png) | ![office](./asserts/images/east-office.png) | ![office](./asserts/images/east-home.png) | ![home-xian](./asserts/images/east-home-xian-vpn.png) |
| **Asia-northeast1** | ![office-xian](./asserts/images/northeast-office-xian-vpn.png) | ![office](./asserts/images/northeast-office.png) | ![home](./asserts/images/northeast-home.png) | ![home-xian](./asserts/images/northeast-home-xian-vpn.png) |

### Asia Region Dev building service - kubectl get pods > /dev/null 

|Region\Action  | Office TW VPN(Xian DC) | Office | Home | Home TW VPN(Xian DC) | 
| ------| ------ | ------ | ------ | ------ |
| **Asia-southeast1** | 0.13s user<br/> 0.02s system<br/> 22% cpu<br/> 0.631 total | 0.13s user<br/> 0.02s system<br/> 30% cpu<br/> 0.494 total | timeout | 0.13s user<br/> 0.02s system<br/> 23% cpu<br/> 0.610 total |
| **Asia-east1** | 0.42s user<br/> 0.07s system<br/> 53% cpu<br/> 0.905 total | 0.13s user<br/> 0.02s system<br/> 25% cpu<br/> 0.594 total | timeout | 0.14s user<br/> 0.02s system<br/> 29% cpu<br/> 0.536 total |
| **Asia-northeast1** | 0.13s user<br/> 0.02s system<br/> 16% cpu<br/> 0.841 total | 0.44s user<br/> 0.08s system<br/> 31% cpu<br/> 1.643 total | timeout | 0.13s user<br/> 0.02s system<br/> 23% cpu<br/> 0.630 total |