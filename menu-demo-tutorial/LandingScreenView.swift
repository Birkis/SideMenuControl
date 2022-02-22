//
//  LandingScreenView.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 23/05/2021.
//

import SwiftUI

struct LandingScreenView: View {
    
    var bgColor: Color
    var title: String
    
    var body: some View {
        ZStack {
            bgColor
            Text(title)
                .font(.title)
        }.ignoresSafeArea()
    }
}
