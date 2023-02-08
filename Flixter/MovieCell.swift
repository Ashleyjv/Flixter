//
//  MovieCell.swift
//  Flixter
//
//  Created by Ashley J Varghese on 2/5/23.
//

import UIKit
import Nuke
class MovieCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    func configure(with movie: Movie) {
        movieTitle.text = movie.original_title
        movieDescription.text = movie.overview
        let final_url = Movie.posterBaseURLString + movie.poster_path
        let final_url2 = URL(string:final_url)
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: final_url2!, into: movieImage)
    }
}
