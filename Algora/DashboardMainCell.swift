//
//  ContentView.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/4/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI
import UIKit.UIColor

struct DashboardMainCell: View {
    var iconName: String
    var status: String
    var count: Int
    var iconColor: Color
    var body: some View {
//        Button (action: {
//
//        }) {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: iconName)
                        .resizable()
                        .foregroundColor(iconColor)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35)
                        
                    Spacer()
                    Text("\(count)")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                        .foregroundColor(Color.init(.label))
                }
                Spacer()
                Text(status)
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(Color.init(.systemGray))
            }.padding()

//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardMainCell(iconName: "tray", status: "Today", count: 2, iconColor: Color.blue).previewLayout(.fixed(width: 200, height: 90))
    }
}
