//
//  CandidatePlusCell.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/15/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct CandidatePlusCell: View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Image(systemName: "plus")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 18)
                .foregroundColor(Color.init(.systemGreen))
        }
    }
}

struct CandidateTrashCell: View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Image(systemName: "trash")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 18)
                .foregroundColor(Color.init(.systemRed))
        }
    }
}

struct CandidatePlusCell_Previews: PreviewProvider {
    static var previews: some View {
        CandidatePlusCell(name: "Ahmed mosad").previewLayout(.fixed(width: 200, height: 90))
    }
}
