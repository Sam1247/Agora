//
//  DetailSmallICon.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/5/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct DetailSmallICon: View {
    let iconName: String
    let label: String
    let color = Color.init(.systemGreen)
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .foregroundColor(color)
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                
            Text(label)
                .font(.caption)
                .foregroundColor(color)
        }
    }
}

struct DetailSmallICon_Previews: PreviewProvider {
    static var previews: some View {
        DetailSmallICon(iconName: "person.3.fill", label: "Invite Voters").previewLayout(.fixed(width: 200, height: 90))
    }
}
