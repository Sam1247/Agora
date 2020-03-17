//
//  PendingList.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/14/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct PendingList: View {
    var body: some View {
//        NavigationView {
            List {
                Section (header: PendingHeader()) {
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

struct PendingHeader: View {
    var body: some View {
        HStack (alignment: .center){
            Text("Pending")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color.init(.label))
            
            Image(systemName: "clock.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .foregroundColor(.yellow)
            
        }.padding(.top)
    }
}

struct PendingList_Previews: PreviewProvider {
    static var previews: some View {
        PendingList()
    }
}
