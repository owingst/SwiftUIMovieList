//
//  MovieViewModel.swift
//  SwiftUIMovieList
//
//  Created by Tim Owings on 11/17/19.
//  Copyright © 2019 Tim Owings. All rights reserved.
//

import Foundation

class MovieViewModel: Identifiable {
    
    
    let id = UUID()
    
    let movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    var title: String {
        return self.movie.title
    }
    
}

