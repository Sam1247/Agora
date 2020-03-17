//
//  ElectionCell.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/5/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct ElectionCell: View {
    let election: Election
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
                .foregroundColor(Color.init(.systemGreen))
            Text(election.name)
            Spacer()
        }
    }
}

struct ElectionCell_Previews: PreviewProvider {
    static var previews: some View {
        ElectionCell(election: allElectionData[0]).previewLayout(.fixed(width: 300, height: 70))
    }
}
