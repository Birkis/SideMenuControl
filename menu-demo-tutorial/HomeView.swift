//
//  HomeView.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 23/05/2021.
//

import SwiftUI

struct HomeView: View {

    enum Target: Int, Identifiable {
        var id: Int {
            rawValue
        }
        
        case red, green, yellow
    }
    
    @State var showAlert = false
    @State var alertType: AlertType? = nil
    @State var presentSheet: Bool = false
    @State var selectedSheet: Target? = nil
    

    
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 12){
                Group{
                    Button("Ttitle only") {
                        alertType = AlertType.ok(title: "This is an alert")
                    }
                    Button("Ttitle and message") {
                        alertType = AlertType.ok(title: "Another Alert", message: "This is the message for you")
                    }
                    Button("Ttitle and button") {
                        alertType = AlertType.singleButton(title: "Single Button", message: "If you must have a message", dismissButton: .cancel(Text("Cancel"), action: {
                            print("DEBUG: Cancel Button pressed")
                        }))
                        
                    }
                    Button("Ttitle and two buttons") {
                        alertType = AlertType.twoButton(title: "Two buttons", primaryButton: .cancel(Text("Cancel")), secondaryButton: .default(Text("Default")))
                    }
                    Button(action: {
                        selectedSheet = .green
                    }, label: {
                        Text("Present green sheet")
                    })
                    Button(action: {
                        selectedSheet = .yellow
                        print("DEBUG: \(theGame)")
                    }, label: {
                        Text("Present yellow sheet")
                    })

                    
                }
                .font(.title3)
                .frame(width: 200, height: 45)
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                .alert(item: $alertType) { $0.alert }
                .sheet(item: $selectedSheet) { selectedSheet in
                    switch selectedSheet {
                        case .red:
                            Color.red
                                .ignoresSafeArea()
                        case .green:
                            Color.green
                                .ignoresSafeArea()
                        case .yellow:
                            Color.yellow
                                .ignoresSafeArea()
                    }
                }
                

            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
