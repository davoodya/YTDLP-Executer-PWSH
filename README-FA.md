# YTDLP-Executer-PWSH

**ماژول PowerShell برای اجرای تعاملی yt-dlp با منو و زیرمنوهای کامل**

---
[![English](https://img.shields.io/badge/ENGLISH-blue?style=for-the-badge)](README.md)
[![آخرین commit](https://img.shields.io/github/last-commit/davoodya/YTDLP-Executer-PWSH)](https://github.com/davoodya/YTDLP-Executer-PWSH)
[![نسخه PowerShell Gallery](https://img.shields.io/powershellgallery/v/YTDLP-Executer)](https://www.powershellgallery.com/packages/YTDLP-Executer)
[![خطوط کد](https://img.shields.io/badge/dynamic/json?color=blue&label=خطوط%20کد&query=TotalLines&url=https%3A%2F%2Fapi.codacy.com%2Fproject%2Fbadge%2Fcomplexity%2Fdummy)](https://github.com/davoodya/YTDLP-Executer-PWSH)

---

## این ماژول چیست؟

**YTDLP-Executer** یک ماژول حرفه‌ای و کامل PowerShell است که تجربه کار با `yt-dlp` را به سطحی کاملاً جدید می‌برد. برخلاف برگه‌های تقلب ساده، این ماژول **دستورات را به‌صورت تعاملی اجرا** می‌کند.

با بیش از **۵۰۰۰ خط کد**، یک رابط کاربری مبتنی بر منو را برای دانلود ویدیو، صدا، زیرنویس و پلی‌لیست از یوتیوب و سایر پلتفرم‌ها فراهم می‌کند—همه‌چیز از طریق یک تجربه تعاملی جذاب در ترمینال.

**این ماژول را به‌عنوان یک رابط گرافیکی برای yt-dlp در نظر بگیرید، اما درون ترمینال شما.**

---

## ویژگی‌های کلیدی

- 🎯 **سیستم منوی تعاملی** – حرکت بین گزینه‌های دسته‌بندی‌شده با زیرمنوهای کامل
- 📥 **دانلود هر نوع محتوایی** – ویدیو، صدا، زیرنویس، پلی‌لیست و موارد بیشتر
- ⚙️ **گزینه‌های پیشرفته** – انتخاب کیفیت، تنظیمات فرمت و پارامترهای تخصصی
- 💬 **راهنمای مرحله‌به‌مرحله** – پس از انتخاب هر دستور، ماژول با دریافت ورودی از کاربر (آدرس، کیفیت و ...) او را راهنمایی می‌کند
- 🧠 **اعتبارسنجی هوشمند** – مدیریت خطا و اعتبارسنجی ورودی برای جلوگیری از اشتباهات
- 🚀 **سریع و سبک** – با وجود قدرت بالا، همچنان پاسخگو و کارآمد است
- 📂 **ساختار منظم** – کد به پوشه‌های Core، Data و Menus برای نگهداری آسان تقسیم شده است

---

## شروع سریع

### ۰. دریافت مخزن
```powershell
cd /path/to/your/project
git clone https://github.com/davoodya/YTDLP-Executer-PWSH
cd YTDLP-Executer-PWSH
```
یا فایل‌های ماژول را مستقیماً از [مخزن گیت‌هاب](https://github.com/davoodya/YTDLP-Executer-PWSH) دانلود کنید.

### ۱. نصب ماژول
پوشه ماژول را در دایرکتوری ماژول‌های PowerShell خود کپی کنید.

**نکته:** مسیر پروفایل PowerShell خود را با اجرای دستور `$PROFILE` پیدا کنید. اگر پروفایل وجود ندارد، ابتدا آن را بسازید.

- برای **PowerShell** (نسخه‌های جدید):
```powershell
mkdir "$HOME\Documents\PowerShell\Modules\YTDLP-Executer\" -Force
Copy-Item -Recurse ".\*" "$HOME\Documents\PowerShell\Modules\YTDLP-Executer\" -Force
```

- برای **Windows PowerShell** (نسخه‌های قدیمی‌تر):
```powershell
mkdir "$HOME\Documents\WindowsPowerShell\Modules\YTDLP-Executer\" -Force
Copy-Item -Recurse ".\*" "$HOME\Documents\WindowsPowerShell\Modules\YTDLP-Executer\" -Force
```

### ۲. افزودن به پروفایل (تنظیم یک‌باره)

فایل `$PROFILE` خود را در یک ویرایشگر باز کنید و این خط را به آن اضافه کنید:
```powershell
Import-Module YTDLP-Executer
```

یا سریعاً با دستور زیر اضافه کنید:
```powershell
Add-Content -Path $PROFILE -Value "`nImport-Module YTDLP-Executer"
```

سپس پروفایل خود را مجدداً بارگذاری کنید (یا ترمینال را ببندید و دوباره باز کنید):
```powershell
. $PROFILE
```

---

## نحوه استفاده

پس از نصب، به سادگی این دستور را اجرا کنید:
```powershell
ytexec
```

**کلیدهای ناوبری:**
- `↑/↓` کلیدهای جهت‌نما برای حرکت بین گزینه‌ها
- `Enter` برای انتخاب گزینه
- `B` بازگشت به منو قبلی
- `M` بازگشت به منو اصلی 
- `R` بروزرسانی
- `0` خروج


**روش کار:**
1. در منوی اصلی حرکت کنید (ویدیو، صدا، زیرنویس، پلی‌لیست، پیشرفته)
2. یک دسته‌بندی را انتخاب کنید
3. در زیرمنوها برای دستورات خاص حرکت کنید
4. با راهنمایی ماژول، آدرس، کیفیت و سایر تنظیمات را وارد کنید
5. ماژول `yt-dlp` را با انتخاب‌های شما اجرا می‌کند

---


## چرا از ماژول Executer به‌جای Cheatsheet استفاده کنیم؟

| ویژگی | ماژول Cheatsheet | ماژول Executer |
|---------|-------------------|-----------------|
| نمایش دستورات | ✅ بله | ✅ بله |
| اجرای دستورات | ❌ خیر | ✅ بله |
| راهنمای مرحله‌به‌مرحله | ❌ خیر | ✅ بله |
| زیرمنوها | ❌ خیر | ✅ بله |
| اعتبارسنجی ورودی | ❌ خیر | ✅ بله |
| مدیریت خطا | اولیه | پیشرفته |
| ساختار کد | تک فایل | ماژولار (بیش از ۵۰۰۰ خط) |

---

## عیب‌یابی

| مشکل | راه‌حل |
|------|--------|
| ماژول پیدا نمی‌شود | مسیرهای `$env:PSModulePath -split ';'` را بررسی کنید و مطمئن شوید پوشه ماژول در یکی از این مسیرها قرار دارد |
| دستور `Start-YTDLP` شناسایی نمی‌شود | دستور `Import-Module YTDLP-Executer -Force` را اجرا کنید |
| تغییرات پروفایل اعمال نشده است | ترمینال را مجدداً باز کنید یا دستور `. $PROFILE` را اجرا کنید |
| `yt-dlp` پیدا نمی‌شود | `yt-dlp` را جداگانه نصب کنید: `pip install yt-dlp` یا از [yt-dlp.github.io](https://yt-dlp.github.io/) دانلود کنید |
| خطا در اجرا | مطمئن شوید آخرین نسخه `yt-dlp` را دارید و اتصال اینترنت فعال است |

---

## مشارکت در توسعه

این پروژه با بیش از ۵۰۰۰ خط کد در حال رشد است و مشارکت شما بسیار ارزشمند است!

1. مخزن را Fork کنید
2. یک شاخه ویژگی ایجاد کنید (`git checkout -b feature/amazing-feature`)
3. تغییرات خود را commit کنید
4. به شاخه push کنید
5. یک Pull Request باز کنید

برای اطلاع از اولویت‌های توسعه، فایل `RoadMap-CoreDeveloping.txt` را بررسی کنید.

---

## مجوز

تحت مجوز MIT منتشر شده است—استفاده، تغییر و توزیع آزاد.

---

## پشتیبانی

- 📖 **مستندات:** فایل `RoadMap-CoreDeveloping.txt` را برای ویژگی‌های آینده بررسی کنید
- 🐛 **گزارش خطا:** از طریق [گیت‌هاب Issues](https://github.com/davoodya/YTDLP-Executer-PWSH/issues) گزارش دهید
- 💬 **بحث و پرسش:** برای درخواست ویژگی یا سوال، یک Discussion باز کنید

---

**مخزن:** [github.com/davoodya/YTDLP-Executer-PWSH](https://github.com/davoodya/YTDLP-Executer-PWSH)

**توسعه‌دهنده:** Davoodya