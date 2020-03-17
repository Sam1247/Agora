//
//  FinishedList.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/14/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct FinishedList: View {
    var body: some View {
//        NavigationView {
            List {
                Section (header: FinishedHeader()) {
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
            //.navigationBarHidden(true)
            //.navigationBarTitle("Finis")
            .environment(\.horizontalSizeClass, .regular)
            .navigationBarTitle("Elections", displayMode: .inline)
//        }
    }
}

struct FinishedHeader: View {
    var body: some View {
        HStack (alignment: .center){
            Text("Finished")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color.init(.label))
            
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .foregroundColor(.blue)
            
        }.padding(.top)
    }
}

struct FinishedList_Previews: PreviewProvider {
    static var previews: some View {
        FinishedList()
    }
}
