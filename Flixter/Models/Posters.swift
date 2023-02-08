//
//  Posters.swift
//  Flixter
//
//  Created by Ashley J Varghese on 2/9/23.
//

import Foundation


struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
//    static var prepend_poster_path
    let poster_path: String
}
