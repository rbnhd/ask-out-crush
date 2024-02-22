[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

# Ask your crush out
### A simple NGINX docker image, which displays a dynamic webpage to ask your crush out on a date

### Pre-requisites
* Install docker: https://docs.docker.com/engine/install/

### How to build image
* Clone the git repo and build the image.
    ```
    $ git clone https://github.com/rbnhd/ask-out-crush.git
    $ cd ask-out-crush
    
    If you wish to customize the text or put the name of your Crush, edit the index.html file at this step and then run the below command. 
    
    $ docker build -t date_request:v1 .
    
    ```

### Run your container
* Although, you can run on any http port on host, however port 80 is recommended if your host IP is accessible on the internet (requests on public IP defaults to port 80)
    ```
    $ docker run --rm --name date_request -d -p 80:80 date_request:v1
    
    The --rm flag tells docker that the container should automatically be removed after we close docker
    The -d flag means that a Docker container runs in the background of your terminal. 
    
    ```


### Test your deployment
* If you have deployed on local machine (why would you do that? You want to send this to your crush, right?)
    ```
    In your browser, go to localhost:80
    ```

* If you have deployed on a Virtual machine with public IP(for example an AWS EC2 instance)
    ```
    In your browser, go to $PUBLIC_IP:$PORT
    If you are running your container on port 80, just inputting the public IP should be enough. 
    You can find the public IP of your Virtual machine either through the console of your Cloud provider, or if you have terminal access to the VM< you can get it by running below command in the VM.
    $ curl -4 ifconfig.me
    ```

### Screenshots:
* [Initial page](./screenshots/initial_page.png)
* [Crush says Yes](./screenshots/yes_response.png)
* [Rejection No. 1](./screenshots/no_response1.png)
* [Rejection final](./screenshots/crush_really_doesnt_wanna_go.png)

<br>

Good Luck! 😃
<br>
<br>