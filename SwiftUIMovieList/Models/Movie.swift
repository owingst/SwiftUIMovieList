//
//  Movie.swift
//  SwiftUIMovieList
//
//  Created by Tim Owings on 11/17/19.
//  Copyright © 2019 Tim Owings. All rights reserved.
//

import Foundation

struct MoviesResponse: Codable {
    let results: [Movie]
}

// MARK: - Result
struct Movie: Codable {
    let id: Int
    let title: String
}
