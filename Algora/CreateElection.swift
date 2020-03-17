//
//  CreateElection.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/12/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct CreateElection: View {
    @State var  username: String = ""
    @State var password: String = ""
    @State var startData = Date()
    @State var endData = Date()
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                TextField("Election Name", text: $username)
                    .padding()
                    .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                    .background(Color.init(.secondarySystemBackground))
                    .cornerRadius(12.0)
                TextField("Election Description", text: $username)
                    .padding()
                    .padding(.bottom)
                    .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                    .background(Color.init(.secondarySystemBackground))
                    .cornerRadius(12.0)
                DatePicker(selection: $startData) {
                    Text("Start Date").bold()
                }
                DatePicker(selection: $endData) {
                    Text("End Date").bold()
                }
                
                NavigationLink(
                  destination: VotingAlgorithm()) {
                    //Text("Next")
                    AbstractButton(color: Color.init(.systemYellow), label: "Next")
                }
            }
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
            .navigationBarTitle("Election Info", displayMode: .inline)
            .navigationBarItems(leading:
                Button("Cancel") {
                    
                }
            )
            .padding()
        }
       
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AbstractButton: View {
    let color: Color
    let label: String
    var body: some View {
        Text(label)
           .font(.headline)
           .foregroundColor(.white)
           .bold()
           .frame(width: getLargeCellWidth()-12, height: 52)
           .background(color)
           .cornerRadius(12)
    }
}

struct CreateElection_Previews: PreviewProvider {
    static var previews: some View {
        CreateElection()
    }
}
