//
//  WelcomeView.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 28/07/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth  , height: .screenHeight)
                
                
                VStack(spacing:15){
                    Spacer()
                    Image("color_logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60  , height: 60)
                    
                    Text("Welcome \n to our store")
                        .font(Font.customfont(Gilroy.semibold, fontSize: 50))
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Get your groceries in as fast as one hour")
                        .font(Font.customfont(Gilroy.regular, fontSize: 15))
                        .foregroundStyle(Color.white.opacity(0.7))
                        .multilineTextAlignment(.center)
                    
                    
                    NavigationLink {// NavigationLink(destination , label)
                        SignInView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        RoundButton(title: "Get Started"){
                            
                        }.padding(20)
                    }
                    
                    
                    
                }.padding(.bottom,40)
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    WelcomeView()
}
