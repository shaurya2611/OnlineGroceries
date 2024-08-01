//
//  WelcomeView.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 28/07/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
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
                
                Button{
                    
                } label: {
                    Text("Get Started")
                        .font(Font.customfont(Gilroy.semibold, fontSize: 20))
                        .foregroundColor(Color.white)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/ ,maxWidth: .widthPer(per: 80), minHeight: 60)
                        .background(Color.primaryApp)
                        .cornerRadius(20, corner: .allCorners)
                       
                }.padding(.horizontal).padding()
                    
                
            }.padding(.bottom,40)
        }.ignoresSafeArea()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .toolbar(.hidden )
    }
}

#Preview {
    WelcomeView()
}
