# BaseSwiftUI


[![Swift](https://img.shields.io/badge/Swift-5.10-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)](https://developer.apple.com/ios/)
[![Architecture](https://img.shields.io/badge/Architecture-MVVM--C-blue.svg)](#-architecture-overview)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Build](https://img.shields.io/badge/Build-Passing-brightgreen.svg)]()
[![Made with ❤️ by Abdallah Edres](https://img.shields.io/badge/Made%20with%20❤️%20by-Abdallah%20Edres-red.svg)](https://github.com/AbdallahEdres)

A professional SwiftUI base architecture template showcasing Clean Architecture principles with MVVM-C pattern.

## Architecture Overview

This project demonstrates a clean, scalable architecture for SwiftUI applications:

### 📁 Project Structure

```
BaseSwiftUI/
├── Sources/
│   ├── Core/
│   │   ├── Base/              # Base view models and protocols
│   │   ├── Coordinator/       # Navigation coordination
│   │   └── DI/                # Dependency injection
│   ├── Domain/
│   │   ├── Base/              # Base repository and use cases
│   │   └── Protocols/         # Domain protocols
│   ├── Presentation/
│   │   ├── Common/            # Shared UI components
│   │   └── [Features]/        # Feature-specific views
│   ├── Utilities/
│   │   ├── Extensions/        # Swift extensions
│   │   └── Helpers/           # Helper utilities
│   └── Models/                # Data models
```

### 🏗️ Architecture Layers

#### 1. **Presentation Layer**
- SwiftUI Views
- ViewModels (MVVM pattern)
- Coordinators for navigation

#### 2. **Domain Layer**
- Use Cases (business logic)
- Repository protocols
- Domain entities

#### 3. **Core Layer**
- Base classes and protocols
- Dependency injection
- Shared utilities

### 🎯 Key Features

- ✅ **MVVM-C Pattern**: Clean separation of concerns with Coordinator-based navigation
- ✅ **Dependency Injection**: Centralized DI container for loose coupling
- ✅ **Protocol-Oriented**: Leverages Swift protocols for testability
- ✅ **Clean Architecture**: Clear layer separation (Presentation → Domain → Data)
- ✅ **Memory Management**: Proper use of weak references and deinit tracking
- ✅ **Type-Safe Navigation**: Strongly typed routes with Coordinator pattern

### 🚀 Getting Started

1. Open the project in Xcode
2. Build and run (`Cmd + R`)
3. Explore the architecture structure

### 📝 Usage Example

```swift
// 1. Define a route
enum FeatureRoute: RouteProtocol {
    case detail(id: String)
    case settings
}

// 2. Create a coordinator
class FeatureCoordinator: Coordinator {
    func viewForRoute(_ route: FeatureRoute) -> AnyView {
        // Return appropriate view
    }
}

// 3. Inject dependencies
let container = DIContainer()
let coordinator = container.buildFeatureCoordinator()
```

### 🧪 Testing

The architecture is designed for easy testing:
- Mock coordinators for navigation testing
- Protocol-based repositories for data layer mocking
- Isolated ViewModels for business logic testing

### 📚 Best Practices

- Always use protocols for dependencies
- Keep ViewModels independent of UIKit/SwiftUI
- Use Coordinators for all navigation
- Leverage DI container for object creation
- Follow Single Responsibility Principle

### 👨‍💻 Author

**Abdallah Edres**

Created on: 21/10/2025

### 📄 License

This is a base template for educational and showcase purposes.

---

**Note**: This is a local-only architecture template. No networking or API layers are included by design.
