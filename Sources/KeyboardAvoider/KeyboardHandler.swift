//
//  KeyboardHandler.swift
//  KeyboardAvoider
//
//  Created by Michael Henry Pantaleon on 2020/01/08.
//

#if os(iOS)

import Foundation
import Combine
import UIKit

class KeyboardHandler:NSObject, ObservableObject, UIGestureRecognizerDelegate {
    
    @Published var keyboardHeight:Double = 0
    
    var actualKeyboardHeight:Double?
    
    var panRecognizer:UIPanGestureRecognizer?
    var subscriptions = Set<AnyCancellable>()
    
    override init() {
        super.init()
        panRecognizer = UIPanGestureRecognizer(
            target: self, action: #selector(handlePan(_:)))
        panRecognizer?.delegate = self
        UIApplication.shared.windows.first?
            .addGestureRecognizer(panRecognizer!)
        
        let keyboardWillShow = NotificationCenter
            .default
            .publisher(for: UIResponder.keyboardWillShowNotification)
            .compactMap({ $0.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
                as? CGRect })
            .map { Double($0.height) }
            .eraseToAnyPublisher()
        
        let keyboardWillHide = NotificationCenter
            .default
            .publisher(for: UIResponder.keyboardWillHideNotification)
            .map({ _ in 0.0 })
            .eraseToAnyPublisher()
        
        keyboardWillShow.merge(with: keyboardWillHide)
            .sink {[weak self] height in
                self?.keyboardHeight = height
                self?.actualKeyboardHeight = height
        }
        .store(in: &subscriptions)
    }
    
    @objc func handlePan(
        _ gestureRecognizer:UIPanGestureRecognizer) {
        guard case .changed = gestureRecognizer.state,
            let window = UIApplication.shared.windows.first,
            let actualKbHeight = actualKeyboardHeight
            else {
                return
        }
        let originY = Double(gestureRecognizer.location(in: window).y)
        let screenHeight = Double(UIScreen.main.bounds.height)
        guard originY >= screenHeight - actualKbHeight else {
            return
        }
        keyboardHeight =  screenHeight - originY
    }
    
    public func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldReceive touch: UITouch
    ) -> Bool {
        let point = touch.location(in: gestureRecognizer.view)
        var view = gestureRecognizer.view?.hitTest(point, with: nil)
        while let candidate = view {
            if let scrollView = candidate as? UIScrollView {
                scrollView.keyboardDismissMode = .interactive
                return true
            }
            view = candidate.superview
        }
        return false
    }
    
    public func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith
        otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return gestureRecognizer === self.panRecognizer
    }
}

#endif
