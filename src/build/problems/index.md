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
