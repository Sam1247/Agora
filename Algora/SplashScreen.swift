//
//  SwiftUIView.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/11/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color.init(.tertiarySystemBackground)
                .edgesIgnoringSafeArea(.all)
        VStack(spacing: 32) {
            ScrollView {
                Spacer(minLength: 32)
                SplashScreenTitleView()
                VStack(alignment: .leading, spacing: 16) {
                    FeatureInfoView(featureInfo: featureInfos[0])
                    FeatureInfoView(featureInfo: featureInfos[1])
                    
                }//.padding()
//                Text("Developed With Love by AOSSIE")
                //Spacer()
            }
            
            VStack (spacing: 16) {
                Button(action: {
                   
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .fill(Color.init(.systemGreen))
                            )
                }.padding(.horizontal)
                
                Button(action: {
                   
                }) {
                    HStack {
                        //Image("apple")
                        Text(" Sign in with Apple")
                            .foregroundColor(Color.init(.systemBackground))
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 480, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .fill(Color.init(.label))
                            )
                    }
                    
                }.padding(.horizontal)
                
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
                        //.padding(.bottom)
                }.padding(.horizontal)
                HStack {
                    Text("Developed with ❤️ by")
                        .foregroundColor(.gray)
                        .font(.footnote)
                    Text("AOSSIE")
                        .foregroundColor(.gray)
                        .font(.footnote)
                        .bold()
                }
            }
        }
        }
    }
}


struct SplashScreenTitleView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, alignment: .center)
                .accessibility(hidden: true)
                //.foregroundColor(.mainColor)

            VStack(alignment: .center) {
                Text("Welcome to")
                    .fontWeight(.black)
                    .font(.system(size: 36))

                Text("Algora")
                    .fontWeight(.black)
                    .font(.system(size: 36))
                    .foregroundColor(Color.init(.systemYellow))
            }
        }
    }
}

struct FeatureInfoView: View {
    let featureInfo: FeatureInfo
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: featureInfo.imageName)
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding()
                .accessibility(hidden: true)
                .frame(minWidth: 88)

            VStack(alignment: .leading) {
                Text(featureInfo.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibility(addTraits: .isHeader)

                Text(featureInfo.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}



struct FeatureInfo {
    let title: String
    let description: String
    let imageName: String
}

var featureInfos: [FeatureInfo] = [FeatureInfo(title: "Voting Platform", description: "Agora vote is a voting platform where users can create elections and invite friends to cast their votes.", imageName: "person.2.fill"), FeatureInfo(title: "Multi Algorithm Support", description: "It supports a wide range of voting algorithms some of which are Majority, Egalitarian, Australian STV just to name\na few", imageName: "square.stack.3d.up.fill")]
