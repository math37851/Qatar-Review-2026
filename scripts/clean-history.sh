#!/usr/bin/env bash
# ════════════════════════════════════════════════════════════════════════
#  تنظيف تاريخ Git من ملف roster.js (الذي يحتوي 299 رقماً شخصياً)
#  ⚠️ هذا يعيد كتابة تاريخ المستودع بالكامل ويتطلب دفعاً قسرياً (force-push).
#  نفّذه فقط بعد:
#    (1) جعل المستودع خاصاً على GitHub.
#    (2) إبلاغ أي متعاونين (سيحتاجون لإعادة الاستنساخ بعد ذلك).
#
#  المتطلّب: git-filter-repo  →  pip install git-filter-repo
# ════════════════════════════════════════════════════════════════════════
set -euo pipefail

REPO_URL="https://github.com/math37851/Qatar-Review-2026.git"
WORK="qr-history-clean"

if ! command -v git-filter-repo >/dev/null 2>&1 && ! python -c "import git_filter_repo" 2>/dev/null; then
  echo "git-filter-repo غير مثبّت. ثبّته أولاً:  pip install git-filter-repo"
  exit 1
fi

echo "1) استنساخ نظيف..."
rm -rf "$WORK"
git clone "$REPO_URL" "$WORK"
cd "$WORK"

echo "2) إزالة roster.js من كل التاريخ..."
git filter-repo --path roster.js --invert-paths --force

echo "3) إعادة ربط الريموت ودفع قسري لكل الفروع والوسوم..."
git remote add origin "$REPO_URL" 2>/dev/null || git remote set-url origin "$REPO_URL"
git push origin --force --all
git push origin --force --tags

echo "✓ تم. تأكد أن roster.js لم يعد ظاهراً في تاريخ GitHub."
echo "ملاحظة: أي نسخة/Fork قديمة لدى آخرين تبقى تحتوي البيانات — اعتبر الأرقام الـ299 مكشوفة وبلّغ المدرسة."
