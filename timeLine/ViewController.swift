//
//  ViewController.swift
//  timeLine
//
//  Created by Julia on 2017/04/23.
//  Copyright © 2017 Julia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    var arrPhotos: [String] = [
        "img_01.png",
        "img_02.png",
        "img_03.png",
        "img_04.png"
    ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Table view
        tableView.rowHeight = 495 as CGFloat
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // (* Required) Number of rows
        return arrPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // (* Required) Cell appearance
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedCell", for: indexPath) as! FeedCell
        cell.imgvPhoto.image = UIImage(named: arrPhotos[indexPath.row])
        cell.imgvPhoto.contentMode = .scaleAspectFill
        cell.imgvPhoto.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        // (* Optional) Header size zero
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
    {
        // (* Optional) Footer size zero
        return CGFloat.leastNormalMagnitude
    }
}
