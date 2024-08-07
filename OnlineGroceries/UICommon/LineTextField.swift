//
//  LineTextField.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 07/08/24.
//

import SwiftUI

struct LineTextField: View {
    
    @Binding var placeHOlderValue: String
    @State var title: String = "title"
    @State var placeHolder: String = "Place holder"
    @State var keyboardType: UIKeyboardType = .default
    @State var isPassword: Bool = false
    
    var body: some View {
        VStack(spacing:5){
            Text(title)
                .font(Font.customfont(Gilroy.semibold, fontSize: 16))
                .foregroundStyle(Color.textTitle)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
            if(isPassword){
                SecureField(placeHolder, text: $placeHOlderValue)
            }else{
                TextField(placeHolder, text: $placeHOlderValue)
                    .keyboardType(keyboardType)
            }
            
        }
    }
}

//
//#Preview {
//    LineTextField()
//}
