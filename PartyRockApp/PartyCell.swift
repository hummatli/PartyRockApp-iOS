//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Settar Hummetli on 7/16/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var imgVideoPreview: UIImageView!
    @IBOutlet weak var lblVideoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(partyRock: PartRock) {
        lblVideoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.imgVideoPreview.image = UIImage(data: data)
                }
            } catch {
                //error handleing
            }
        }
        
    }
}
