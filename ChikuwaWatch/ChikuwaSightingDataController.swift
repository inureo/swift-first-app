//
//  ChikuwaSightingDataController.swift
//  ChikuwaWatch
//
//  Created by ryo.tezuka on 2014/07/04.
//  Copyright (c) 2014年 ryo.tezuka. All rights reserved.
//

import UIKit

class ChikuwaSightingDataController: NSObject {
    var masterChikuwaSightingList = []

    init() {
        super.init()
        initializeDefaultDataList()
    }
    
    func countOfList() -> Int {
        return masterChikuwaSightingList.count
    }
    
    func objectIntListAtIndex(theIndex: Int) -> ChikuwaSighting {
        return masterChikuwaSightingList[theIndex] as ChikuwaSighting
    }
    
    func addChikuwaSightingWithSighting(sighting: ChikuwaSighting) {
        
    }
    
    func initializeDefaultDataList() {
        var sightingList = []
        self.masterChikuwaSightingList = sightingList
        var sighting: ChikuwaSighting
        var today = NSDate()
        sighting = ChikuwaSighting(name: "naruto", location: "ラーメン屋", date: today)
    }
}
