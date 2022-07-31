//
//  CurrentConditionDisplay.swift
//  WeatherMonitoring
//
//  Created by Ankit Kumar on 30/07/22.
//

import Foundation

class CurrentConditionDisplay {
    init() {
        WeatherNotify.shared.registerObserver(name: "CurrentCondition") { [weak self] modal in
            self?.updateDisplay(modal: modal)
        }
    }

    func updateDisplay(modal: WeatherModal) {
        print("Current condition display")
    }
}
