![Screenshot](images/screenshot.gif)

# KeyboardAvoider

A **KeyboardAvoider** for SwiftUI. Inspired by the simplicity of [keyboard_avoider](https://pub.dev/packages/keyboard_avoider) in [Flutter](https://flutter.dev/).

## How to use

```swift
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