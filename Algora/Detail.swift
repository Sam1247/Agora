//
//  Detail.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/5/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct Detail: View {
    //let election = allElectionData[0]
    var body: some View {
        
        List {
            Section (header: DetailHeader()
                .foregroundColor(.black)
            ) {
                EmptyView()
            }
            Section(header: CandidatesHeader()) {
                ElectionCell(election: allElectionData[0])
                ElectionCell(election: allElectionData[1])
                ElectionCell(election: allElectionData[2])
                ElectionCell(election: allElectionData[3])
            }
            Section (header: DeleteButton()) {
                EmptyView()
            }
            
        }
            
        .listStyle(GroupedListStyle())
        .environment(\.horizontalSizeClass, .regular)
        .navigationBarTitle("Election", displayMode: .large)
    }
    
    
    
    
}

func getSmallCellWidth() -> CGFloat {
    return (UIScreen.main.bounds.width - 12 * 4) / 3
}

func getLargeCellWidth() -> CGFloat {
    return (UIScreen.main.bounds.width - 12 * 2)
}

struct DeleteButton: View {
    @State var showingDeleteAlert = false
    var body: some View {
        Button (action: {
            self.showingDeleteAlert.toggle()
        }) {
            Text("Delete")
            .font(.headline)
            .foregroundColor(Color.init(.white))
            .bold()
            .frame(width: getLargeCellWidth()-12, height: 52)
            .background(Color.red)
            .cornerRadius(12)
        }
            
        .alert(isPresented: $showingDeleteAlert) {
            Alert(title: Text("Are you sure you want to delete this election?"), message: Text("There is no undo"), primaryButton: .destructive(Text("Delete")) {
                    print("Deleting...")
            }, secondaryButton: .cancel())
        }
        
    }
}

struct ElectionHeader: View {
    let election = allElectionData[0]
    var body: some View {
        VStack (alignment: .leading){
            HStack(alignment: .center) {
               
                Text(election.name)
                    .foregroundColor(Color.init(.label))
                    .font(.headline).bold()
                
                Text("(Active)")
                    .font(.footnote)
                    .foregroundColor(Color.init(.systemBlue))
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .foregroundColor(Color.init(.systemGreen))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                }
            }
            
            Text(election.description)
                .font(.body)
                .foregroundColor(Color.init(.systemGray))
        }//.background(Color.red)
    }
}

struct ElectionDateCell: View {
    let kind: String
    let date: String
    let dateHour: String
    let padding: CGFloat = 20
    var body: some View {
        HStack {
            VStack {
                Text(kind)
                    .font(.headline)
                    .foregroundColor(Color.init(.systemGray))
                Text(date)
                    .font(.subheadline)
                    .foregroundColor(Color.init(.label))
                    .bold()
                Text(dateHour)
                    .font(.subheadline)
                    .foregroundColor(Color.init(.label))
                    .bold()

            }
            .padding()
            .frame(width: (getScreenWidth() - padding*2 - 12)/2)
            .background(Color.init(.tertiarySystemBackground))
            .cornerRadius(12)
        }
    }
    
    func getSmallCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 14 * 4) / 3
    }
    
    func getLargeCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 12 * 2)
    }
    
    func getScreenWidth () -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    func getDateCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 12 * 2) / 2
    }
}

struct ElectionDateHeader: View {
    let padding: CGFloat = 20
    var body: some View {
        HStack {
            ElectionDateCell(kind: "Start Date", date: "31 March 2020", dateHour: "04:00 AM")
//            VStack {
//                Text("Start Date")
//                    .font(.headline)
//                    .foregroundColor(Color.init(.systemGray))
//                Text("31 March 2020")
//                    .font(.subheadline)
//                    .foregroundColor(Color.init(.label))
//                    .bold()
//                Text("04:00 AM")
//                    .font(.subheadline)
//                    .foregroundColor(Color.init(.label))
//                    .bold()
//
//            }
//                .padding()
//                .frame(width: (getScreenWidth() - padding*2 - 12)/2)
//                .background(Color.init(.secondarySystemBackground))
//                .cornerRadius(12)
            Spacer()
            ElectionDateCell(kind: "End Date", date: "21 May 2020", dateHour: "06:00 PM")
//            VStack {
//                Text("End Date")
//                    .font(.headline)
//                    .foregroundColor(Color.init(.systemGray))
//                Text("21 May 2020")
//                    .font(.subheadline)
//                    .foregroundColor(Color.init(.label))
//                    .bold()
//                Text("06:00 PM")
//                    .font(.subheadline)
//                    .foregroundColor(Color.init(.label))
//                    .bold()
//            }
//                .padding()
//                .frame(width: (getScreenWidth() - padding*2 - 12)/2)
//                .background(Color.init(.secondarySystemBackground))
//                .cornerRadius(12)
        }
        .frame(width: getScreenWidth() - padding*2)
        .padding(.top)
    }
    
    func getSmallCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 14 * 4) / 3
    }
    
    func getLargeCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 12 * 2)
    }
    
    func getScreenWidth () -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    func getDateCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 12 * 2) / 2
    }
}
    
    
    
struct DetailHeader: View {
    let padding: CGFloat = 20
    let election = allElectionData[0]
    @State var showingInviteVoters = false
    @State var showingResult = false
    var body: some View {
        
        VStack (spacing: 12) {
            
            
            ElectionHeader()
            
            ElectionDateHeader()
            
            
            
            Button(action: {
                self.showingResult.toggle()
            }) {
                Text("Result")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(minWidth: 0, maxWidth: 375, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color.init(.systemGreen))
                        )
                    //.padding(.bottom)
                    //.padding(.bottom)
            }.sheet(isPresented: $showingResult) {
                Result()
            }
            
            VStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        NavigationLink(destination: Ballot3()) {
                            DetailSmallICon(iconName: "archivebox.fill", label: "Ballot")
                            .frame(width: getSmallCellWidth(), height: 50)
                            .background(Color.init(.tertiarySystemBackground))
                            .cornerRadius(8)
                        }
                        
                    }
                    
                    Button(action: {
                        self.showingInviteVoters.toggle()
                    }) {
                        DetailSmallICon(iconName: "plus.app.fill", label: "Invite Voters")
                            .frame(width: getSmallCellWidth(), height: 50)
                            .background(Color.init(.tertiarySystemBackground))
                            .cornerRadius(8)
                        
                    }.sheet(isPresented: $showingInviteVoters) {
                        AddVoters()
                    }
                    
                    Button(action: {
                        
                    }) {
                        DetailSmallICon(iconName: "rectangle.stack.person.crop.fill", label: "Voters")
                            .frame(width: getSmallCellWidth(), height: 50)
                            .background(Color.init(.tertiarySystemBackground))
                            .cornerRadius(8)
                    }
                    
                }
            }
            
            
        }
    }
    
    func getSmallCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 14 * 4) / 3
    }
    
    func getLargeCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 12 * 2)
    }
    
    func getScreenWidth () -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    func getDateCellWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 12 * 2) / 2
    }
}

struct CandidatesHeader: View {
    var body: some View {
        HStack (alignment: .center){
            Text("Candidates")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color.init(.label))
            
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
