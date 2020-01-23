//
//  KeyboardAvoiderModifier.swift
//  KeyboardAvoider
//
//  Created by Michael Henry Pantaleon on 2020/01/08.
//

#if os(iOS)

import SwiftUI
import Combine

public struct KeyboardAvoiderModifier: ViewModifier {
    
    @ObservedObject var keyboardHandler = KeyboardHandler()
    
    public func body(content: Content) -> some View {
        content
            .padding(.bottom, keyboardHandler.keyboardHeight)
    }
}

extension View {
    public func avoidKeyboard() -> some View {
        modifier(KeyboardAvoiderModifier())
    }
}

#endif
