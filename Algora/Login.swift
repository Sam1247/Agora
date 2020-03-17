//
//  Login.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/11/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State var  username: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack {
            Color.init(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 16) {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, alignment: .center)
                    .accessibility(hidden: true)
                Text("User Login")
                    .font(.system(size: 24))
                    .bold()
                    .foregroundColor(Color.init(.systemGray))
                TextField("Username", text: $username)
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
                VStack(alignment: .trailing) {
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
                    
                    Button(action: {
                       
                    }) {
                        Text("Forgot Password ?")
                            .foregroundColor(Color.init(.systemGreen))
                            .bold()
                            .font(.subheadline)
                            
                    }
                }
                
            }.padding()
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
