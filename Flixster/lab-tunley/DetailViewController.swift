//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var directorLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
    
    @IBOutlet weak var popularity: UILabel!
    
    
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    
    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var longOverview: UILabel!
    
    // TODO: Pt 1 - Add a track property
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Configure the UI elements with the passed in track
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
            Nuke.loadImage(with: track.bigImage, into: trackImageView)

            // Set labels with the associated track values.
            trackNameLabel.text = track.trackName
            directorLabel.text = track.artistName
            genreLabel.text = track.genre
            longOverview.text = track.overviw

            // Create a date formatter to style our date and convert it to a string
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            popularity.text = track.country

            // Use helper method to convert milliseconds into `mm:ss` string format
            durationLabel.text = formattedTrackDuration(with: track.duration)


    }



}
