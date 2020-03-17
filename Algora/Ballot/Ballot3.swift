//
//  Ballot3.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/15/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Ballot3: View {
    var body: some View {
        List {
            Section (header: Text("Candidates")
                        .font(.system(size: 24))
                        .bold()
                .foregroundColor(Color.init(.label))
                        .padding(.top),
                     footer: Text("Drag the sliders to set the score of each candidate")
                )
            {
                SegmentedVoteCell(username: "Ahmed Mosaad")
                SegmentedVoteCell(username: "Abdalla Elsaman")
                SegmentedVoteCell(username: "Saed Ibrahim")
                SegmentedVoteCell(username: "Hamo Beka")
            }
            
            Section(header: VoteCancelSection()) {
                EmptyView()
            }
        }
        .listStyle(GroupedListStyle())
        .environment(\.horizontalSizeClass, .regular)
        .navigationBarTitle("Cast your Vote", displayMode: .inline)
    }
}

struct SegmentedVoteCell: View {
    @State private var selectorIndex = 0
    @State private var numbers = ["0","1","2","3","4","5","6","7","8"]
    let username: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(username)
                .font(.headline)
            Picker("Scores", selection: $selectorIndex) {
                ForEach(0 ..< numbers.count) { index in
                    Text(self.numbers[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }.padding()
    }
}

struct Ballot3_Previews: PreviewProvider {
    static var previews: some View {
        Ballot3()
    }
}
