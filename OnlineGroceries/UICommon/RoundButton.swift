//
//  RoundButton.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Shaurya Singh on 28/07/24.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            Text(title)
                .font(.customfont(.semibold, fontSize: 18))
                .foregroundColor(.white)
        }
        .frame( width: .screenWidth*0.9, height: 55 )
        .background( Color.primaryApp)
        .cornerRadius(20)
    }
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton()
            .padding(20)
    }
}
