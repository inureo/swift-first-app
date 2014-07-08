//
//  ChikuwaSightingDataController.swift
//  ChikuwaWatch
//
//  Created by ryo.tezuka on 2014/07/04.
//  Copyright (c) 2014年 ryo.tezuka. All rights reserved.
//

import UIKit

class ChikuwaSightingDataController: NSObject {
    // 何が入るかあらかじめ指定してあげる
    var masterChikuwaSightingList: Array<ChikuwaSighting> = Array<ChikuwaSighting>()

    init() {
        super.init()
        self.initializeDefaultDataList()
    }
    
    func countOfList() -> Int {
        return self.masterChikuwaSightingList.count
    }
    
    func objectIntListAtIndex(theIndex: Int) -> ChikuwaSighting {
        return self.masterChikuwaSightingList[theIndex];
    }
    
    func addChikuwaSightingWithSighting(sighting: ChikuwaSighting) {
        self.masterChikuwaSightingList += sighting
    }
    
    func initializeDefaultDataList() {
        var sighting: ChikuwaSighting
        var today = NSDate()
        sighting = ChikuwaSighting(name: "naruto", location: "ラーメン屋", date: today)
        self.addChikuwaSightingWithSighting(sighting)
    }
}
