# فرآیند نصب بر روی moto z2 force
۱.در صورت نیاز از سیستم‌عامل و داده های خود back up تهیه نمایید تا اگر اطلاعات گوشی پاک شد بتوانید آن‌ها را بازیابی کنید.

۲.ابتدا باید از فعال‌بودن گزینه‌ی oem unlock در گزینه‌های برنامه‌نویس اطمینان حاصل فرمایید.هم‌چنین اطمینان کنید که ابزار های adb و fastboot روی سیستم شما نصب باشد.

۳.از لینک زیر نسخه‌ی آخر فایل ریکاوری مربوط به گوشی را با پسوند img دانلود کنید.

[twrp recovery for z2 force](https://dl.twrp.me/nash/)

۴.گوشی را خاموش کنید سپس با نگهداشتن کلید های **power + volume down** به حالت دانلود بروید.هم‌چنین می‌توانید از دستور **adb reboot bootloader** در هنگام متصل بودن به کامپیوتر به حالت bootloader بروید.

۵.سپس گوشی را با کابل به کامپیوتر متصل کنید.با اجرای دستور زیر ابتدا از متصل بودن دستگاه اطمینان بیابید.
```text
fastboot devices

```
۶.با اجرای دستور **fastboot oem device-info** اطلاعات مربوط به گوشی خود را مشاهده کنید. درصورتی که bootloader گوشی شما unlock نشده است از لینک زیر اقدام کنید.

[Motorola support](https://motorola-global-portal.custhelp.com/app/standalone/bootloader/unlock-your-device-a)

۷.با اجرای دستور زیر فایل ریکاوری را که دانلود کردید نصب کنید.
```text
fastboot boot <recovery_filename>.img

```
۸.بعد از آمدن فایل ریکاوری به قسمت wipe بروید.ابتدا عملیات format data را انجام دهید سپس به قسمت advanced wipe رفته قسمت های system و cache را انتخاب کنید و سپس از پایین صفحه swipe to wipe را انجام دهید.
۹.به عقب برگشته به قسمت advanced و سپس به adb sideloadبروید و دستور زیر را در محل وجود سیستم‌عامل در کامپیوتر بزنید.
```text
adb sideload filename.zip

```
