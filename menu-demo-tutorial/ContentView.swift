//
//  ContentView.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 22/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu: Bool = false
  
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                if showMenu {
                 SideMenuView(showMenu: $showMenu)
                }
                HomeView()
                    .cornerRadius(showMenu ? 20 : 10 )
                    .offset(x: showMenu ? 300 : 0, y: showMenu ? 44 : 0)
                    .scaleEffect(showMenu ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            showMenu.toggle()
                        }
                        
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Home")
            }
            .onAppear{
                showMenu = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


