//
//  ViewController.swift
//  WeatherMonitoring
//
//  Created by Ankit Kumar on 30/07/22.
//

import UIKit

class ViewController: UIViewController {

    var current: CurrentConditionDisplay?
    var statistics: StatisticDisplay?
    var forecast: ForecastDisplay?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        openCurrentCondition()
        openStatistics()
        openForecast()
        callWeatherData()
    }

    func callWeatherData() {
        let weatherData = WeatherData()
        weatherData.measurementsChanged()
    }

    func openCurrentCondition() {
        current = CurrentConditionDisplay()
    }

    func openStatistics() {
        statistics = StatisticDisplay()
    }

    func openForecast() {
        forecast = ForecastDisplay()
    }
}

