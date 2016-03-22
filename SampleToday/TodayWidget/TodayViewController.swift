//
//  TodayViewController.swift
//  TodayWidget
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import UIKit
import NotificationCenter
import ObjectMapper

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet weak var tableView: UITableView!
    var tableViewManager: TableViewDataSourceDelegate!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPosts()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        completionHandler(NCUpdateResult.NewData)
    }
    
    func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    //MARK: Setup
    
    func configItens() {
        self.tableViewManager = TableViewDataSourceDelegate()
        self.tableView.dataSource = self.tableViewManager
        self.tableView.delegate = self.tableViewManager
    }
    
    //MARK: Network
    
    func getPosts() {
        let api = API_Post()
        
        api.getPosts() { (result, error) -> Void in
            if let unwrapResult = Mapper<PostModel>().mapArray(result) {
                
                self.configItens()
                
                self.tableViewManager.listItens = unwrapResult
                self.tableView.reloadData()
                
            } else if let unrwapError = error {
                
                debugPrint(unrwapError)
                
            }
        }
    }
    
}
