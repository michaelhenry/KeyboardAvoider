//
//  UIResponder_Extension.swift
//  KeyboardAvoider-Example
//
//  Created by Michael Henry Pantaleon on 2020/01/22.
//  Copyright © 2020 Michael Henry Pantaleon. All rights reserved.
//

import UIKit

extension UIResponder {
    
    private struct Static {
        static weak var responder: UIResponder?
    }
    
    static func current() -> UIResponder? {
        Static.responder = nil
        UIApplication.shared.sendAction(
            #selector(UIResponder.trap),
            to: nil, from: nil, for: nil)
        return Static.responder
    }
    
    @objc private func trap() {
        Static.responder = self
    }
}
