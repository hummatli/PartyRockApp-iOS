//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Settar Hummetli on 7/16/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: " 1 LMFAO - Party Rock Anthem ft. Lauren Bennett, GoonRock")
        
        
        let p2 = PartRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "2 LMFAO - Party Rock Anthem ft. Lauren Bennett, GoonRock")

        let p3 = PartRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: " 3 LMFAO - Party Rock Anthem ft. Lauren Bennett, GoonRock")
        
        let p4 = PartRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "4 LMFAO - Party Rock Anthem ft. Lauren Bennett, GoonRock")

        let p5 = PartRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "5 LMFAO - Party Rock Anthem ft. Lauren Bennett, GoonRock")

        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "idPartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }


}

