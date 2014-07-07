//
//  ChikuwaSighting.swift
//  ChikuwaWatch
//
//  Created by ryo.tezuka on 2014/07/03.
//  Copyright (c) 2014年 ryo.tezuka. All rights reserved.
//

import UIKit

class ChikuwaSighting: NSObject {
    var name: String
    var location: String
    var date: NSDate
    
    init(name: String, location: String, date: NSDate){
        self.name = name
        self.location = location
        self.date = date
    }
}
