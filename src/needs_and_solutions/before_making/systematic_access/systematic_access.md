# گرفتن مجوزهای سیستمی از اندروید

در سیستم‌عامل اندروید برخی مجوزها فقط به برنامه‌های سیستمی داده می‌شود که قبل از فرآیند ساخت مشخص شده است.

برنامه‌های کاربردی برای انجام برخی از اعمال نیاز به داشتن مجوزهای سیستمی دارند که نحوه‌ی گرفتن آن به صورت زیر توضیح داده می‌شود.

پیشنهاد می‌‌شود ابتدا فایل مربوط به امضای دیجیتالی در قسمت مفاهیم را مطالعه نمایید.

هم‌چنین برای دیدن انواع مجوزها و سطح دسترسی آن‌ها به فایل زیر مراجعه کنید.

[android manifest](AndroidManifest.xml.txt)

برای گرفتن مجوزهای سیستمی باید پوشه‌ای که فایل سورس خود را قرار داده اید ابتدا یک فایل برای تعریف مجوزهایی که می‌خواهید آن ها را درخواست کنید ایجاد کنید.

 دقت کنید فقط برای گرفتن مجوزهای سیستم نیاز به این کار است و گرفتن مجوزهای دیگر نیازی به کار ندارد. 

 دقت کنید مجوزهای سیستمی در فایل ذکر شده در بالا بالا با عبارت های signature, privileged مشخص شده اند.

 نکته : برای فهم بهتر از مفهوم protection level لینک‌های زیر را مطالعه کنید.

 [android source permission](https://developer.android.com/guide/topics/manifest/permission-element)

 [preinstalled vs privileged](https://stackoverflow.com/questions/33481730/difference-between-preinstalled-and-privileged-protection-level)

 [privileged vs signaure](../privileged_vs_signature)

 هم‌چنین مجوزهای appop مجوزهایی هستند که کاربر می‌تواند آن‌ها را دریافت کند.


 حال برای گرفتن مجوزهای privileged و signature باید این کارها انجام شود.

 ۱)یک فایل برای تعریف کردن مجوزهای سیستمی لازم برای برنامه که بهتر است به این فرم باشد : permisssions_packagename.xml
 
 این فایل را به فرم زیر تعریف کنید


```xml
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <privapp-permissions package="<package-name>">
        <permission name="android.permission.?"/>
        <permission name="android.permission.?"/>
        <permission name="android.permission.?"/>
        and ... 
    </privapp-permissions>
</permissions>
```

سپس یک فایل به نام Android.mk ایجاد کنید که این فایل در واقع دستورات لازم برای فرآیند ساخت مربوط به این پکیج را در خود دارد و علاوه بر موارد مورد نیاز این موارد را نیزبه آن اضافه کنید.


```text
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := <your_permission_file_name.xml>
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := <your_favourite_name>
LOCAL_PRIVILEGED_MODULE := true
LOCAL_SRC_FILES := $(call all-java-files-under, java)
LOCAL_REQUIRED_MODULES := <your_permission_file_name.xml>
include $(BUILD_PACKAGE)
```

اگر از apk آماده استفاده می‌کنید به جای مقدار  LOCAL_SRC_FILES بالا از نام apk برای مقدار دهی این متغیر استفاده کنید.

در عبارت بالا با قراردادن عبارت **LOCAL_PRIVILEGED_MODULE** و قرار دادن مقدار true برای آن می‌توانید مجوزهای privileged را دریافت کنید.


اما برای گرفتن مجوزهای signature باید عبارت زیر را به فایل android.mk قسمت نرم‌افزار (نه قسمت فایل xml) اضافه کنید


‍‍‍```
LOCAL_CERTIFICATE := platform
```

با این کار برنامه با کلید platform امضاشده می‌تواند مجوزهای signature را دریافت کند.