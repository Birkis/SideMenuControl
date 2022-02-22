//
//  SideMenuView.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 22/05/2021.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var showMenu: Bool
    @State var caseValue  = ""
    
    
    var body: some View {
        ZStack{
         
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()            
            VStack{
                
                SideMenuHeaderView(showMenu: $showMenu)
                    .foregroundColor(.white)
                    .frame(height: 240)
                Text(caseValue)
                    .foregroundColor(.white)
                    .font(.title3)
                
                //CELL ITEMS: Bruk .allCases for å hente ut Enum-info
                ForEach(SideMenuViewModel.allCases, id:\.self) { option in
                    VStack(alignment: .leading, spacing: 2) {
                        SideMenuOptionView(viewModel: option)
                        //Sett verdien av en option til en @State variable her
//                        Button(action: {
//                            caseValue = option.title
//                        }, label: {
//                            Image(systemName: "eyedropper.full")
//                                .foregroundColor(.white)
//                        })
                        
                    }
                    
                }
                Spacer()
            }
            
            
        }
        .navigationBarHidden(true)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(showMenu: .constant(true))
    }
}
