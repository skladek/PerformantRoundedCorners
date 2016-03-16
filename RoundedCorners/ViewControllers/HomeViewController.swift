//
//  HomeViewController.swift
//  RoundedCorners
//
//  Created by Sean Kladek on 3/14/16.
//  Copyright © 2016 Livefront. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: Constants
    
    /// The reuse id for the home cells.
    static private let reuseId = "HomeCellReuseId"
    
    // MARK: IBOutlet Properties
    
    /// The main table view.
    @IBOutlet private weak var tableView: UITableView!

    // MARK: UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: HomeViewController.reuseId);
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(HomeViewController.reuseId, forIndexPath: indexPath)
        
        cell.textLabel?.text = (indexPath.row == 0) ? "Corner Radius" : "Draw Rect"
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let viewController = (indexPath.row == 0) ? CornerRadiusViewController() : DrawRectViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
