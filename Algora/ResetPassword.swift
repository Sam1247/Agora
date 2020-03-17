//
//  ResetPassword.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/12/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct ResetPassword: View {
    @State var  username: String = ""
    @State var password: String = ""
    var body: some View {
        
        VStack(spacing: 16) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, alignment: .center)
                .accessibility(hidden: true)
            Text("Please type your new password")
                .font(.subheadline)
                //.bold()
                .foregroundColor(Color.gray)
            SecureField("New password", text: $password)
                .padding()
                .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                .background(Color.init(.systemGray6))
                .cornerRadius(12.0)
                //.padding(.bottom, 20)
            SecureField("confirm new password", text: $password)
                .padding()
                .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                .background(Color.init(.systemGray6))
                .cornerRadius(12.0)
            //.padding(.bottom, 20)
            VStack(alignment: .center) {
                Button(action: {
                   
                }) {
                    Text("Confirm")
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

struct ResetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}
