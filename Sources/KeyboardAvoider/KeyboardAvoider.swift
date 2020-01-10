//
//  KeyboardAvoider.swift
//  KeyboardAvoider
//
//  Created by Michael Henry Pantaleon on 2020/01/08.
//

#if os(iOS)

import SwiftUI

public struct KeyboardAvoider<Content:View>: View {
    
    private(set) var content:Content
    
    public init(@ViewBuilder _ content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        
        ScrollView {
            self.content
        }
        .avoidKeyboard()
    }
}

#endif


