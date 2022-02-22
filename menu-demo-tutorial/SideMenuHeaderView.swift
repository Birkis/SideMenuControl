//
//  SideMenuHeadderView.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 22/05/2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            

            Button(action: {
                withAnimation(.spring()){
                    showMenu.toggle()
                }
            }, label: {
                Image(systemName: "x.circle")
                    .font(.system(size: 28))
                    .padding()
                    .foregroundColor(.white)
            })
         
            
            VStack(alignment: .leading) {
                
                Image("tiger-1")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                Spacer()

            
                
                Text("Tiger King")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@Tiger")
                    .font(.system(size: 14))
                
                HStack{
                    Spacer()
                }
                
                Spacer()
                
            }.padding()
        }
        
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(showMenu: .constant(true))
    }
}
