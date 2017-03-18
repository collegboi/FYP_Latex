for i in 0..<dataPoints.count {
    let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i])
    dataEntries.append(dataEntry)
}
let pieChartDataSet = PieChartDataSet(values: dataEntries, label: label)
let pieChartData = PieChartData(dataSets: [pieChartDataSet])
pieChartView?.data = pieChartData
//assign colours for parts of the pie
pieChartDataSet.colors = colors