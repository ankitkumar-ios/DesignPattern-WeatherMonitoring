//
//  ForecastDispaly.swift
//  WeatherMonitoring
//
//  Created by Ankit Kumar on 30/07/22.
//

import Foundation

class ForecastDisplay {
    init() {
        WeatherNotify.shared.registerObserver(name: "ForecastCondition") { [weak self] modal in
            self?.updateDisplay(modal: modal)
        }
    }

    func updateDisplay(modal: WeatherModal) {
        print("Forecast display")
    }
}
