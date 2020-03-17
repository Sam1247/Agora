//
//  Election.swift
//  Algora
//
//  Created by Abdalla Elsaman on 3/5/20.
//  Copyright © 2020 Dumbies. All rights reserved.
//

import Foundation

struct Candidate {
    let name: String
}


struct Election {
    let name: String
    let description: String
    let startDate: Date
    let endDate: Date
    var candidates: [Candidate]
    let VotingAlgorithm: String
}

let allElectionData = [Election(name: "Alexandria Governorate", description: "Alexandria is a Mediterranean port city in Egypt. During the Hellenistic period, it was home to a lighthouse ranking among the Seven Wonders of the Ancient World as well as a storied library. ", startDate: Date(), endDate: Date() + 98198, candidates: [Candidate(name: "Ahmed"), Candidate(name: "Aasona")], VotingAlgorithm: "<#T##String#>"),Election(name: "Cairo Governorate", description: "Alexandria is a Mediterranean port city in Egypt. During the Hellenistic period, it was home to a lighthouse ranking among the Seven Wonders of the Ancient World as well as a storied library. ", startDate: Date(), endDate: Date() + 98198, candidates: [Candidate(name: "Ahmed"), Candidate(name: "Aasona")], VotingAlgorithm: "<#T##String#>"),Election(name: "Mansoura Governorate", description: "Alexandria is a Mediterranean port city in Egypt. During the Hellenistic period, it was home to a lighthouse ranking among the Seven Wonders of the Ancient World as well as a storied library. ", startDate: Date(), endDate: Date() + 98198, candidates: [Candidate(name: "Ahmed"), Candidate(name: "Aasona")], VotingAlgorithm: "<#T##String#>"),Election(name: "Tanta Governorate", description: "Alexandria is a Mediterranean port city in Egypt. During the Hellenistic period, it was home to a lighthouse ranking among the Seven Wonders of the Ancient World as well as a storied library. ", startDate: Date(), endDate: Date() + 98198, candidates: [Candidate(name: "Ahmed"), Candidate(name: "Aasona")], VotingAlgorithm: "<#T##String#>"),
//                       Election(name: <#T##String#>, description: <#T##String#>, startDate: <#T##Date#>, endDate: <#T##Date#>, candidates: <#T##[Candidate]#>, VotingAlgorithm: <#T##String#>),
//                       Election(name: <#T##String#>, description: <#T##String#>, startDate: <#T##Date#>, endDate: <#T##Date#>, candidates: <#T##[Candidate]#>, VotingAlgorithm: <#T##String#>),
//                       Election(name: <#T##String#>, description: <#T##String#>, startDate: <#T##Date#>, endDate: <#T##Date#>, candidates: <#T##[Candidate]#>, VotingAlgorithm: <#T##String#>),
//                       Election(name: <#T##String#>, description: <#T##String#>, startDate: <#T##Date#>, endDate: <#T##Date#>, candidates: <#T##[Candidate]#>, VotingAlgorithm: <#T##String#>),
//                       Election(name: <#T##String#>, description: <#T##String#>, startDate: <#T##Date#>, endDate: <#T##Date#>, candidates: <#T##[Candidate]#>, VotingAlgorithm: <#T##String#>),
//                       Election(name: <#T##String#>, description: <#T##String#>, startDate: <#T##Date#>, endDate: <#T##Date#>, candidates: <#T##[Candidate]#>, VotingAlgorithm: <#T##String#>)
                    ]
