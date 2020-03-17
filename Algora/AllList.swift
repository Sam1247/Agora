//
//  AllList.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/14/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct AllList: View {
    var body: some View {
//        NavigationView {
            List {
                Section (header: AllHeader()) {
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                    ElectionCell(election: allElectionData[0])
                }
            }
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
            .navigationBarTitle("Elections", displayMode: .inline)
//        }
    }
}

struct AllHeader: View {
    var body: some View {
        HStack (alignment: .center){
            Text("All")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color.init(.label))
            
            Image(systemName: "tray.full.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .foregroundColor(.gray)
            
        }.padding(.top)
    }
}


struct AllList_Previews: PreviewProvider {
    static var previews: some View {
        AllList()
    }
}
