//
//  Ballot2.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/15/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Ballot2: View {
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
                SliderVoteCell(username: "Ahmed Mosaad")
                SliderVoteCell(username: "Abdalla Elsaman")
                SliderVoteCell(username: "Saed Ibrahim")
                SliderVoteCell(username: "Hamo Beka")
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

struct SliderVoteCell: View {
    @State var score: Double = 0
    let username: String
    var body: some View {
        VStack {
            HStack {
                Text(username)
                    .font(.headline)
                Spacer()

                Text("\(Int(score))/100")
                    .font(.body)
            }
            Slider(value: $score, in: 0...100) {
                Text("Score")
            }
            .accentColor(Color.init(.systemGreen))
        }
        .padding()
    }
}

struct Ballot2_Previews: PreviewProvider {
    static var previews: some View {
        Ballot2()
    }
}
