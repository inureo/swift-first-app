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
        initializeDefaultDataList()
    }
    
    func countOfList() -> Int {
        masterChikuwaSightingList.count
    }
    
    func objectIntListAtIndex(theIndex: Int) -> ChikuwaSighting {
        masterChikuwaSightingList[theIndex];
    }
    
    func addChikuwaSightingWithSighting(sighting: ChikuwaSighting) {
        masterChikuwaSightingList += sighting
    }
    
    func initializeDefaultDataList() {
        var sighting: ChikuwaSighting
        var today = NSDate()
        sighting = ChikuwaSighting(name: "naruto", location: "ラーメン屋", date: today)
    }
}
