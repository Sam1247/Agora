//
//  Main.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/17/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

//

struct Main: View {
    @State var selected = 0
    
    init() {
        UITabBar.appearance().tintColor = UIColor.systemGreen
    }
    var body: some View {
        TabView(selection: $selected) {
            Dashboard().tabItem {
                VStack {
                    Image(systemName: "rectangle.grid.2x2")
                        .font(.system(size: 20))
                    Text("Dashboard")
                }
            }.tag(0)
            
            Contact().tabItem {
                VStack {
                    Image(systemName: "envelope.fill")
                    .font(.system(size: 20))
                    Text("Contact")
                }
            }.tag(1)
            
            Profile().tabItem {
                VStack {
                    Image(systemName: "person")
                    .font(.system(size: 20))
                    Text("Profile")
                }
            }.tag(2)
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
