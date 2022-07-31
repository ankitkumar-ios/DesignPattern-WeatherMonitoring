//
//  StatisticsDispaly.swift
//  WeatherMonitoring
//
//  Created by Ankit Kumar on 30/07/22.
//

import Foundation

class StatisticDisplay {
    init() {
        WeatherNotify.shared.registerObserver(name: "StatisticCondition") { [weak self] modal in
            self?.updateDisplay(modal: modal)
        }
    }

    func updateDisplay(modal: WeatherModal) {
        print("Statistic display")
    }
}
