//
//  WeatherData.swift
//  WeatherMonitoring
//
//  Created by Ankit Kumar on 30/07/22.
//

import Foundation

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
    let currentCondition = CurrentConditionDisplay()
    let statistic  = StatisticDisplay()
    let forecast = ForecastDisplay()

    func updateAllDisplayUnits(temp: Float, humidity: Float, pressure: Float) {
        currentCondition.updateDisplay(temp: temp, humidity: humidity, pressure: pressure)
        statistic.updateDisplay(temp: temp, humidity: humidity, pressure: pressure)
        forecast.updateDisplay(temp: temp, humidity: humidity, pressure: pressure)
    }
}

