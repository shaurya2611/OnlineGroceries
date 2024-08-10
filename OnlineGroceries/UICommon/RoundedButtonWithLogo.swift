//
//  RoundedButtonWithLogo.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 03/08/24.
//

import SwiftUI

struct RoundedButtonWithLogo: View {
    @State var title: String = "Title"
    @State var logo: String = "google_logo"
    var didTap: (()->())?
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            
            HStack(spacing:20){
                
                Image(logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text(title)
                    .font(.customfont(.bold, fontSize: 18))
                    .foregroundColor(.white)
                
            }
            
        }
        .frame( minWidth: 0, maxWidth: .infinity, minHeight: 55, maxHeight: 55 )
        .background( Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundedButtonWithLogo().padding()
}
