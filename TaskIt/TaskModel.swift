//
//  TaskModel.swift
//  TaskIt
//
//  Created by Brett Wallace on 3/24/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
