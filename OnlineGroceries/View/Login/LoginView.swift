//
//  LoginView.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 04/08/24.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = LoginViewModel.shared
    
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
                    .padding(.top, .screenHeight*0.1)
                
                Spacer()
                
                
                Text("Loging")
                    .font(Font.customfont(Gilroy.semibold, fontSize: 26))
                    .foregroundStyle(Color.primaryText)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                
                Text("Enter your email and password")
                    .font(Font.customfont(Gilroy.semibold, fontSize: 16))
                    .foregroundStyle(Color.secondaryText)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                
                
                LineTextField(placeHOlderValue: $viewModel.txtEmail, title: "Email", placeHolder: "Enter your email address", keyboardType: .emailAddress)
                Divider()
                
                LineTextField(placeHOlderValue: $viewModel.txtPassword, title: "Password", placeHolder: "Enter your password", isPassword: viewModel.isShowPassword)
                    .modifier(ShowButton(isShow: $viewModel.isShowPassword))
                Divider()
                
                NavigationLink(destination: ForgotPasswordView()) {
                    Text("Forogt Passowrd?")
                        .font(Font.customfont(Gilroy.semibold, fontSize: 14))
                        .foregroundStyle(Color.primaryText)
                    
                }
                
                
                
                
                
                RoundButton(title: "Log In"){
                    
                }
                
                HStack{
                    Text("Don't have an account?")
                        .foregroundStyle(Color.primaryText)
                    
                    Button{
                        
                    } label:{
                        Text("Sign Up")
                            .foregroundStyle(Color.primaryApp)
                    }
                }.font(Font.customfont(Gilroy.semibold, fontSize: 14))
                
                
            }.padding()
            
            
            
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Image("back")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    LoginView()
}


