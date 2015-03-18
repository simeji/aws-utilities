AWS Utilities
=====

minimum tools


## get-ip-address.sh

### Usage

sh get-ip-address.sh {NameTag(regexp)} {profile}

ex.

sh get-ip-address.sh hoge* test

output

```
[
  "192.168.xx.xx",
  "192.168.yy.yy",
  "192.168.zz.zz"
]
```

## enter-ec2-instance.sh

### Usage

sh enter-ec2-instance.sh {NameTag(regexp)} {profile} [{UserName}]

ex.

sh enter-ec2-instance.sh test-instance test ec2-user

output

```
Last login: Wed xxx xx xx:04:33 2015 from xxx.xx.xxx.xxx

       __|  __|_  )
       _|  (     /   Amazon Linux AMI
      ___|\___|___|

```

