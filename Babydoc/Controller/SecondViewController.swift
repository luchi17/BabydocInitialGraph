//
//  SecondViewController.swift
//  Babydoc
//
//  Created by Luchi Parejo alcazar on 05/04/2019.
//  Copyright © 2019 Luchi Parejo alcazar. All rights reserved.
//

import UIKit
import Charts

class SecondViewController: UIViewController {

    var iosData = PieChartDataEntry(value: 0)
    var macData = PieChartDataEntry(value: 0)
    var numberofDownloads = [PieChartDataEntry]()

    
    @IBOutlet weak var piechart: PieChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //piechart.chartDescription?.text = "SALUDOS"
        iosData.label = "ios"
        macData.label="mac"
        iosData.value = 30
        macData.value = 70
        numberofDownloads = [iosData,macData]
        updatechartData()
    }
    func updatechartData(){
        let chartdataset = PieChartDataSet(values: numberofDownloads, label: nil)
        let chartdata = PieChartData(dataSet: chartdataset)
        //give some colors
        let colors = [UIColor.blue,UIColor.red]
        chartdataset.colors = colors 
        piechart.data = chartdata
        
        
    }


}

