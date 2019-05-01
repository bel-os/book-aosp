# مشکلات
* kvm

qemu-kvm را نصب کنید و دستورات زیر را اجرا کنید 
~~~ text
chgrp kvm /dev/kvm 
~~~

~~~ text
sudo chown yourusername -R /dev/kvm
~~~

~~~ text
sudo usermod -a -G kvm yourusername
~~~






* کمبود memory در emulator

emulator: WARNING: Increasing RAM size to 1GB

با استفاده از دستور زیر مقدار را می‌توانید مشخص کنید:
~~~ text
emulator -memory 1024
~~~







* در صورت مشاهده  Communication error with Jack server (52). Try 'jack-diagnose' از دستورهای زیر استفاده کنید.

~~~ text
prebuilts/sdk/tools/jack-admin stop-server 2>&1 > /dev/null
~~~
~~~ text
prebuilts/sdk/tools/jack-admin cleanup-server 2>&1 > /dev/null
~~~
~~~ text
prebuilts/sdk/tools/jack-admin start-server 2>&1 > /dev/null
~~~
