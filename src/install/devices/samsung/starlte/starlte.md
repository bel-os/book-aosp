اماده کردن گوشی برای نصب

* در گوشی‌های ساسمونگ بر خلاف سایر گوشی‌ها به جای Fastboot از Heimdall استفاده شده است.

* در گزینه‌های برنامه نویس (OEM unlock) را فعال کرده.

* گوشی را خاموش کرده و کابل را به کامپیوتر متصل کنید و مطمئن شوید که به گوشی وصل نیست.

* برای رفتن به حالت Download همزمان دکمه‌های ولوم پایین، بیکسبی و پاور را نگه داشته و بعد از بالا آمدن کابل را به گوشی وصل کنید.

* ترمینال را بالا آورده دستور زیر رو تایپ کنید:

~~~ text
heimdall print-pit
~~~
* اگر گوشی خاموش و روشن شد Heimdall به درستی نصب شده است و کار می‌کند.

نصب کاستوم ریکاوری

* از طریق این لینک کاستوم ریکاروی منطبق بر گوشی را دانلود کرده
* باید دارای همچین اسمی باشد به عناون مثال:  twrp-x.x.x-x-starlte.img
* گوشی رو خاموش کرده و یواس‌بی را به کامپیوتر وصل کنید(به گوشی وصل نکنید)
* به مود دانلود بروید با  نگه داشتن همزمان دکمه‌های ولوم پایین بیکسبی و پاور و بعد از بالا امدن کابل را به گوشی وصل کنید.
* ترمینال را باز کرده و دستور زیر را در محلی که فایل کاستوم ریکاوری موجود است تایپ کنید
~~~ text
heimdall flash --RECOVERY <recovery_filename>.img --no-reboot 
~~~

* کابل یو‌اس‌بی را جدا  کرده و به صورت همزمان دکمه‌های ولوم پایین بیکسبی و پاور و بعد از نشان داده شدن نوشته ابی دکمه ها را رها کرده.
       info_outline
       

       
        
نصب سیستم‌عامل در ریکاوری

* اگر در حالت ریکاوری نیستید وارد آن شده با نگه داشتن همزمان دکمه‌های ولوم پایین بیکسبی و پاور.
* وارد صفحه (wipe) شده و سپس بر روی (format data)  رفته این کار باعث می‌شود که تمام فایل‌های و انکریپت‌های موجود در حافظه داخلی به طور کلی پاک شود.
* به  منوی قبلی بازگشته و بر روی (advanced wipe)  رفته و گزینه‌های (cache) و (system) را انتخاب کنید
* به منوی اصل برگشته و به (advanced) بروید و بعد از ان (adb sideload) رفته و شروع کنید
* کابل گوشی باید به کامپیوتر وصل باشد
* در محلی که فایل رام قرار دارد دستور زیر را در ترمینال وارد کنی
~~~ text
adb sideload filename.zip
~~~
         
       
        