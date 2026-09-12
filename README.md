# 🛋️ Furniture Shop App

A premium, modern, and high-performance Flutter application designed for an elegant furniture shopping experience. This project demonstrates a clean architecture approach, reusable UI components, and a sophisticated design language tailored for retail excellence.

---

## 📖 Table of Contents
- [Project Overview](#-project-overview)
- [Key Features](#-key-features)
- [App Architecture](#-app-architecture)
- [Design System](#-design-system)
- [Getting Started](#-getting-started)
- [Assets & Resources](#-assets--resources)
- [Tech Stack](#-tech-stack)
- [Future Enhancements](#-future-enhancements)

---

## 🌟 Project Overview
The **Furniture Shop App** is a multi-screen retail application that prioritizes user experience (UX) and visual aesthetics. It provides a seamless journey from discovery to checkout, featuring a curated selection of premium furniture items.

---

## ✨ Key Features

### 1. 🚀 Onboarding Flow
A smooth introductory experience that sets the tone for the brand, welcoming users with high-quality imagery and clear calls-to-action.

### 2. 🏠 Advanced Homepage
- **Dynamic Categories**: Intuitive filtering for Chairs, Cupboards, Tables, and Lamps.
- **Product Discovery**: Horizontal scrolling views for featured products and best sellers.
- **Smart Search**: Integrated search functionality for quick access to specific items.

### 3. 🗺️ Unified Navigation
Implemented via [MainNavigation.dart](file:///D:/Flutter_Learning/My Project/Furniture Shop/lib/Pages/main_navigation.dart), featuring a custom Bottom Navigation Bar for:
- **Notifications**: Stay updated with the latest offers.
- **Favorites**: Personal wishlist for saved items.
- **Home**: The central shopping hub.
- **Cart**: Streamlined shopping cart management.
- **Profile**: User account and settings management.

### 4. 🛍️ Product Details
Detailed views for each furniture piece, including pricing, ratings, and specifications.

---

## 🏗️ App Architecture

The project follows a modular structure to ensure maintainability and scalability:

```text
lib/
├── Model/               # Data structures and business logic entities
│   ├── CardModel.dart   # Model for product display cards
│   └── SellerModel.dart # Model for seller/best-seller information
├── Pages/               # Individual screens and main navigation logic
│   ├── main_navigation.dart
│   ├── homepage.dart
│   ├── onboarding.dart
│   ├── cart.dart
│   ├── profile.dart
│   ├── favourite.dart
│   └── notification.dart
├── Widgets/             # Atomic, reusable UI components
│   ├── CustomCard.dart
│   ├── CustomText.dart
│   ├── CustomSearch.dart
│   ├── CustomSeller.dart
│   └── CustomCategories.dart
└── main.dart            # Application entry point
```

---

## 🎨 Design System

- **Color Palette**: The primary brand color is a sophisticated forest green (`#416954`), providing a natural and premium feel.
- **Typography**: Powered by [Google Fonts](https://pub.dev/packages/google_fonts), ensuring crisp and modern text rendering across all devices.
- **UI Components**: Every widget is custom-built (see `Widgets/` folder) to maintain a unique and consistent brand identity.

---

## 🛠️ Tech Stack

- **Framework**: [Flutter SDK ^3.13.2](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: Built-in stateful/stateless widget architecture.
- **Iconography**: [Cupertino Icons](https://pub.dev/packages/cupertino_icons)
- **Typography**: [Google Fonts](https://pub.dev/packages/google_fonts)

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed on your machine.
- An IDE (Android Studio, IntelliJ, or VS Code).
- An Android/iOS Emulator or physical device.

### Installation & Run
1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/furniture_shop_app.git
   ```
2. **Install dependencies**:
   ```bash
   flutter pub get
   ```
3. **Run the application**:
   ```bash
   flutter run
   ```

---

## 📂 Assets & Resources
The app uses structured assets located in the `assets/` directory:
- `assets/onboarding/`: Imagery for the initial user flow.
- `assets/HomePage/`: Icons, product images, and profile pictures for the main interface.
- `assets/ProductDetails/`: High-resolution product images.

---

## 🔮 Future Enhancements
- [ ] **State Management**: Integration of Provider or Bloc for complex state handling.
- [ ] **Backend Integration**: Connecting to a Firebase or REST API for real-time data.
- [ ] **Local Storage**: Persisting user favorites and cart data using Hive or SQLite.
- [ ] **Dark Mode Support**: Implementing a dark theme for better accessibility.
- [ ] **Animations**: Adding Rive or Lottie animations for a more interactive experience.

---

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

---
*Developed with ❤️ by Your Name/Team*
