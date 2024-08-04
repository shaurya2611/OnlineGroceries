//
//  CountryPickerUI.swift
//  OnlineGroceriesSwiftUI
//
//  Created by CodeForAny on 30/07/23.
//

import SwiftUI
import CountryPicker

//struct confirm to UIViewControllerRepresentable bcz imported third party library CountryPicker provide written in UIKit
//UIViewControllerRepresentable protocol, which acts as a bridge between SwiftUI views and UIKit view controllers
struct CountryPickerUI: UIViewControllerRepresentable {
    
    @Binding var country: Country?
       
    
    /*
     class conforms to the CountryPickerDelegate protocol,defined by the CountryPicker library.
     It acts as a delegate that receives callbacks when the user interacts with country picker.
     */
    class Coordinator:NSObject, CountryPickerDelegate {
        var parent: CountryPickerUI
        
        init(_ parent: CountryPickerUI) {
            self.parent = parent
        }
        
        // delegate method by CountryPickerDelegate
        func countryPicker(didSelect country: Country) {
            parent.country = country
        }
    }
    
    func makeUIViewController(context: Context) -> some CountryPickerViewController {
        // code to show default country, provided by mobven git repo
        let countryPicker = CountryPickerViewController()
        countryPicker.selectedCountry  = "IN"
        countryPicker.delegate = context.coordinator
        
        return countryPicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {   
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    
}

