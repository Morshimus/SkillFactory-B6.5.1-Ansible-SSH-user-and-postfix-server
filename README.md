# SkillFactory-B6.5.1-Ansible-SSH-user-and-postfix-server

## Задание:

* [x] - :one:  ~~**Напишите плейбук, который будет на удаленной системе создавать:**~~    
 >~~Пользователя web-adm и задавать ему SSH-ключ (создавая заданный ключ в /home/web-adm/.ssh/id_rsa.pub).~~ 
 ![image](https://db3pap003files.storage.live.com/y4moj_Ws2gUk7bt88yyhFCi98D-xECS7fNQ9tbfR9MwsY-5XyqX8oz1ZP3oVV-3BbGOwjOqWfJdhy3Mb2kiS4VdN9_Y5nyUzbevZUHe5b_xXFuVtFXU7AADbbtyTkU51aesuz6fOx2kYFcXzWBShCtxUBSBoREeSrTdDmKHfr5_DU6Onw4Rnzx6s0iYl551RQe-4PPDmdKFZSgpiq3AJ2CHfg/Ansible_Create_User.jpg?psid=1&width=1347&height=740)
- ~~Ключ не должен передаваться в открытом виде. Используйте для шифрования ключа ansible-vault.~~
   -  ~~Ключ можете сгенерировать, используя SSH-keygen.~~

* [X] - :two:  ~~**Создайте плейбук, который устанавливает, либо удаляет почтовый сервер postfix в зависимости от тега:**~~   
- ~~*При запуске ansible-playbook <путь_к_плейбуку> --tags "init postfix" должен устанавливаться и запускаться с конфигурацией по умолчанию.*~~
  - ~~*При запуске ansible-playbook <путь_к_плейбуку> --tags drop postfix должен удаляться с машины.*~~  
> Done according tasks.
![image](https://db3pap003files.storage.live.com/y4mIR87UuBA6Rw0nfZY7JBtddLnZD3BxiFCh8GAFvKZsh2MNCMXrUsjFK4LYeJZRzIt2uoMcP7CnGtwoUgmW4WXsR22cvTrHdyQJbvQWc2QwZ2aY2fmJG_uoyCxTYeVeQ1ysBv3zpzYoE-2cChe4_GeHPuBqpbyTZWNU8-erWun1I4F4cWKDqwDUTLTVywm-rb88WT8MZ30uPXrtpzCxhXR8g/Ansible_Postfix_Tags.jpg?psid=1&width=1362&height=557)
