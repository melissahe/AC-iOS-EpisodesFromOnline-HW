//
//  Show.swift
//  AC-iOS-EpisodesFromOnline-HW
//
//  Created by C4Q on 12/5/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct ResultsWrapper: Codable {
    let show: Show
}

struct Show: Codable {
    let id: Int
    let name: String
    let image: Image?
    let rating: Rating
}

struct Image: Codable {
    let mediumURL: String
    let originalURL: String
    
    enum CodingKeys: String, CodingKey {
        case mediumURL = "medium"
        case originalURL = "original"
    }
}

struct Rating: Codable {
    let average: Double?
}
