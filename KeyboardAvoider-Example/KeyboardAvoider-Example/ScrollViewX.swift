//
//  ScrollViewX.swift
//  KeyboardAvoider
//
//  Created by Michael Henry Pantaleon on 2020/01/08.
//

#if os(iOS)

import UIKit
import SwiftUI

struct ScrollViewX<Content:View> : UIViewRepresentable {
    
    var content:Content
    
    init(@ViewBuilder _ content: () -> Content) {
        self.content = content()
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIScrollView {
        let control = UIScrollView()
        let contentView = UIHostingController(rootView: content).view!
        control.keyboardDismissMode = .interactive
        control.showsVerticalScrollIndicator = false
        control.addSubview(contentView)
        control.backgroundColor = .clear
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: control.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: control.bottomAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: control.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: control.trailingAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: control.widthAnchor).isActive = true
        let heightConstraint = contentView.heightAnchor.constraint(greaterThanOrEqualTo: control.heightAnchor)
        heightConstraint.priority = .defaultLow
        heightConstraint.isActive = true
        return control
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
    }
    
    class Coordinator: NSObject {
        var control: ScrollViewX
        
        init(_ control: ScrollViewX) {
            self.control = control
        }
    }
}

#endif
