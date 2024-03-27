//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Pinocchio on 2024/3/26.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}

  
