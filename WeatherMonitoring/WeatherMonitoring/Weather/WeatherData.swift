//
//  WeatherData.swift
//  WeatherMonitoring
//
//  Created by Ankit Kumar on 30/07/22.
//

import Foundation
import UIKit

struct WeatherModal {
    var temp: Float
    var humidity: Float
    var pressure: Float
}

protocol WeatherDataNotifySubject {
    func registerObserver(name: String, completion: @escaping (WeatherModal) -> Void)
    func removeObserver(name: String)
    func notifyObservers(temp: Float, humidity: Float, pressure: Float)
}

class WeatherNotify: WeatherDataNotifySubject {
    static private (set) var shared = WeatherNotify()

    var completions: [String: ((WeatherModal) -> Void)] = [:]

    func registerObserver(name: String, completion: @escaping (WeatherModal) -> Void) {
        if (completions[name] == nil) {
            completions[name] = completion
        }
    }
    func removeObserver(name: String) {
        completions.removeValue(forKey: name)
    }
    func notifyObservers(temp: Float, humidity: Float, pressure: Float) {
        _ = completions.map { (key: String, value: ((WeatherModal) -> Void)) in
            let modal = WeatherModal(temp: temp, humidity: humidity, pressure: pressure)
            value(modal)
        }
    }
}


// Getting the data from the equipments
class WeatherData {
    private func getTemperature() -> Float {
        return 70
    }
    private func getHumidity() -> Float {
        return 100
    }
    private func getPressure() -> Float {
        return 50
    }

    // Gets called from equipment devices when there is any updates
    func measurementsChanged() {
        let temp = getTemperature()
        let humidity = getHumidity()
        let pressure = getPressure()

        updateAllDisplayUnits(temp: temp, humidity: humidity, pressure: pressure)
    }

    // Our implementated methods
    func updateAllDisplayUnits(temp: Float, humidity: Float, pressure: Float) {
        WeatherNotify.shared.notifyObservers(temp: temp, humidity: humidity, pressure: pressure)
    }
}
