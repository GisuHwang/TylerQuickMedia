//
//  Logger.swift
//  TylerQuickMedia
//
//  Created by tskim on 2018. 10. 20..
//  Copyright © 2018년 tskim. All rights reserved.
//

import SwiftyBeaver

let logger: SwiftyBeaver.Type = {
    let console = ConsoleDestination()
    let file = FileDestination()
    let cloud = SBPlatformDestination(appID: "Wxjrxq", appSecret: "autdgrrcctsbzqgvcy3gyzv3kafofzdo", encryptionKey: "2obcvsvZlu3i8fhhg4b3h9sl36qsswuA")
    
    console.format = "$DHH:mm:ss$d $L $M"
    
    $0.addDestination(console)
    $0.addDestination(file)
    $0.addDestination(cloud)
    return $0
}(SwiftyBeaver.self)
