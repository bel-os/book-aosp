ساخت کد سیستم عامل AOSP به نصب برخی برنامه‌های دیگر مانند کامپایلرهای C و جاوا و ... نیاز دارد. اگر از Debian یا Ubuntu یا Mac استفاده می‌کنید، می‌توانید روش نصب این پیش‌نیازها را در [راهنمای راه‌اندازی محیط ساخت برای AOSP](https://source.android.com/setup/build/initializing) ببینید. برای سایر توزیع‌های لینوکس هم با استفاده از همین راهنما و تغییرات جزئی در نام بسته‌ها، می‌توان پیش‌نیازها را نصب نمود. مثلاً برای Arch Linux [اینجا](https://wiki.archlinux.org/index.php/Android#Building) راهنمای نصب پیش‌نیازهای ساخت اندروید آورده شده است.

* معماری سخت‌افزاری: فرآیند ساخت باید روی سیستم عامل ۶۴ بیتی اجرا شود. همچنین باید کتابخانه‌های لازم برای اجرای برنامه‌های ۳۲ بیتی (به اصطلاح multiarch یا multilib) هم روی سیستم نصب شود.

* کامپایلر جاوا: نسخه‌ی کامپایلر جاوا مورد نیاز برای ساخت کد سیستم عامل AOSP، جاوا ۸ نسخه‌ی OpenJDK است.
    - OpenJDK 1.8 (install openjdk-8-jdk)

* کامپایلر اسمبلی: در فرآیند ساخت به کامپایلر اسمبلی yasm نیاز است که می‌توانید بسته‌ی آن را به راحتی با ابزار مدیریت بسته‌ی توزیع لینوکس خود نصب نمایید.

* برای ساخت به موارد زیر نیاز دارید:
    * bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev make cmake g++ clang++ libtinfo5 libncurses5

* Gradle

    * نسخه ۵ به بالا







