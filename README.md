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

|  | gcloud | terraform | kubectl | service | 
| ------| ------ | ------ | ------ | ------ |
| **office** | &#10004; | &#10004; | &#10004; | &#10004; |
| **home** | &#65794; | &#65794; | &#65794; | &#65794; |


### Asia Region Service Accessing


### Asia Region Dev building service - kubectl get pods > /dev/null 

|Region\Action  | TW VPN(Xian DC) | Office | Home | 
| ------| ------ | ------ | ------ |
| **Asia-southeast1** | &#10004; | &#10004; | &#10004; | &#10004; |
| **Asia-east1** | &#65794; | &#65794; | &#65794; | &#65794; |
| **Asia-northeast1** | 0.13s user<br/> 0.02s system<br/> 16% cpu<br/> 0.841 total | 0.72s user<br/> 0.15s system<br/> 25% cpu<br/> 3.481 total | &#65794; | &#65794; |