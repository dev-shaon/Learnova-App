# Learnova Flutter App

This Flutter app is developed as a technical task for Sparktech Agency. The app demonstrates skills in building a clean, responsive, and functional mobile application using Flutter.

## 📱 App Structure

The app follows a modular structure for better maintainability:

```
lib/
├── Screens/
│   ├── Bottom Navbar Screens/
│   │   ├── Home_Screen.dart
│   │   ├── Course_Screen.dart
│   │   ├── Video_Screen.dart
│   │   └── Profile_Screen.dart
│   ├── Result_Screen.dart
│   └── Understanding_Screen.dart
├── Widgets/
│   ├── CustomButton.dart
│   ├── CustomTextField.dart
│   ├── Grade_Dropdown.dart
│   ├── Home_Screen_Widget.dart
│   └── Course_Widget.dart
└── main.dart
```

* `Screens/` contains all screen pages of the app.
* `Widgets/` contains reusable widgets like buttons, dropdowns, text fields, and course cards.
* `main.dart` is the entry point of the app.

## 🔧 State Management & Navigation

* Used **StatefulWidget** for screens that require dynamic state updates.
* Navigation between pages is implemented using `Navigator.push` and `Navigator.pop`.
* Bottom navigation bar is used for Home, Course, Video, and Profile screens.
* Simple state management is handled with `setState`.

## 🛠 Packages Used

* `flutter_screenutil: ^5.9.3` for responsive UI and scaling widgets according to screen size.
* `flutter/material.dart` for core Flutter UI.

## 🎨 Design & Implementation Decisions

* Followed the Figma design provided by Sparktech Agency.
* Focused on clean UI with consistent padding, margins, and alignment.
* Created reusable widgets for buttons, dropdowns, and cards to maintain consistency across the app.
* Used `flutter_screenutil` to ensure the app is responsive on different screen sizes.
* Profile screen is currently 95% done, rest of the screens follow the provided designs.

## 📂 APK

The release APK can be uploaded to Google Drive and shared here: `[https://drive.google.com/drive/folders/1ULIYEx7NNZ0fXbIYUKVZU8k9TLt7fEey?usp=sharing]`

## 📌 Repository Link

GitHub Repository: [Learnova-App](https://github.com/dev-shaon/Learnova-App)

---

**Note:** This README provides an overview of the app structure, implementation, and design decisions for evaluation purposes.
