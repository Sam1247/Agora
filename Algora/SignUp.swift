//
//  SignUp.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/11/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @State var  username: String = ""
    @State var password: String = ""
    var strengths = ["Mild", "Medium", "Mature"]
    @State private var selectedStrength = 0
    var body: some View {
        VStack(spacing: 16) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, alignment: .center)
                .accessibility(hidden: true)
            Text("User Sign Up")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color.gray)
            
            TextField("User Name", text: $username)
                .padding()
                .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                .background(Color.init(.secondarySystemBackground))
                .cornerRadius(12.0)
            HStack(spacing: 16) {
                TextField("First Name", text: $username)
                    .padding()
                    .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                    .background(Color.init(.secondarySystemBackground))
                    .cornerRadius(12.0)
                TextField("Last Name", text: $username)
                    .padding()
                    .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                    .background(Color.init(.secondarySystemBackground))
                    .cornerRadius(12.0)
            }
            TextField("Email Address", text: $username)
                .padding()
                .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                .background(Color.init(.secondarySystemBackground))
                .cornerRadius(12.0)
            SecureField("Password", text: $password)
                .padding()
                .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                .background(Color.init(.secondarySystemBackground))
                .cornerRadius(12.0)
                //.padding(.bottom, 20)
            
//            Form {
//                Section {
//
//                }
//            }
            
            TextField("What was your childhood nickname ?", text: $username)
                .padding()
                .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                .background(Color.init(.systemGray6))
                .cornerRadius(12.0)
            
            TextField("Please write your answer here", text: $username)
                .padding()
                .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                .background(Color.init(.systemGray6))
                .cornerRadius(12.0)
            VStack(alignment: .center) {
                Button(action: {
                   
                }) {
                    Text("Log in")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .fill(Color.init(.systemYellow))
                            )
                        //.padding(.bottom)
                        .padding(.bottom)
                }//.padding(.horizontal)
            }
            
        }.padding()
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
