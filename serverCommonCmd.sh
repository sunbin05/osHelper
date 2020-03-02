#安装工具
yum install -y ssh-keygen ssh-copy-id
#ssh key秘钥生成，指定加密算法（rsa签名算法，非对称加密、 秘钥文件路径和名称、注释
ssh-keygen -t rsa -f ~/.ssh/id_rsa_002 -C "new ssh key"
# ssh-copy-id -i ~/.ssh/id_rsa.pub -p 22 root@172.16.22.132



