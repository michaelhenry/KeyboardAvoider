![Screenshot](images/screenshot.gif)

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
  
