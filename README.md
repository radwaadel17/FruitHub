# FruitHub App 

[![Flutter](https://img.shields.io/badge/Flutter-2.x-blue)]()
[![Dart](https://img.shields.io/badge/Dart-2.x-blueviolet)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-green)]()

## Overview
**FruitMart** is a cross-platform mobile e-commerce application for buying fresh fruits.  
Built with **Flutter** and designed using **Clean Architecture**, **SOLID principles**, and **MVVM**, the app focuses on responsive UI, secure authentication, real-time inventory via **Firestore**, integrated payment, and test coverage for core logic.

This repository contains the mobile client (Flutter) — suitable as a portfolio project or production-ready starter for grocery/fruit e-commerce.

---

## Key Features
- **User Authentication:** Email/password + social login (Google). Secure auth with **Firebase Authentication**.
- **Product Catalog:** Categories, search, filters (price, freshness), product details with images.
- **Cart & Wishlist:** Add/remove items, quantity, size/weight options.
- **Checkout & Payment:** Payment gateway integration (Stripe / PayMob placeholder), order confirmation, order history.
- **Real-time Inventory:** Product stock & price updates via **Firebase Firestore**.
- **Responsive UI:** Adaptive layouts for different screen sizes (phones & tablets) — Android & iOS.
- **State Management:** **Cubit / BLoC** for predictable state flows.
- **Architecture:** Clean Architecture (Domain / Data / Presentation), MVVM-like separation for views and viewmodels.
- **Testing:** Unit tests for business logic, widget tests for core UI, and integration tests for flows.
- **Notifications:** Push notifications via **Firebase Cloud Messaging (FCM)**.

---

## Screenshots
> Add screenshots or GIFs in `/assets/screenshots/` and update paths below.

| Login | Home | Cart |
|---|---:|:---:|
| ![login](assets/screenshots/login.png) | ![home](assets/screenshots/home.png) | ![cart](assets/screenshots/cart.png) |

---

## Tech Stack
- **Framework:** Flutter (Dart)  
- **State Management:** Cubit / BLoC  
- **Architecture:** Clean Architecture, SOLID, MVVM patterns  
- **Backend & Realtime DB:** Firebase (Authentication, Firestore, Storage, Cloud Messaging)  
- **Payment:** Stripe / PayMob (example integrations)  
- **Testing:** flutter_test, mocktail, integration_test  
- **Tools:** Git, GitHub, CI (GitHub Actions), Trello / Jira

---

## Project Structure (high-level)
