//
//  AddVoters.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/14/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct AddVoters: View {
    @State var  username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Voter Name", text: $username)
                    TextField("Voter Email", text: $username)
                }
//                Section (header: TextField("Voter Name", text: $username)
//                            .padding()
//                            .frame(minWidth: 375, maxWidth: 480, alignment: .center)
//                            .background(Color.init(.tertiarySystemBackground))
//                            .cornerRadius(12.0))
//                {
//                    EmptyView()
//                }.padding(.top)
//
//                Section (header: TextField("Voter Email", text: $username)
//                            .padding()
//                            .background(Color.init(.tertiarySystemBackground))
//                            .frame(minWidth: 375, maxWidth: 480, alignment: .center)
//                            //.background(Color.init(.systemGray6))
//                            .cornerRadius(12.0))
//                {
//                    EmptyView()
//                }
                
                    Section (header: AbstractButton(color: Color.init(.systemGreen), label: "Add Voter")) {
                    EmptyView()
                }
                
                Section(header: Text("Voters").font(.headline), footer: Text("Swap left to Delete Voter"))
                {
                    //EmptyView()
                    InvitedVotersCell(username: "Abdalla", email: "abdallaelsaman@gmail.com")
                    InvitedVotersCell(username: "karashily", email: "kesho@gmail.com")
                    InvitedVotersCell(username: "Amr", email: "Amr@gmail.com")
                    InvitedVotersCell(username: "Ahmed", email: "Ahmed@gmail.com")
                }
                Section (header: AbstractButton(color: Color.init(.systemYellow), label: "Invite Voters")) {
                    EmptyView()
                }.padding(.top)
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle("Adding Voters", displayMode: .inline)
                .environment(\.horizontalSizeClass, .regular)
                .navigationBarItems(leading:
                    Button("Cancel") {
                    
                }
            )
         }
       
    }
}

struct InvitedVotersCell: View {
    let username: String
    let email: String
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
                .foregroundColor(.green)
            VStack (alignment: .leading){
                Text(username)
                    .font(.headline)
                Text(email)
                    .foregroundColor(Color.init(.systemGray))
                    .font(.body)
                
            }
        }//.padding
    }
}

struct AddVoters_Previews: PreviewProvider {
    static var previews: some View {
        AddVoters()
    }
}
