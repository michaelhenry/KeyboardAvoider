//
//  PrimaryButton.swift
//  KeyboardAvoider-Example
//
//  Created by Michael Henry Pantaleon on 2020/01/08.
//  Copyright © 2020 Michael Henry Pantaleon. All rights reserved.
//

import SwiftUI

struct PrimaryButton: View {
    
    var title:String = ""
    var action:(() -> Void)
    
    init(_ title:String, action: @escaping (() -> Void)) {
        self.title = title
        self.action = action
    }
    
    var body: some View {
        
        Button(action: {
            self.action()
        }) {
            Text(self.title)
                .fontWeight(.medium)
                .lineLimit(0)
                .padding()
                .frame(
                    minWidth: 0,
                    idealWidth: nil,
                    maxWidth: 200,
                    minHeight: 44,
                    idealHeight: 44,
                    maxHeight: 44,
                    alignment: .center)
                .foregroundColor(Color(UIColor.darkGray))
                .overlay(
                    RoundedRectangle(cornerRadius: 22)
                        .stroke(Color(UIColor.darkGray), lineWidth: 1)
            )
        }
        
    }
    
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton("Title here") {
            
        }
    }
}

