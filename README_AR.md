# Flutter Structure — GetX MVC

هذا قالب يدوي لتنظيم مشاريع Flutter باستخدام GetX وMVC.

## طريقة الاستخدام
1. أنشئ مشروع Flutter جديدًا:
   `flutter create project_name`
2. انسخ مجلد `lib/` من هذا القالب إلى المشروع الجديد (أو انقل الملفات المطلوبة إذا كان لديك كود سابق).
3. انسخ مجلد `assets/` عند الحاجة.
4. أضف الاعتماديات من قسم `dependencies` في `pubspec.yaml`، ولا تستبدل ملف المشروع الجديد كاملًا دون مراجعة.
5. سجّل الأصول في قسم `flutter` داخل `pubspec.yaml`.
6. نفّذ:
   `flutter pub get`
   `flutter analyze`
   `flutter run`

## الهيكلية
- `Binding/`: تسجيل الاعتماديات والـ Controllers.
- `controller/`: منطق الشاشات.
- `core/Class/`: كلاسات مشتركة.
- `core/Constant/`: الثوابت والمسارات.
- `core/functions/`: دوال مساعدة.
- `core/localization/`: ملفات الترجمة.
- `core/middleware/`: قواعد التوجيه قبل فتح الصفحات.
- `core/services/`: خدمات مشتركة.
- `data/datasource/static/`: بيانات محلية ثابتة.
- `data/datasource/remote/`: مصادر البيانات من API عند الحاجة.
- `data/model/`: نماذج البيانات.
- `view/screen/`: الشاشات.
- `view/widget/`: عناصر واجهة قابلة لإعادة الاستخدام.

مجلدا `remote/` وبعض مجلدات `core/` قد يبدآن فارغين، وهذا طبيعي. أضف الملفات عند الحاجة.
