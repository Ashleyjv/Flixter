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
        movieTitle.text = movie.title
        movieDescription.text = movie.description

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.artworkUrl100, into: movieImage)
    }
}
