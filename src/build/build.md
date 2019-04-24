# آشنایی با فرآیند ساخت سیستم‌عامل اندروید
فرآیند ساخت یا بیلد برای ایجاد نسخه‌ی قابل اجرا از روی کدهای سیستم عامل AOSP انجام می‌شود. ساخت کد نیاز به منابع سخت‌افزاری مناسبی دارد و کمی زمان‌بر خواهد بود. در صورتی که فقط قصد تست سیستم عامل AOSP برای گوشی خود را دارید، کافی است که تصویرهای از قبل ساخته شده‌ی AOSP را دانلود نمایید.

ساخت سیستم عامل AOSP (و به طور کلی تمامی سیستم عامل‌های مبتنی بر AOSP) برای سخت‌افزار هر گوشی باید به صورت جداگانه و خاص صورت بگیرد و نیازمند دریافت درایورهای خاص مربوطه است و پیچیدگی‌های خاص خودش را دارد. ساده‌ترین روش کار روی کد، ساخت کد برای محیط شبیه‌ساز (emulator) است که در اینجا توضیح داده می‌شود.

پیش از شروع فرآیند ساخت، باید کد منبع سیستم عامل AOSP را مطابق توضیحات بخش دریافت کد دریافت نمایید و گام‌های توضیح داده شده در بخش پیش‌نیازهای ساخت کد را انجام دهید. سپس در یک ترمینال به پوشه‌ای که کدها در آن قرار گرفته‌اند بروید (که احتمالاً نام آن پوشه AOSP است) و دستورات زیر را اجرا نمایید.

برای شروع ساخت کد، ابتدا دستور زیر را اجرا کنید. این دستور متغیرهای محیطی و سایر تنظیمات اولیه را برای شل شما انجام می‌دهد. دقت کنید که حتما باید از bash به عنوان شل استفاده کنید و پایتون پیش‌فرض سیستم شما پایتون ۲ باشد.



~~~ text
source build/envsetup.sh
~~~

سپس باید دستگاهی که می‌خواهیم ساخت کد متناسب با تنظیمات و سخت‌افزار آن انجام شود را مشخص کنیم. با اجرای دستور زیر، دستگاه هدف را شبیه‌ساز اندروید تعیین می‌کنیم(برای مثال دستگاه مورد نظر   emulatorx86):


~~~ text
breakfast emulatorx86
~~~

با فعال کردن کش سرعت بیلد را افزایش بدهید:
~~~ text
export USE_CCACHE=1
~~~

وبا اضافه کردن خط زیر به فایل bashrc./~ ماکزیموم مقدار استفاده کش از فضا را مشخص کنید. 


~~~ text
ccache -M 50G
~~~
همچنین می‌توانید این حالت  ccache را فعال کنید که این کار ممکن است سرعت را کمی پایین آورد ولی تعداد فایل‌های موجود در کش را افزایش می‌دهد، برای فعال کردن آن:
~~~ text
export CCACHE_COMPRESS=1
~~~


مقداردهی به jack برای میزان استفاده از RAM

اگر با مشکل run out of memory مواجه می‌شوید راه ساده درست کردن آن استفاده از دستور زیر است.(در دستور زیر ۴گیگ مشخص شده)
~~~ text
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"

~~~

در نهایت با اجرای این دستورات فرآیند ساخت شروع می‌شود:

~~~ text
brunch emulatorx86
~~~

ساخت کل کد سیستم عامل زمان زیادی نیاز دارد و حتی با سخت‌افزار قوی نیز ممکن است بین سی دقیقه تا چهار ساعت زمان ببرد.

