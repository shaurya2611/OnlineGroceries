//
//  LoginView.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 04/08/24.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = LoginViewModel()
    @State var password = ""
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight )
                .foregroundStyle(Color.white)
            
            
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.top, .screenHeight*0.1)
                
                Spacer()
                
                
               Text("Sign Up")
                        .font(Font.customfont(Gilroy.semibold, fontSize: 26))
                        .foregroundStyle(Color.primaryText)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                    
               Text("Enter your email and password")
                        .font(Font.customfont(Gilroy.semibold, fontSize: 16))
                        .foregroundStyle(Color.secondaryText)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
               
                
                LineTextField(placeHOlderValue: $viewModel.username, title: "Username", placeHolder: "Enter your username")
                Divider()
                
                LineTextField(placeHOlderValue: $viewModel.email, title: "Email", placeHolder: "Enter your email address", keyboardType: .emailAddress)
                Divider()
                
                LineTextField(placeHOlderValue: $viewModel.password, title: "Password", placeHolder: "Enter your password", isPassword: viewModel.isShowPassword)
                    .modifier(ShowButton(isShow: $viewModel.isShowPassword))
                Divider()
                
     
                
                RoundButton(title: "Sign Up"){
                    
                }
                
                HStack{
                    Text("Already have an account ?")
                        .foregroundStyle(Color.primaryText)
                    
                    Button{
                        
                    } label:{
                        Text("Sign Up")
                            .foregroundStyle(Color.primaryApp)
                    }
                }.font(Font.customfont(Gilroy.semibold, fontSize: 14))
                
                Spacer()
            }.padding()
            
            
                   
                }
        .ignoresSafeArea()
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "chevron.left")
                            .imageScale(.large)
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

