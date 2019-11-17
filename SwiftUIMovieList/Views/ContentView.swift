//
//  ContentView.swift
//  SwiftUIMovieList
//
//  Created by Tim Owings on 11/17/19.
//  Copyright © 2019 Tim Owings. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = MovieListViewModel()
    
    var body: some View {
        NavigationView() {
            List(model.movies) { movie in
                
                VStack(alignment: .leading) {
                    
                    Text(movie.title)
                        .lineLimit(nil)
                }
            }.navigationBarTitle(Text("Movie List"))
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
