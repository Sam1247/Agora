//
//  Profile.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/17/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Profile: View {
    @State var password: String = ""
    var body: some View {
        NavigationView {
            List {
                Section(header: ProfileImage()) {
                   EmptyView()
                }.padding(.top)

                Section(header: Text("Your Info").font(.headline)) {
                   InfoCell(kind: "Name", detail: "Abdalla")
                   InfoCell(kind: "Username", detail: "sam_47")
                   InfoCell(kind: "Email", detail: "saman_47@gmail.com")
                }
                
                Section(header: AbstractButton(color: Color.init(.systemGreen), label: "Update Profile")) {
                    EmptyView()
                }
                
                Section (header: Text("Change Password").font(.headline)){
                    TextField("New password", text: $password)
                    TextField("Confirm New password", text: $password)
                }
                
                Section(header: AbstractButton(color: Color.init(.systemYellow), label: "Change Password")) {
                    EmptyView()
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Profile", displayMode: .inline)
            .environment(\.horizontalSizeClass, .regular)
        }
    }
}

struct ProfileImage: View {
    var body: some View {
        ZStack {
            Color.clear
            Image("profile")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.init(.secondarySystemBackground), lineWidth: 4))
                .shadow(radius: 10)
        }//.background(Color.red)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
