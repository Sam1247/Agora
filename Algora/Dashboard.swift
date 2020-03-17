//
//  Dashboard.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/4/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI
import UIKit.UIColor

var active = ["hey","hey","hey","hey","hey","hey"]

struct ExampleRow: View {
    var body: some View {
        Text("Exmaple Active")
    }
}

struct Dashboard: View {
    @State private var showingWelcomeScreen = true
    var body: some View {
        NavigationView {
            //VStack {
            List {
                Section(header: UpperView()) {
                    EmptyView()
                }
                
                Section(header: ActiveHeader())
                {
                    //EmptyView()
                    
                    NavigationLink(destination: Detail()) {
                        ElectionCell(election: allElectionData[0])
                    }
                    
                    NavigationLink(destination: Detail()) {
                        ElectionCell(election: allElectionData[1])
                    }
                    
                    NavigationLink(destination: Detail()) {
                        ElectionCell(election: allElectionData[2])
                    }
                    
                    NavigationLink(destination: Detail()) {
                        ElectionCell(election: allElectionData[3])
                    }
                }
                
                
                Section (header: CreateElectionButton()) {
                    EmptyView()
                }
                
                
             }.listStyle(GroupedListStyle())
            .navigationBarTitle("Dashboard")
            .environment(\.horizontalSizeClass, .regular)
            
        }
        //}
    }
}

struct ActiveHeader: View {
    var body: some View {
        HStack (alignment: .center){
            Text("Active")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color.init(.label))
            
            Image(systemName: "flame.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .foregroundColor(Color.init(.red))
            
        }
    }
}



struct CreateElectionButton: View {
    @State var showingCreateElection = false
    var body: some View {
        Button(action: {
            self.showingCreateElection.toggle()
        }) {
            Text("Create Election")
            .font(.headline)
            .foregroundColor(.white)
            .bold()
            .frame(width: getLargeCellWidth()-12, height: 52)
                .background(Color.init(.systemGreen))
            .cornerRadius(12)
        }.sheet(isPresented: $showingCreateElection) {
             VotingAlgorithm()
        }
    }
    
}

struct UpperView: View {
    var body: some View {
        VStack(spacing: padding) {
            HStack {
                NavigationLink(destination: FinishedList()) {
                    DashboardMainCell(iconName: "checkmark.circle.fill",
                                  status: "Finished",
                                  count: 6,
                                  iconColor: Color.init(.systemBlue))
                    .frame(width: getSmallCellWidth(), height: 85)
                .background(Color.init(.white))
                    .cornerRadius(16)
                }
                Spacer()
                NavigationLink(destination: PendingList()) {
                    DashboardMainCell(iconName: "clock.fill",
                                  status: "Pending ",
                                  count: 2,
                                  iconColor: Color.init(.systemYellow))
                .background(Color.init(.white))
                    .frame(width: getSmallCellWidth(), height: 85)
                    .cornerRadius(16)
                }
                
            }
            NavigationLink(destination: AllList()) {
                DashboardMainCell(iconName: "tray.full.fill",
                                  status: "All",
                                  count: 12,
                                  iconColor: Color.init(.systemGray))
                    .frame(width: getLargeCellWidth(), height: 85)
                .background(Color.init(.white))
                    .cornerRadius(16)
            }
        }.padding(.top)
    }
    
    let padding: CGFloat = 20.0
    func getSmallCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - padding * 3) / 2
    }
    
    func getLargeCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - padding * 2)
    }
    
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()//.environment(\.colorScheme, .dark)
    }
}
