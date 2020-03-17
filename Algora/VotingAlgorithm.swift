//
//  VotingAlgorithm.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/14/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import SwiftUI

struct VotingAlgorithm: View {
    @State private var AlgorithmIndex = 0
    var algorithms = ["Oklahoma", "RangeVoting", "RankedPairs", "Satisfaction Approval Voting", "Sequential Proportional Approval voting", "SmithSet", "Approval", "Exhaustive ballot ", "Baldwin", "Exhaustive ballot with dropoff", "Uncovered Set", "Copeland", "Minimax Condorcet", "Random Ballot", "Borda", "Kemeny Young", "Nanson ", "Instant Runoff 2-round", "Contingent Method"]
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    Picker(selection: $AlgorithmIndex, label: Text("Algorithm")) {
                        ForEach(0..<algorithms.count) {
                            Text(self.algorithms[$0]).tag($0)
                        }
                    }
                    
                }
                
                Section(header: AbstractButton(color: .green, label: "Finish")) {
                    EmptyView()
                }
                
            }
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
            .navigationBarTitle("Voting Algorithm", displayMode: .inline)
            
            
        }
    }
}

struct VotingAlgorithm_Previews: PreviewProvider {
    static var previews: some View {
        VotingAlgorithm()
    }
}

