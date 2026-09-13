# 🛋️ Furniture Shop App

A premium, modern, and high-performance Flutter application designed for an elegant furniture shopping experience. This project demonstrates a clean architecture approach, robust state management using Provider, and a sophisticated design language tailored for retail excellence.

---

## 📖 Table of Contents
- [Project Overview](#-project-overview)
- [Key Features](#-key-features)
- [App Architecture](#-app-architecture)
- [State Management](#-state-management)
- [Design System](#-design-system)
- [Getting Started](#-getting-started)
- [Assets & Resources](#-assets--resources)
- [Tech Stack](#-tech-stack)

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
- **Notifications**: Real-time feedback and promotional alerts.
- **Favorites**: Personal wishlist with persistent in-memory state.
- **Home**: The central shopping hub with dynamic content.
- **Cart**: Streamlined shopping cart management with quantity controls.
- **Profile**: User account and settings management.

### 4. 🛒 Shopping Experience
- **Product Details**: Comprehensive view with hero animations, detailed descriptions, and quick-add functionality.
- **Cart Management**: Real-time price calculation, item removal, and quantity adjustments.
- **Wishlist**: Toggle favorites directly from product cards or the details page.

---

## 🏗️ App Architecture

The project follows a modular, layer-based architecture to ensure maintainability and scalability:

```text
lib/
├── Model/               # Data structures and business logic entities
│   ├── Product.dart     # Unified Product model
│   ├── CardModel.dart   # Mock data for categories
│   └── SellerModel.dart # Mock data for best sellers
├── Provider/            # State management logic
│   └── cart_provider.dart # ShopProvider for Cart & Favourites
├── Pages/               # UI Screens
│   ├── main_navigation.dart
│   ├── homepage.dart
│   ├── product_details.dart
│   ├── cart.dart
│   ├── profile.dart
│   ├── favourite.dart
│   └── notification.dart
├── Widgets/             # Reusable Atomic UI components
│   ├── CustomCard.dart
│   ├── CustomText.dart
│   ├── CustomSearch.dart
│   ├── CustomSeller.dart
│   └── CustomCategories.dart
└── main.dart            # Application entry point & Provider setup
```

---

## 🧠 State Management
The app utilizes the **Provider** pattern for reactive state management. The `ShopProvider` handles:
- **Cart Logic**: Adding/removing items, quantity updates, and total price calculation.
- **Favourites Logic**: Toggling product favorite status and real-time UI synchronization across different screens.

---

## 🎨 Design System
- **Color Palette**: The primary brand color is a sophisticated forest green (`#416954`).
- **Typography**: Powered by [Google Fonts (Inter)](https://pub.dev/packages/google_fonts), ensuring crisp and modern text rendering.
- **UI Components**: Atomic design approach with reusable widgets (see `Widgets/` folder) to maintain a unique and consistent brand identity.
- **Feedback**: Integrated `SnackBar` notifications and interactive icons for immediate user feedback.

---

## 🛠️ Tech Stack
- **Framework**: [Flutter SDK ^3.13.2](https://flutter.dev/)
- **State Management**: [Provider ^6.1.1](https://pub.dev/packages/provider)
- **Icons**: [Cupertino Icons](https://pub.dev/packages/cupertino_icons)
- **Typography**: [Google Fonts](https://pub.dev/packages/google_fonts)

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed.
- Android/iOS Emulator or physical device.

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

## 📄 License
This project is licensed under the MIT License.

---
*Developed with ❤️ for a premium shopping experience.*
