//
//  TableViewDataSourceDelegate.swift
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import UIKit

class TableViewDataSourceDelegate : UITableViewController {
    
    var listItens: Array<PostModel>! = nil
    
    //MARK: Delegate
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    //MARK: DataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("BaseTableViewCell", forIndexPath: indexPath) as! BaseTableViewCell
        
        cell.model = self.listItens[indexPath.row]
        
        return cell
        
    }
    
}
