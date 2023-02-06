//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    @IBOutlet weak var MovieNameLabel: UILabel!
    @IBOutlet weak var VoteAverageLabel: UILabel!
    @IBOutlet weak var VoteCountLabel: UILabel!
    @IBOutlet weak var PopularityLabel: UILabel!
    @IBOutlet weak var FullDescriptionLabel: UILabel!
    @IBOutlet weak var BackgroundImage: UIImageView!
    // TODO: Pt 1 - Add a track property
    var movie: Movie!


    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: movie.backdropImage, into: BackgroundImage)

            // Set labels with the associated track values.
        MovieNameLabel.text = movie.title
        VoteAverageLabel.text = movie.voteAverage
        VoteCountLabel.text = movie.voteCount
        PopularityLabel.text = movie.popularity
        FullDescriptionLabel.text = movie.fullDescription
//            // Create a date formatter to style our date and convert it to a string
//            let dateFormatter = DateFormatter()
//            dateFormatter.dateStyle = .medium
//            releaseDateLabel.text = dateFormatter.string(from: track.releaseDate)

            // Use helper method to convert milliseconds into `mm:ss` string format
//            durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)
        // TODO: Pt 1 - Configure the UI elements with the passed in track

        

    }



}
