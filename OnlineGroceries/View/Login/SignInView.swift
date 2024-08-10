//
//  SignInView.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 01/08/24.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    @State var phoneNumber : String = ""
    @State var showCountryPicker: Bool = false
    @State var countryObj : Country?
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight )
            
            VStack{
                
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth )
                
                Spacer()
            }
            
            ScrollView{
                
                VStack(spacing:25){
                    
                    // Title
                    Text("Get your groceries \nwith nector")
                        .font(Font.customfont(Gilroy.bold, fontSize: 30))
                        .foregroundStyle(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: .screenWidth, alignment: .leading)
                    
                    
                    // phone number field
                    HStack{
                        Button{
                            showCountryPicker = true
                        } label: {
                            
                            if let countryObj = countryObj{
                                
                                Text("\(countryObj.isoCode.getFlag())")
                                    .font(Font.customfont(Gilroy.medium, fontSize: 30))
                                
                                
                                Text("+\(countryObj.phoneCode)")
                                    .font(Font.customfont(Gilroy.medium, fontSize: 20))
                                    .foregroundStyle(Color.primaryText)
                            }
                            
                        }
                        
                        TextField("Enter Phone Number", text: $phoneNumber)
                            .font(Font.customfont(Gilroy.medium, fontSize: 20))
                            .foregroundStyle(Color.primaryText)
                            .keyboardType(.numberPad)
                    }
                    
                    Divider().padding(.horizontal)
                    
                    Text("or connect with social media")
                        .font(Font.customfont(Gilroy.semibold, fontSize: 13))
                        .foregroundStyle(Color.gray).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    
                    // google login button
                    NavigationLink {// NavigationLink(destination , label)
                        LoginView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        RoundedButtonWithLogo(title: "Continue with Google", logo: "google_logo"){
                            
                        }
                    }
                    
                    // facebookmk login button
                    RoundedButtonWithLogo(title: "Continue with Facebook", logo: "fb_logo"){
                        
                    }
                    
                }
                .padding(.horizontal)
                .frame(width: .screenWidth)
                .padding(.top, .screenWidth)
                
                
            }.padding()
            
        }
        .onAppear{
            // initalize the Country O bject with default values as the screen is loaded
            self.countryObj = Country(phoneCode: "91", isoCode: "IN")
        }
        .sheet(isPresented: $showCountryPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        
    }
}

#Preview {
    SignInView()
}
