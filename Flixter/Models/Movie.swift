//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Movie {
    let title: String
    let description: String
    let artworkUrl100: URL
    
    // Detail properties
    let fullDescription: String
    let backdropImage: URL
    let voteAverage: String
    let voteCount: String
    let popularity: String
    
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Movie {

    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        
        Movie(title: "Puss in Boots: The Last Wish", description: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left.", artworkUrl100:URL(string:"https://image.tmdb.org/t/p/w500//kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!, fullDescription: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.", backdropImage: URL(string:"https://image.tmdb.org/t/p/w500/faXT8V80JRhnArTAeYXz0Eutpv9.jpg")!, voteAverage: "8.6", voteCount: "3278", popularity: "5840.194"),
        
        
        Movie(title: "Shotgun Wedding", description: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage", artworkUrl100:URL(string:"https://image.tmdb.org/t/p/w500//t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!, fullDescription: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.", backdropImage: URL(string:"https://image.tmdb.org/t/p/w500//zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!, voteAverage: "6.3", voteCount: "244", popularity: "3291.567"),
        
        
        Movie(title: "M3GAN", description: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece.", artworkUrl100:URL(string:"https://image.tmdb.org/t/p/w500//d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!, fullDescription: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results", backdropImage: URL(string:"https://image.tmdb.org/t/p/w500//q2fY4kMXKoGv4CQf310MCxpXlRI.jpg")!, voteAverage: "7.6", voteCount: "1298", popularity: "3864.943"),
        
        Movie(title: "Transfusion", description: "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife.", artworkUrl100:URL(string:"https://image.tmdb.org/t/p/w500//bxh5xCCW9Ynfg6EZJWUkc1zqTnr.jpg")!, fullDescription: "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife.  He is thrusted into the criminal underworld to keep his only son from being taken from him.", backdropImage: URL(string:"https://image.tmdb.org/t/p/w500//a4I481szRmycyreQTLrRe4f4YJe.jpg")!, voteAverage: "6.6", voteCount: "30", popularity: "2922.401"),
        
        Movie(title: "Detective Knight: Independence", description: "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities.", artworkUrl100:URL(string:"https://image.tmdb.org/t/p/w500//jrPKVQGjc3YZXm07OYMriIB47HM.jpg")!, fullDescription: "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.", backdropImage: URL(string:"https://image.tmdb.org/t/p/w500//tCpMRsHlfR6CcqJYA3kJMS3YApt.jpg")!, voteAverage: "6.7", voteCount: "21", popularity: "2467.076")
        
        
    ]
    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
