# تغییر dns-servers

برای تغییر آدرس سرورها راه‌های زیادی وجود دارد که می‌توانید برای دیدن انواع روش‌ها از سایت زیر دیدن کنید.


[change dns servers](https://forum.xda-developers.com/general/xda-university/guide-how-to-change-dns-android-device-t3273769)

در این‌قسمت یکی از روش های فوق که تست شده است را آموزش میدهیم.

برای این‌منظور می‌توان از دو طریق عمل کرد : ۱) ایجاد تغییرات قبل از فرآیند ساخت ۲) ایجاد تغییرات در سیستم‌عامل نصب شده(دسترسی روت لازم است) 

سیستم‌عامل مورد استفاده‌ی ما سیستم‌عامل lineage است.

روش اول : برای این‌کار ابتدا یک دایرکتوری در قسمتی از کدهای سیستم‌عامل مانند **system/extras**

یک فایل به نام userinit.sh در آن درست کنید و دستورات زیر را در آن وارد کنید.

```text
#!/system/bin/sh

#change dns_server
iptables -t nat -A OUTPUT -p tcp --dport 53 -j DNAT --to-destination  <your dns-server ip:53>
iptables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to-destination  <your dns-server ip:53>
```
سپس در دایرکتوری **devides/company-name/model-name** در یکی از فایل‌های که با پسوند mk  وجود دارند و در آن قسمتی به عنوان PRODUCT_COPY_FILES موجود است به انتهای فایل رفته و دستور زیر را وارد
کنید.
```text
#add startup-script
PRODUCT_COPY_FILES += \
    system/extras/<path to your inituser.sh file>:/system/xbin/userinit.sh
```
حال به دایرکتوری **system/core/rootdir** و فایل **init.rc** را باز کنید.

در انتهای قسمت on post-fs-data قبل از init_user0 دستورات زیر را وارد کنید.
```text
copy /system/xbin/userinit.sh /data/local/userinit.sh
chmod 751 /data/local/userinit.sh
setenforce 0
start sysinit
```
سپس به انتهای فایل بروید و و این دستورات را وارد کنید
```text
setenforce 0

service sysinit /system/bin/sysinit
    user root
    oneshot
    disabled
    seclabel u:r:sudaemon:s0
```
حال میتوانید به ساخت سیستم‌عامل بپردازید.

قبل از شروع فرآیند نصب به دایرکتوری **out/target/product/model-name/system/xbin** رفته و اطمینان حاصل کنید که فایل شما در آنجا قرار گرفته باشد و چنانچه نبود مشکل از فایل mk است که دستور را در جای درستی قرار نداده اید.

سپس میتوانید اقدام به نصب بر روی گوشی نمایید.



