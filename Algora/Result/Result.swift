//
//  Result.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/15/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Result: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Charts()) {
                    EmptyView()
                }.padding(.top)
                Section(header: Text("Election Info").font(.headline)) {
                    InfoCell(kind: "Type", detail: "Private")
                    InfoCell(kind: "Algorithm", detail: "Approval")
                    InfoCell(kind: "Total", detail: "524")
                    InfoCell(kind: "Ballot", detail: "84321")
                    InfoCell(kind: "Winner", detail: "Saman")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Result", displayMode: .inline)
            .environment(\.horizontalSizeClass, .regular)
            .navigationBarItems(leading:
                    Button("Cancel") {
                    
                }
            )
        }
        
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}



struct BarView: View {
    let score: CGFloat
    var body: some View {
        ZStack (alignment: .leading){
            Capsule()
            .frame(width: getScreenWidth(), height: 20)
                .foregroundColor(Color.init(.tertiarySystemBackground))
            Capsule()
            .frame(width: score, height: 20)
                .foregroundColor(Color.init(.systemYellow))
        }
    }
    
    func getScreenWidth () -> CGFloat {
        return UIScreen.main.bounds.width - 40
    }
}

struct Charts: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Saman")
                .font(.headline)
                .foregroundColor(.gray)
            BarView(score: 300)
            Text("Moamen")
                .font(.headline)
                .foregroundColor(.gray)
            BarView(score: 280)
            Text("Ahmed")
                .font(.headline)
                .foregroundColor(.gray)
            BarView(score: 150)
            Text("Hamda")
                .font(.headline)
                .foregroundColor(.gray)
            BarView(score: 50)
        }
    }
}

struct InfoCell: View {
    let kind: String
    let detail: String
    var body: some View {
        HStack {
            Text(kind)
                .bold()
                .foregroundColor(Color.init(.label))
            Spacer()
            Text(detail)
                .foregroundColor(Color.init(.systemGray))
        }
    }
}

