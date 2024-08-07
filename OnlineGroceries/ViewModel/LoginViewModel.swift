//
//  LoginViewModel.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 07/08/24.
//

import Foundation
import SwiftUI

class LoginViewModel : ObservableObject{
    
    @Published var email: String = ""
    @Published var username : String = ""
    @Published var isShowPassword: Bool = false
    @Published var password: String = ""
}
