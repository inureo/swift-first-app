//
//  MasterViewController.swift
//  ChikuwaWatch
//
//  Created by ryo.tezuka on 2014/07/03.
//  Copyright (c) 2014年 ryo.tezuka. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

//    var objects = NSMutableArray()
    // propetyでinitしてないものがあれば、init()しろと言われる
    var dataController: ChikuwaSightingDataController = ChikuwaSightingDataController()

    override func awakeFromNib() {
        super.awakeFromNib()
        dataController = ChikuwaSightingDataController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.navigationItem.leftBarButtonItem = self.editButtonItem()
//
//        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
//        self.navigationItem.rightBarButtonItem = addButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func insertNewObject(sender: AnyObject) {
//        if objects == nil {
//            objects = NSMutableArray()
//        }
//        objects.insertObject(NSDate.date(), atIndex: 0)
//        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
//        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
//    }

    // #pragma mark - Segues

    // あとでやる
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "showDetail" {
//            let indexPath = self.tableView.indexPathForSelectedRow()
//            let object = objects[indexPath.row] as NSDate
//            (segue.destinationViewController as DetailViewController).detailItem = object
//        }
//    }

    // #pragma mark - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataController.countOfList()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // StoryBoardのデフォルトセルのidentifierを指定
        let cellIdentifier: String     = "ChikuwaSightingCell"
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        let formatter = NSDateFormatter()
        
        if formatter == nil {
            formatter.dateStyle = NSDateFormatterStyle.MediumStyle
        }
        
        let sightingAtIndex: ChikuwaSighting = self.dataController.objectIntListAtIndex(indexPath.row)
        
        // textLabelはgetter これを弄る時は.text
        cell.textLabel.text = sightingAtIndex.name
        cell.detailTextLabel.text = formatter.stringFromDate(sightingAtIndex.date)

        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }

//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            objects.removeObjectAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        } else if editingStyle == .Insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//        }
//    }


}

