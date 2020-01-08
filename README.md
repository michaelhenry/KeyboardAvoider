![Screenshot](images/screenshot.gif)

[![Deployment status](https://github.com/michaelhenry/KeyboardAvoider/workflows/deploy_to_cocoapods/badge.svg)](https://github.com/michaelhenry/KeyboardAvoider/actions)
[![Version](https://img.shields.io/cocoapods/v/KeyboardAvoider.svg?style=flat)](https://cocoapods.org/pods/KeyboardAvoider)
[![License](https://img.shields.io/cocoapods/l/KeyboardAvoider.svg?style=flat)](https://cocoapods.org/pods/KeyboardAvoider)
[![Platform](https://img.shields.io/cocoapods/p/KeyboardAvoider.svg?style=flat)](https://cocoapods.org/pods/KeyboardAvoider)

# ⌨️ KeyboardAvoider {}

A **KeyboardAvoider** for SwiftUI. Inspired by the simplicity of [keyboard_avoider](https://pub.dev/packages/keyboard_avoider) in [Flutter](https://flutter.dev/).

## Installation

### [Swift Package Manager](https://github.com/apple/swift-package-manager)

Create a `Package.swift` file.

```swift
import PackageDescription

let package = Package(
  name: "TestProject",
  dependencies: [
    .package(url: "https://github.com/michaelhenry/KeyboardAvoider.git", from: "1.0.0")
  ]
)
```

### Cocoapods

```ruby
target 'MyApp' do
  pod 'KeyboardAvoider', '~> 1.0'
end
```

## How to use

```swift
import KeyboardAvoider

KeyboardAvoider {
  // ... Your view with TextFields
}
```

Example:

```swift
KeyboardAvoider {
    VStack {
        TextField("First name", text: self.$firstname)
        TextField("Last name", text: self.$lastname)
        TextField("Email", text: self.$email)
        TextField("Password", text: self.$password)
        TextField("Confirm password", text: self.$password)
        Button("Sign Up") {

        }
        Button("Already have an account?") {

        }
    }
    .padding(.horizontal, 16.0)
}
```

## FAQ
- How to remove the extra space between the textfield and the keyboard
  
  > You can remove it by ignoring the `safe area layout - bottom`. Please see the [Sample Project](https://github.com/michaelhenry/KeyboardAvoider/blob/d5293c541673bce47f00cdd0ec2f1b604b5341c8/KeyboardAvoider-Example/KeyboardAvoider-Example/ContentView.swift#L45)
 
 ```swift
  .edgesIgnoringSafeArea(.bottom)
  ```
  
