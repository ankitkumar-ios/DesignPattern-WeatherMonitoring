//
//  ViewController.swift
//  WeatherMonitoring
//
//  Created by Ankit Kumar on 30/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        callWeatherData()
    }

    func callWeatherData() {
        let weatherData = WeatherData()
        weatherData.measurementsChanged()
    }
}

