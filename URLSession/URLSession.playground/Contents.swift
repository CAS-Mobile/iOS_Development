import Foundation
import PlaygroundSupport

// Needed for the asynchronous call (only needed for Playgrounds)
PlaygroundPage.current.needsIndefiniteExecution = true


// Create the URLSession (this object manages the HTTP connection)
let session = URLSession(configuration: URLSessionConfiguration.default)

// Create a request Object
let bitcoinPriceURL = URL(string: "https://api.coindesk.com/v1/bpi/currentprice/CHF.json")
let currencyExchangeURL = URL(string: "https://api.fixer.io/latest")
var request = URLRequest(url: bitcoinPriceURL!)

// Asynchronously call and fetch the data
let task: URLSessionDataTask = session.dataTask(with: request) { (data, urlResponse, error) -> Void in
    if let data = data {
        let responseData = String(data: data, encoding: String.Encoding.utf8)
        print(responseData ?? "")
    }
}

task.resume()
