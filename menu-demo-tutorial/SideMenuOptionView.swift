//
//  SideMenuOptionView.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 22/05/2021.
//

import SwiftUI

struct SideMenuOptionView: View {
    
    
    var viewModel: SideMenuViewModel


    
    
    
    var body: some View {
        
//        NavigationLink(
//            destination: LandingScreenView(bgColor: viewModel.color, title: viewModel.title),
//            label: {
//                HStack(spacing: 16) {
//                    Image(systemName: viewModel.imageName)
//                            .frame(width: 24, height: 24)
//                    Text(viewModel.title)
//                            .font(.system(size: 15, weight: .semibold))
//                        Spacer()
//                    }
//                .padding()
//                .foregroundColor(.white)
//            })
 
//        NavigationLink(viewModel.title) {
//            viewModel.body
//        }
        
        NavigationLink {
            viewModel.body
        } label: {
            HStack(spacing: 16) {
                Image(systemName: viewModel.imageName)
                        .frame(width: 24, height: 24)
                Text(viewModel.title)
                        .font(.system(size: 15, weight: .semibold))
                    Spacer()
                }
            .padding()
            .foregroundColor(.white)
        }

        
        
        
        
    }
}
