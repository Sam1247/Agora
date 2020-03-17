//
//  Ballout1.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/15/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Ballout1: View {
    var body: some View {
        List {
            Section (header: Text("Candidates")
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(Color.init(.label))
                        .padding(.top),
                     footer: Text("Press the plus button to add candidate to your ballot")
                )
            {
                CandidatePlusCell(name: "Saed Ebrahim")
                CandidatePlusCell(name: "Abdalla Elsaman")
                CandidatePlusCell(name: "Amr Ahmed")
                CandidatePlusCell(name: "Amr Hamdy")
                CandidatePlusCell(name: "Saed Ebrahim")
                CandidatePlusCell(name: "Abdalla Elsaman")
            }
            
            Section (header: BallotHeader(), footer: Text("Press Edit button to move Candidate up or down to change postion")) {
                CandidateTrashCell(name: "Saed Ebrahim")
                CandidateTrashCell(name: "Abdalla Elsaman")
                CandidateTrashCell(name: "Amr Ahmed")
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

struct VoteCancelSection: View {
    var body: some View {
        HStack {
            Button(action: {
               
            }) {
                Text("Cancel")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color.init(.systemRed))
                        )
                    //.padding(.bottom)
                    .padding(.top)
            }.padding(.trailing)
            
            Button(action: {
               
            }) {
                Text("Vote")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color.init(.systemGreen))
                        )
                    //.padding(.bottom)
                    .padding(.top)
            }.padding(.leading)
        }
    }
}

struct BallotHeader: View {
    var body: some View {
        HStack {
            Text("Ballot")
               .font(.system(size: 24))
               .bold()
               .foregroundColor(Color.black)
            Spacer()
            Button(action: {
                
            }) {
                Text("Edit")
            }
        }
    }
}

struct Ballout1_Previews: PreviewProvider {
    static var previews: some View {
        Ballout1()
    }
}
