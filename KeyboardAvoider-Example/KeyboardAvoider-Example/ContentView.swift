//
//  ContentView.swift
//  KeyboardAvoider-Example
//
//  Created by Michael Henry Pantaleon on 2020/01/08.
//  Copyright © 2020 Michael Henry Pantaleon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var text:String = ""

    var body: some View {
        KeyboardAvoider {
            ZStack {
                VStack(spacing: 16.0) {
                    Text("Sign up")
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                    
                    Group {
                        NormalTextField("First name", text: self.$text)
                        NormalTextField("Last name", text: self.$text)
                        NormalTextField("Email", text: self.$text)
                        NormalTextField  ("Phone number", text: self.$text)
                        NormalTextField("Password", text: self.$text)
                        NormalTextField  ("Confirm password", text: self.$text)
                        NormalTextField  ("Confirm password", text: self.$text)
                        NormalTextField  ("Confirm password", text: self.$text)
                        NormalTextField  ("Confirm password", text: self.$text)
                        NormalTextField  ("Confirm password", text: self.$text)
                    }
                  
                    Group {
                        PrimaryButton("Sign up") {
                            
                        }
                        
                        Button("Already have an account?") {
                            
                        }
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
