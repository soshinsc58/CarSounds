//
//  Car.swift
//  CarSounds
//
//  Created by scott on 5/23/16.
//  Copyright © 2016 scott. All rights reserved.
//

import Foundation

class Car {
    var carname: String
    var carpicture: String
    var carsound: String
    
    init(carname: String, carpicture: String, carsound: String) {
        self.carname = carname
        self.carpicture = carpicture
        self.carsound = carsound
    }
}