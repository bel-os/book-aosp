# فرآیند به‌روزرسانی سیستم‌عامل اندروید
یکی از ویژگی‌هایی که از ابتدا در پروژه‌ی اندروید مورد توجه بوده است، امکان ارائه به‌روزرسانی‌های مستمر و طولانی مدت برای سیستم‌عامل گوشی‌های هوشمند است. با این حال به دلایل عدم همکاری شرکت‌های سازنده‌ی گوشی و عدم وجود انگیزه‌ی کافی برای پشتیبانی بلند مدت از یک مدل گوشی، در عمل به‌روزرسانی سیستم‌عامل گوشی‌های اندرویدی فرآیندی سخت داشته و بخش زیادی از گوشی‌های فعال اندرویدی دارای نسخه‌های قدیمی اندروید هستند [1]. البته بعضی شرکت‌های خاص از جمله گوگل برای گوشی‌های خود به‌روزرسانی‌های مستمر اندروید را ارائه می‌دهند که همین ویژگی از نقاط قوت اصلی آن مدل‌ها خواهد بود.

انجام عملیات به‌روزرسانی توسط [Update Engine](https://github.com/LineageOS/android_system_update_engine) انجام می‌شود. برای اطلاعات بیشتر در این زمینه بخش [به‌روزرسانی در مستندات AOSP](https://source.android.com/devices/tech/ota/ab) را مشاهده نمایید.

## اطلاعات بیشتر
کد مخزن [update_verifier](https://github.com/LineageOS/update_verifier) که برای بررسی امضای دیجیتال یک فایل فشرده به‌روزرسانی مورد استفاده قرار می‌گیرد، می‌تواند در آشنایی اولیه با فرمت فایل‌های به‌روزرسانی اندروید کمک کند.

[1]: https://www.zdnet.com/article/android-security-a-market-for-lemons-that-leaves-87-percent-insecure/