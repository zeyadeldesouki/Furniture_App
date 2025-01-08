# Furniture App

This document outlines the architecture and key features of the Furniture App, a mobile application built using Flutter, Dio for network requests with Cubit for state management.

## Project Overview

The Furniture App is designed to:

* **Showcase a diverse catalog of furniture items.**
* **Allow users to browse and explore furniture categories and products.**
* **Provide detailed product information, including images and descriptions.**


## Architecture

* **Flutter:** The primary framework for building the user interface and handling application logic.
* **Dio:** A powerful package for making network requests to fetch data from APIs (e.g., product catalog, user data).
* **Cubit:** A lightweight and efficient state management library from the BLoC pattern, simplifying the management of application states and UI updates.
* **MVVM Architecture:** The project adheres to a MVVM architecture approach, separating concerns into distinct layers:
    * **Data Layer:** Handles data fetching, caching, and persistence.
    * **Presentation Layer:** Responsible for user interface and interactions.

## Key Features

* **Product Catalog:**
    * Efficiently fetches and displays a comprehensive list of furniture items.
    * Provides detailed product views with high-quality images and descriptions.


## State Management with Cubit

* **Cubit:** Utilizes Cubit to manage the application's state, such as:
    * Product list state (loading, sucess, error)
    * Cart state (items in cart, total price)
* **Streams:** Emits state changes from Cubits to rebuild UI components accordingly, ensuring efficient and reactive updates.
* **Clean Separation of Concerns:** Cubits encapsulate state logic, making it easier to test and maintain.

## Network Requests with Dio

* **Dio:** Handles all requests, including fetching product data, user data, and order information.
* **Interceptors:** Implements custom interceptors for tasks like:
    * Handling network errors and retries
* **Asynchronous Operations:** Performs network requests asynchronously to avoid blocking the UI thread.

## Testing

* **Widget Tests:** Tests the behavior of individual UI components.
* **Integration Tests:** Verifies the interaction between different parts of the application.

## Future Enhancements

* **Personalized Recommendations:** Implement a recommendation system to suggest products based on user preferences.
* **Push Notifications:** Send notifications for order updates, promotions, and special offers.
* **Offline Support:** Enable offline access to product catalogs and user data.
* **Internationalization:** Support multiple languages and currencies.
