//
//  ScheduleEntity+CoreDataProperties.swift
//  mbta
//
//  Created by Krishna Vikas on 3/31/20.
//  Copyright © 2020 Krishna Vikas. All rights reserved.
//
//

import Foundation
import CoreData


extension ScheduleEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ScheduleEntity> {
        return NSFetchRequest<ScheduleEntity>(entityName: "ScheduleEntity")
    }

    @NSManaged public var arrivalTime: String?
    @NSManaged public var departureTime: String?
    @NSManaged public var lineID: Int16
    @NSManaged public var scheduleID: Int16
    @NSManaged public var listOfStops: NSSet?
    @NSManaged public var toTrain: TrainEntity?

}

// MARK: Generated accessors for listOfStops
extension ScheduleEntity {

    @objc(addListOfStopsObject:)
    @NSManaged public func addToListOfStops(_ value: StopEntity)

    @objc(removeListOfStopsObject:)
    @NSManaged public func removeFromListOfStops(_ value: StopEntity)

    @objc(addListOfStops:)
    @NSManaged public func addToListOfStops(_ values: NSSet)

    @objc(removeListOfStops:)
    @NSManaged public func removeFromListOfStops(_ values: NSSet)

}
