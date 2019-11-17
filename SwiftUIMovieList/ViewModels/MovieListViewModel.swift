//
//  MovieListViewModel.swift
//  SwiftUIMovieList
//
//  Created by Tim Owings on 11/17/19.
//  Copyright © 2019 Tim Owings. All rights reserved.
//

import Foundation


class MovieListViewModel: ObservableObject {
    
    
    init() {
        fetchMovies()
    }
    
    @Published var movies = [MovieViewModel]()
    
    func fetchMovies() {
        
        Webservice().loadMovies() { movies in

            if let movies = movies {
                self.movies = movies.map(MovieViewModel.init)
            }

        }
        
    }
}

