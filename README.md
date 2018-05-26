#### briefly introduce
no matter your use digital ocean, aws,linode. If you want to deploy your code to server, you have to install all dependencies and think about security, monitor, log ... etc
so this ansible project want to handle these things.
#### dev & prod
#### Warning!
#### **please create a new passwd.yml through ansible-vault command, before executing any ansible task when you don't know the password.**
****
Split dev & prod inventories for local testing & setup env on real server.
****

***runing dev***
``` 
./bin/setup_dev.sh  #Using vagrant for local testing
```

***runing prod***
>declare your server in production/inventory

```
./bin/setup_prod.sh  #Inside this shell you ***must*** change private key to match your deploy user's public key meanwhile need to input vault password.
```

#### roles

1. foundation

    | variable name | description   |
    | ------------- |:-------------:|
    | UBUNTU_COMMON_ROOT_PASSWORD| through python to generate sha512 root password|
    | UBUNTU_COMMON_DEPLOY_PASSWORD| also using python to generate sha512 password|
    | ubuntu_common_deploy_user_name|give a user name to instead of root|
    | ubuntu_common_deploy_public_keys|provide public key for deploy user|
    | ubuntu_common_required_packages|mandatory packages|
    | ubuntu_common_optional_packages|optional packages|
    | ubuntu_common_ssh_port|...|
    | ubuntu_common_mosh_from_port|...|
    | ubuntu_common_mosh_to_port|...|

    ***generate sha512 password***
    
    ```
        pip install passlib
        python -c "from passlib.hash import sha512_crypt; print(sha512_crypt.encrypt('your password'))"
    ````
    ***add public key***
    1) put public key into roles/foundation/public_keys folder
    2) add new key in roles/foudation/vars/main.yml
    **ubuntu_common_deploy_public_key** list

2. monit
    for monitor service status
3. java
    install java
4.  nodejs
    install nodejs
5. nginx
    install nginx
6. mongodb
    install mongodb
7. postgresql
    install postgres
8. clojure
    install lein
9. docker
    install docker
10. elixir
    install elixir