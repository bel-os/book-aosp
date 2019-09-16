# امضای دیجیتالی فرآیند ساخت سیستم عامل اندروید
برای امضاکردن ساخت مربوط به خود مراحل زیر را انجام دهید : 

۱.برای تولید کلید تا با آن بتوانید عمل signing را انجام دهید در ریشه‌ی درخت سورس‌کد خود این دستورات را وارد کنید : 

~~~text
subject='/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com'
~~~
در این دستور اطلاعات مربوط به خود را وارد کنید.

~~~text
mkdir ~/.android-certs
~~~
این پوشه را هر جایی می‌توانید تولید کنید.نکته‌ی مهم حفظ و نگهداری از این پوشه است تا در اختیار افراد سودجو قرار نگیرد تا باآن بتوانند سیستم‌عامل شما را دستکاری کنند.
~~~text
for x in releasekey platform shared media testkey; do ./development/tools/make_key ~/.android-certs/$x "$subject"; done
~~~
با اجرای این دستور برای هرکدام از کلید های platform و ... از شما یک password دریافت می‌کند.حتما در حفظ و نگهداری آن‌ها کوشا باشید.
 

 برای اطلاعات بیشتر می‌توانید به قسمت **مفاهیم / امضای دیجیتالی** مراجعه کنید.

 ۲.حال با اجرای دستور زیر می‌توانید به امضاکردن فایل های apk بپردازید : 

~~~text
./build/tools/releasetools/sign_target_files_apks -o -d <your android-certificate directory address> $OUT/obj/PACKAGING/target_files_intermediates/*-target_files-*.zip signed-target_files.zip
~~~

3.در نهایت برای تولید یک پکیج قابل نصب دستور زیر را وارد کنید : 
~~~text
./build/tools/releasetools/ota_from_target_files -k ~/.android-certs/releasekey --block --backup=true signed-target_files.zip signed-ota_update.zip
~~~
در نهایت فایل تولید شده به نام **signed-ota_update.zip** را در ریشه‌ی درخت سورس کد خود می‌توانید مشاهده کنید و برای نصب کردن آن بر روی گوشی خود به قسمت **نصب سیستم‌عامل بر روی گوشی** مراجعه کنید.

 برای کسب اطلاعات بیشتر از فرآیند امضای دیجیتالی می‌توانید به لینک زیر مراجعه کنید.این لینک نیاز به فیلترشکن دارد.

 [android signing build](https://source.android.com/devices/tech/ota/sign_builds)
