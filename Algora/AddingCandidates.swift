//
//  AddingCandidates.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/12/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct AddingCandidates: View {
    @State var candidateName: String = ""
    @State var username: String = ""
    var body: some View {
        List {
            
            Section (header: TextField("Candidate Name", text: $username)
                        .padding()
                        .background(Color.init(.tertiarySystemBackground))
                        .frame(minWidth: 375, maxWidth: 480, alignment: .center)
                        //.background(Color.init(.systemGray6))
                        .cornerRadius(12.0))
            {
                EmptyView()
            }.padding(.top)
            Section (header: AbstractButton(color: Color.init(.systemGreen), label: "Add Candidates")) {
                EmptyView()
            }
            
            Section(header: Text("Candidates").font(.headline), footer: Text("Swap left to Delete Candidate"))
            {
                //EmptyView()
                ElectionCell(election: allElectionData[0])
                ElectionCell(election: allElectionData[1])
                ElectionCell(election: allElectionData[2])
                ElectionCell(election: allElectionData[3])
            }
            Section (header: AbstractButton(color: Color.init(.systemYellow), label: "Next")) {
                EmptyView()
            }.padding(.top)
            
         }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Adding Candidates", displayMode: .inline)
        .environment(\.horizontalSizeClass, .regular)
    }
}

//struct NextButtom: View {
//    @State var showingCreateElection = false
//    var body: some View {
//        Button(action: {
//            self.showingCreateElection.toggle()
//        }) {
//            Text("Next")
//            .font(.headline)
//            .foregroundColor(.white)
//            .bold()
//            .frame(width: getLargeCellWidth()-12, height: 52)
//            .background(Color.yellow)
//            .cornerRadius(12)
//        }
//    }
//
//}

struct AddButtom: View {
    @State var showingCreateElection = false
    var body: some View {
        Button(action: {
            self.showingCreateElection.toggle()
        }) {
            Text("Add Candidate")
            .font(.headline)
            .foregroundColor(.white)
            .bold()
            .frame(width: getLargeCellWidth()-12, height: 52)
            .background(Color.green)
            .cornerRadius(12)
        }.sheet(isPresented: $showingCreateElection) {
            CreateElection()
        }
    }
    
}

struct AddingCandidates_Previews: PreviewProvider {
    static var previews: some View {
        AddingCandidates()
    }
}
