//
//  NSURLSession.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 31/10/2021.
//
//
//import Foundation
//
//let headers = [
//    "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
//    "x-rapidapi-key": "c15b711e56msh05b5f41ea7d8e5dp1b1b56jsne1f975246c84"
//]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://covid-19-data.p.rapidapi.com/report/country/all?date=2020-04-01")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
//request.httpMethod = "GET"
//request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//    if (error != nil) {
//        print(error)
//    } else {
//        let httpResponse = response as? HTTPURLResponse
//        print(httpResponse)
//    }
//})
//
//dataTask.resume()
