//
//  Webservice.swift
//  SwiftUIMovieList
//
//  Created by Tim Owings on 11/17/19.
//  Copyright © 2019 Tim Owings. All rights reserved.
//

import Foundation


class Webservice {
    
    let apikey = "replace this with your MovieDB api"
    let movieapi = "https://api.themoviedb.org/3/movie/now_playing?api_key="
    
    func loadMovies(completion: @escaping ([Movie]?) -> ()) {
        
        let movieURL = movieapi + apikey
        
        guard let url = URL(string:  movieURL)
            else {
                   print("Invalid URL")
                   return                
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                print(error!)
                completion(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(MoviesResponse.self, from: data)
            if let response = response {
                DispatchQueue.main.async {
                    completion(response.results)
                }
            }
        }.resume()
    }
}

