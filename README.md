# 📐 Smart Mathematics Assessment & Review Portal (Grade 8)

An interactive, high-fidelity, and secure evaluation and practice portal for Grade 8 Mathematics, specifically engineered to comply with strict cybersecurity guidelines and 100% anonymized student privacy protection.

---

## 🌟 Educational Framework (Three-Phase Assessment Model)

The portal implements a structured three-phase pedagogical model designed to accurately measure and enhance learning outcomes:

1. **Pre-Test Phase 📝**:
   * A silent, neutral 10-question Multiple Choice Question (MCQ) assessment to establish a baseline of the student's mathematical understanding before training.
   * **Strict Assessment Integrity**: During this phase, all immediate feedbacks, correct/wrong option highlights, step-by-step explanations, mathematical strategies, and the AI chatbot are completely bypassed and disabled to ensure genuine results.

2. **Interactive Practice Phase (Intervention) 🏋️‍♂️**:
   * An active learning session containing 32 interactive geometry, algebra, and statistics questions.
   * **Responsible AI & Scaffolding**: Students receive instant feedback with option highlights and mathematical strategies. Upon wrong answers, they can activate the **Responsible AI Math Assistant** to discuss solving steps. The bot has strict off-topic keyword filtering to block non-academic queries.

3. **Post-Test Phase 🏆**:
   * A final silent assessment with the same constraints as the Pre-Test. This phase is dynamically unlocked only after the student has successfully solved all 32 practice questions, allowing precise measurement of the student's growth.

---

## 🔒 Privacy & Cybersecurity (Privacy-by-Design)

The platform is designed to guarantee absolute student anonymity and prevent data exposure online:

* **Qatar Personal ID (QID) Login**: Students use their 11-digit QID as both username and password. No signup forms or emails are required.
* **100% Anonymized Data (GDPR/COPPA Compliant)**: Zero student names, phone numbers, or emails are processed online. Suffix namespaces (`qr8_`) are stored under generic labels (`"طالب"`) in the database.
* **Secure Teacher Dashboard**: Displays QIDs and Sections (instead of student names), allowing the teacher to privately map online scores to their local offline worksheets. Includes comparison tables, progress meters, and detailed CSV exports.
* **XSS Defenses**: All dynamic strings are escaped via a custom `escapeHTML()` function, and chatbot messages are rendered natively using `.textContent` to neutralize HTML payload injections.
* **Password Hashing**: Student passwords are securely hashed client-side utilizing **SHA-256** Web Crypto API before comparison or storage.

---

## 🛠️ Technical Features & Design

* **Premium Split-Screen Landscape Layout**: Drawing inspiration from the modern Qatari Ministry of Education portal, it splits into a side-by-side design on desktop and stacks responsively on mobile.
* **Instant Math Rendering (KaTeX)**: Standard LaTeX mathematical equations and subscripts are rendered dynamically with LTR layout for ultra-clear visibility.
* **Responsive 2-Column Workspace**: Displays the question slide image (`SlideX.JPG`) on the left and the question card, options, and AI bot on the right.

---

## 📂 Repository File Structure

```text
├── index.html       # Main HTML portal containing premium CSS styles & javascript engine
├── data.js          # Questions database containing math formulas, strategies, and explanations
├── roster.js        # Authorized QIDs & sections list for the 299 enrolled students
├── SlideX.JPG       # Embedded geometry and algebra slide images (Slide1 to Slide29)
├── LICENSE          # MIT Open Source License
└── cybersecurity_review.md  # Cybersecurity audit report & database rules
```

---

## 🚀 Deployment Guide

Since the portal is a static web application, it can be hosted for free in under a minute on any major cloud provider:

1. **Local Run**: Open `index.html` directly in any web browser.
2. **Web Hosting**: Upload the project folder directly to **GitHub Pages**, **Vercel**, **Netlify**, or **Firebase Hosting**.

---

## 📄 License

This project is open-source and licensed under the [MIT License](LICENSE).
