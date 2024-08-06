//
//  LoginView.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 04/08/24.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = "Shaurya Singh"
    @State var email: String = "shaurya2611@gmail.com"
    @State var password: String = ""
    
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight )
            
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                
                Text("Sign UP")
                
                Text("Enter your credentials to continue")
                
            
                
                Text("Username")
                
                TextField("Enter Username", text: $username)
                
                Text("Email")
                
                TextField("Enter Username", text: $username)
                
                Text("Password")
                
                SecureField("Enter Username", text: $username)
                
                
                
                
                
                    
            }.frame(width: .screenWidth, alignment: .leading)
            
             
                
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
