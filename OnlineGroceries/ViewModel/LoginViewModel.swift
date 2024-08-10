//
//  LoginViewModel.swift
//  OnlineGroceries
//
//  Created by Shaurya Singh on 07/08/24.
//

import Foundation
import SwiftUI

class LoginViewModel : ObservableObject{
    
    static var shared: LoginViewModel = LoginViewModel()
    
    @Published var txtUsername: String = ""
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowPassword: Bool = false
    
    @Published var showError = false
    @Published var errorMessage = ""
    @Published var isUserLogin: Bool = false
//    @Published var userObj: UserModel = UserModel(dict: [:])
}
