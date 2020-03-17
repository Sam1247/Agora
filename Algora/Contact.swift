//
//  Contact.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/17/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Contact: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.init(.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 16) {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, alignment: .center)
                        .accessibility(hidden: true)
                        .padding()
                    Text("Feel Free to contact us on our Gitter channels and work with us on GitLab")
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(Color.init(.systemGray))
                        .padding()
                    
                    AbstractButton(color: Color.init(.systemGreen), label: "AOSSIE'S GitLab")
                     AbstractButton(color: Color.init(.systemGreen), label: "AOSSIE'S Gitter")
                    
                }.padding()
            }
            .navigationBarTitle("Contact", displayMode: .inline)
        }
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact()
    }
}
