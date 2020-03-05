<link href="../css/supported.css" rel="stylesheet"></link>

# دستگاه‌های پشتیبانی شده
در گوشی‌های موبایل وابستگی زیادی بین سخت‌افزار و سیستم‌عامل وجود دارد و به همین دلیل نمی‌توان یک سیستم‌عامل را به راحتی بر روی مدل‌های مختلف گوشی نصب کرد. یکی از مهم‌ترین چالش‌ها در پذیرش سیستم‌عامل‌های جایگزین اندروید گوگل، عدم امکان نصب سیستم‌عامل‌های دیگر بر روی بسیاری از مدل‌های گوشی هوشمند است. در اینجا قصد داریم که با نگاه به بازار ایران و وضعیت پشتیبانی سیستم‌عامل‌ها از دستگاه‌های مختلف، فهرستی به‌روز از دستگاه‌های موجود در بازاری ارائه دهیم که مناسب استفاده با سیستم‌عامل‌های دیگر باشند.


<h3>گوشی‌هایی که در زیر عکس آن‌ها را می‌بینید به صورت کامل پشتیبانی نمی‌شوند و صرفا به دلیل وجود بودن سیستم‌عامل جایگزین برایشان آورده شده است. لطفا توضیحات پایین خوانده شوند.</h3>


## تمام گوشی‌های توضیح داده شده در این صفحه بر اساس برند

<div class="super-items">

<p id="device-brand">Samsung</p> 

<div class="items">
<img src="../image/s10.jpg"/>
<span title="caption" display="block">Galaxy S10</span>
</div>

<div class="items">
<img src="../image/s9.jpeg"/>
<span title="caption" display="block">Galaxy S9</span>
</div>

<div class="items">
<img src="../image/note9.jpg"/>
<span title="caption" display="block">Galaxy Note 9</span>
</div>

<div class="items">
<img src="../image/a52017.jpeg"/>
<span title="caption" display="block">Galaxy A5 2017</span>
</div>

<div class="items">
<img src="../image/s7.jpg"/>
<span title="caption" display="block">Galaxy S7</span>
</div>

<div class="items">
<img src="../image/a70.jpg"/>
<span title="caption" display="block">Galaxy A70</span>
</div>

<div>
<p id="device-brand">Motorola</p>
</div>

<div class="items">
<img src="../image/motox4.jpg"/>
<span title="caption" display="block">Moto X4</span>
</div>

<div class="items">
<img src="../image/motoz2force.jpg"/>
<span title="caption">Moto Z2 force</span>
</div>

<div>
<p id="device-brand">Xiaomi</p>
</div>

<div class="items">
<img src="../image/redminote8.jpg"/>
<span title="caption">Redmi Note 8</span>
</div>

<div class="items">
<img src="../image/redminote7.jpg"/>
<span title="caption">Redmi Note 7</span>
</div>

<div class="items">
<img src="../image/mi9t.jpg"/>
<span title="caption">Mi 9T</span>
</div>

<div class="items">
<img src="../image/pocof1.jpg"/>
<span title="caption">Pocophone F1</span>
</div>

<div class="items">
<img src="../image/mia3.jpg"/>
<span title="caption">Mi A3</span>
</div>

<div class="items">
<img src="../image/mimix3.jpg"/>
<span title="caption">Mi Mix3</span>
</div>

<div>
<p id="device-brand">Nokia</p>
</div>

<div class="items">
<img src="../image/n6.1.jpg"/>
<span title="caption">Nokia 6.1</span>
</div>

<div class="items">
<img src="../image/n6.2.jpg"/>
<span title="caption">Nokia 6.2</span>
</div>

<div class="items">
<img src="../image/n7.2.jpeg"/>
<span title="caption">Nokia 7.2</span>
</div>

</div>

## مشکلات گوشی‌ها

همانطور که در بالا گفته شد تمام این گوشی‌ها دارای پشتیبانی کامل از سیستم‌عامل lineage نیستند. مشکلات موجود در آن‌ها در این‌جا بیان می‌شود.

<h4>گوشی‌های دارای مشکل selinux</h4>
selinux یک ماژول در سطح کرنل است که وظیفه‌ی کنترل دسترسی است.
این ماژول سه حالت دارد.

۱) enforcing 

۲) permissive 

۳) disabled

در حالت enforcing قوانین اعمال می‌شوند و از دسترسی اشتباه جلوگیری می‌شود.
در حالت permissive قواعد اعمال نمی‌شود و فقط در صورت دسترسی اشتباه log گرفته می‌شود.

توصیه می‌شود برای آگاهی از جزئیات selinux لینک زیر مطالعه شود.

[How dangerous is the fact that SELinux is in “Permissive” mode?](https://android.stackexchange.com/questions/149854/how-dangerous-is-the-fact-that-selinux-is-in-permissive-mode-what-should-i-be)

برای گوشی‌های موبایل به شدت توصیه می‌شود که این ماژول در حالت enforcing باشد.

بنابراین حتی الامکان از استفاده از گوشی‌هایی که در دو مود دیگر است خودداری شود.

گوشی‌های زیر فاقد مود enforcing هستند.


redmi note 8 - nokia 6.2 and 7.2


<h4>گوشی‌‌هایی که تمام یا برخی از کدهای مربوط به آن‌ها به صورت باز در دسترس نیست.</h4>

نبود تمام یا برخی از کدهای مربوط به گوشی‌ها بعث می‌شود که در صورت داشتن ایراد یا در صورت تمایل برای دادن نسخه‌ی به روزتر با مشکل مواجه شویم.

گوشی‌های زیر دارای نقص در کدهای مورد نیاز هستند.

galaxy s10 - nokia 7.2 and 6.2

<h4>گوشی‌هایی که مشکل پشتیبانی دوربین دارند</h4>

گوشی های moto از دوربین دوم پشتیبانی نمی‌کنند.

گوشی galaxy a70 حداکثر رزولوشن دوربین را تا 8 مگاپیکسل پشتیبانی می‌کند.

<h4>برخی مشکلات دیگر یافت شده</h4>

گوشی mi mix 3 احتمالا در آینده مشکل درایور GPS پیدا می‌کنه.

گوشی mi a 3 دارای device tree قدیمی هست. وضمنا از file based encryption هم پشتیبانی نمی‌کنه.

## دسته‌بندی بر اساس قیمت

### گوشی‌های پرچم‌دار
محدوده‌ی قیمت : بیشتر از ۷ میلیون تومان

Galaxy S10 - Galaxy S9

### گوشی‌های میان‌رده
محدوده‌ی قیمت : بین ۲ تا ۶ میلیون تومان

تمام کوشی‌های دیگر


## دسته‌بندی بر اساس وضعیت بازار

### گوشی‌های در حال فروش

Galaxy S10 - Galaxy S9 - Galaxy Note 9 - Galaxy A70 - Redmi Note 7 & 8 - Pocophone F1 - Xiaomi Mi 9T -Xiaomi  Mi A3 - All Nokia devices 

### گوشی‌های پشتیبانی شده
منظور آن دسته از گوشی‌ها هستند که در یک سال اخیر در بازار موجود بوده‌اند ولی به دلیل توقف تولید یا عدم واردات در حال حاضر در بازار به فروش نمی‌رسند، با این حال هنوز مورد پشتیبانی شرکت سازنده و مراکز خدماتی داخلی هستند. این گوشی‌ها ممکن است دوباره در بازار موجود شوند یا به صورت دست دوم قابل خریداری باشند.

Moto X4 - Moto Z2 force - Xiaomi Mi Mix 3 - Galaxy A5 2017 - Galaxy S7


### گوشی‌های با پشتیبانی کامل

این گوشی‌ها بر اساس بررسی‌های انجام شده از پشتیبانی کامل برخوردار است

Galaxy S9 - Galaxy S7 - Redmi note 7 - Xiaomi Mi 9T - Moto X4 - Moto Z2 force