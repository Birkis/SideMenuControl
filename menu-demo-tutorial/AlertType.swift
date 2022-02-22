//
//  AlertType.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 23/05/2021.
//

import SwiftUI


enum AlertType: Identifiable {
    
    case ok(title: String, message: String? = nil)
    case singleButton(title: String, message: String? = nil, dismissButton: Alert.Button)
    case twoButton(title: String, message: String? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button)
    
    var id: String {
        switch self {
        
        case .ok:
            return "OK"
        case .singleButton:
            return "singleButton"
        case .twoButton:
            return "twoButtons"
        }
        
    }
    
    var alert: Alert {
        switch self {
        
        case .ok(title: let title, message: let message):
           return Alert(title: Text(title), message: message != nil ? Text(message!) : nil)
        case .singleButton(title: let title, message: let message, dismissButton: let dismissButton):
           return Alert(title: Text(title), message: message != nil ? Text(message!) : nil, dismissButton: dismissButton )
        case .twoButton(title: let title, message: let message, primaryButton: let primaryButton, secondaryButton: let secondaryButton):
           return Alert(title: Text(title), message: message != nil ? Text(message!) : nil, primaryButton: primaryButton, secondaryButton: secondaryButton )
        }
    }
}
