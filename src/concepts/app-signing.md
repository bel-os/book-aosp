# امضای دیجیتال برنامک‌ها
در سیستم عامل android اگر بخواهیم یک فایل apk را نصب کنیم باید حتما فرآیند signing روی آن انجام گرفته باشد.

فرآیند signing به این معناست که نویسنده ی برنامه پس از اتمام نوشتن برنامه برای گرفتن خروجی فایل apk در حالت release باید یک کُد تولید کند و با استفاده از آن کد برنامه ی خود را امضای دیجیتالی (sign) کند به این معنی که این برنامه توسط این شخص با این مشخصات(مشخصات در تولید کُد گرفته میشود) تولید شده است.

این کُد از دوبخش **public key و private key** تشکیل می‌شود.که می‌توان آن را در یک مکان به صورت باینری در کنار هم نگهداری کرد.در واقع این کار به وسیله ی keystore انجام می‌شود که معمولا دارای فرمت **jks** یا **keystore** است.

بعد از انجام فرآیند signing برنامه،کد عمومی یا public key به برنامه ما ضمیمه می‌شود.

## مزیت‌های امضای برنامک‌ها

* اگر تغییری در فایل های برنامه اتفاق بیفتد دیگر **certificate (public key)** با برنامه همخوانی ندارد و package manager برنامه را نصب نمی‌کند.لذا می‌توان از بدون تغییر ماندن برنامه اطمینان حاصل کرد.
* اندروید این امکان را میدهد که برنامه هایی که بایک کد امضا شده اند با **uid(user id)** یکدیگر، فرآیند های خود را انجام دهند.
* در اندروید مکانیزمی به نام signature protection level وجود دارد که به شرح زیر توضیح داده می‌شود

## امضای برنامک‌ها در فرآیند ساخت اندروید
سیستم عامل هنگام فرآیند ساخت تمام package ها را با کلید هایی امضا می‌کند.
این کلید ها عبارتند از platform ,  media ,  shared وtest با 	پسوند های pk8 به عنوان کلید خصوصی و x509.pem. به عنوان کلید عمومی.

پکیج هایی که با کلید platform امضا می‌شوند به عنوان برنامه های platform core اندروید،برنامه هایی که با کلید media امضا می‌شوند مانند gallery برنامه های بخش media / download	،برنامه هایی که با کلید shared امضا می‌شوند در قسمت contacts/home قرار دارند.

برنامه های با کلید مختلف دسترسی های مختلفی دریافت می‌کنند.برنامه های paltform دسترسی بالاتری دارند.

لذا اگر در فرآیند ساخت با این کلید هایی که در source code موجود هستند برنامه را امضا کنیم، می‌توانیم دسترسی هایی که بعضا دسترسی به آن ها امکان پذیر نیست دریافت کرد.

یک نکته ی مهم در این بخش این است که کلید خصوصی خود را هیچگاه در اختیار افراد دیگر قرار ندهید زیرا کسی که آن را دارد می‌تواند برنامه را تغییر دهد و امضا مجدد و به نام شما یا به نام خودش  منتشر کند.

علاوه بر signature های بالا که بر package ها اعمال می‌شوند

 یک دسته دیگر(نه عملا دسته ای جدا) وجود دارد به نام **OTA signature** که در واقع همان عمل sign را روی تک تک فایل ها انجام می‌دهد و سپس روی کل مجموعه یک signature اعمال می‌کند که برای update هایی که سیستم عامل می‌دهد استفاده می‌شود که به وسیله ی این امضا سیستم عامل می‌تواند تشخیص دهد که این update متعلق به خودش است.

### مثال: برنامک‌های یک سیستم اندرویدی به تفکیک امضا
به عنوان نمونه، برنامه‌های نصب شده روی LineageOS 15 ساخته شده برای گوشی S9 به تفکیک امضا به این شرح هستند:

* برنامه‌ها با امضای کلید انتشار: Tags, Default Print Service, Bookmark Provider, Calculator, Calendar, Companion Device Manager, Clock, Basic Daydreams, Photo Screensavers, Email, Exchange Services, HTML Viewer, One Time Init, Print Service Recommendation Service, Print Spooler, Calendar Storage, com.android.smspush, Intent Filter Verification Service, Storage Manager, Terminal, com.android.wallpaperpicker, Android System WebView, Pico TTS, F-Droid Privileged Extension, cLock, Trebuchet, Updater
* برنامه‌ها با امضای کلید مدیا: MTP Host, Download Manager, Downloads, Media Storage
* برنامه‌ها با امضای کلید مشترک: Call Log Backup/Restore, Contacts, Phone, Android Keyboard (AOSP), Blocked Numbers Storage, Contacts Storage, User Dictionary
* برنامه‌ها با امضای کلید سکو: Android System, Android Services Library, Android Shared Library, com.android.backupconfirm, Bluetooth, Bluetooth MIDI Service, CaptivePortalLogin, com.android.carrierconfig, CarrierDefaultApp, Cell Broadcasts, Certificate Installer, Package Access Helper, Dev Tools, Files, Android Easter Egg, Emergency information, External Storage, Gallery, Input Devices, Key Chain, Fused Location, Work profile setup, Messaging service, Nfc Service, Package installer, PacProcessor, Phone Services, Settings Storage, Phone and Messaging Storage, ProxyHandler, Call Management, Settings, com.android.sharedstoragebackup, Shell, SIM Toolkit, System UI, VpnDialogs, Live Wallpaper Picker, com.android.wallpaperbackup, com.android.wallpapercropper, Persian Calendar, Saba System, LineageOS Settings, Lineage Settings Storage, Carbon, Blueberry, Cocoa, Cyan, Forest, Pumpkin, Cherry, Lavender, Tomato, Banana, org.lineageos.overlay.black, org.lineageos.overlay.dark, Profiles Trust Provider, Recorder, Setup Wizard, Weather Provider

توجه به نوع برنامه‌های امضا شده با هر کلید می‌تواند کارکرد اصلی مد نظر برای آن کلید را مشخص نماید.
