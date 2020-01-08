//
//  ContentView.swift
//  KeyboardAvoider-Example
//
//  Created by Michael Henry Pantaleon on 2020/01/08.
//  Copyright © 2020 Michael Henry Pantaleon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstname:String = ""
    @State var lastname:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State var confirmPassword:String = ""
    @State var phone:String = ""
    
    var body: some View {
        KeyboardAvoider {
            ZStack {
                VStack(spacing: 16.0) {
                    Text("Sign up")
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                    NormalTextField("First name", text: self.$firstname)
                    NormalTextField("Last name", text: self.$lastname)
                    NormalTextField("Email", text: self.$email)
                    NormalTextField  ("Phone number", text: self.$phone)
                    NormalTextField("Password", text: self.$password)
                    NormalTextField  ("Confirm password", text: self.$confirmPassword)
                    
                    PrimaryButton("Sign up") {
                        
                    }
                    
                    Button("Already have an account?") {
                        
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
