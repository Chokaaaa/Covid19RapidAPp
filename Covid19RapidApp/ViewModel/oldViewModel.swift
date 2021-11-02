//
//  oldViewModel.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 02/11/2021.
//

//import Foundation
//
//import SwiftUI
//
//        
//class ViewModal : ObservableObject {
//    
//    @Published var res : [Result] = []
//    
//    init() {
//        
//        fetchDat()
//    }
//    
//    
////MARK: - So the ViewModel is finally correct the only problem now is the authentification because we recieved a 401 status code. Modal is correct, ViewModal is correct and view itself is correct. Kindly just figure out the thing with Key and host.
//    
//    func fetchDat() {
//        
//        
////        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
//        guard let url = URL(string: "https://odds.p.rapidapi.com/v1/sports") else { return }
//        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.setValue("83da48f53fmsh8eca7cbf45c77b1p1b98c0jsn49eee7f60f4b", forHTTPHeaderField: "x-rapidapi-key")
//        request.setValue("odds.p.rapidapi.com", forHTTPHeaderField: "x-rapidapi-host")
//        
//                URLSession.shared.dataTask(with: url) { data, response, error in
////        guard
////             let data = data,
////             error == nil,
////             let response = response as? HTTPURLResponse,
////                 response.statusCode >= 200 && response.statusCode < 300 else {
////             print("Error Downloading Data")
//////             completionHandler(nil)
////             return
//                    //             }
//                    
//           
//                    guard let data = data else {
//                        print("No Data.")
//                        return
//                    }
//                    
//                    guard error == nil else  {
//                        print("Error: \(String(describing: error))")
//                        return
//                    }
//                    guard let response = response as? HTTPURLResponse else {
//                        print("Invalid Response")
//                        return
//                    }
//                    guard response.statusCode >= 200 && response.statusCode < 300 else {
//                        let body = String(data: data, encoding: String.Encoding.utf8)
//                        let allHeaders: [AnyHashable: Any] = response.allHeaderFields
//                        print(body)
//                        print(allHeaders)
//                        print("Status code should be 2xx but is \(response.statusCode)")
//                        
//                        return
//                    }
//                    
//                    guard let newPosts = try? JSONDecoder().decode([Result].self, from: data) else { return }
//                    DispatchQueue.main.async { [weak self] in
//                        self?.res = newPosts
//                    }
//    }.resume()
//}
//        
//    }
//        
////        let allHeaders: [String: String]? = request.allHTTPHeaderFields
////        print(allHeaders)
////        downloadData(fromURL: url) { returnedData in
////            if let data = returnedData {
////                //MARK: - JSON Decoder
////                guard let newPosts = try? JSONDecoder().decode([Result].self, from: data) else { return }
////                    DispatchQueue.main.async { [weak self] in
////                        self?.res = newPosts
////                        print("Successfully connecting")
////                    }
////            } else {
////                print("No data returned")
////            }
////        }
//        
////    }
//    
////    //MARK: - Best Method to create a templat and call it any time like a reusable code( by using an excaping closure because returning the data will take some time to load.
////    func downloadData(fromURL url: URL, completionHandler: @escaping(_ data: Data?) -> Void) {
////
////        //MARK: - URL Session Error, data, Response Handler
////        URLSession.shared.dataTask(with: url) { (data, response, error) in
////
////            //MARK: - More Recommended Method
////            guard
////                let data = data,
////                error == nil,
////                let response = response as? HTTPURLResponse,
////                    response.statusCode >= 200 && response.statusCode < 300 else {
////                print("Error Downloading Data")
////                completionHandler(nil)
////                return
////                }
////                        guard error == nil else  {
////                            print("Error: \(String(describing: error))")
////                            return
////                        }
////                        guard let response = response as? HTTPURLResponse else {
////                            print("Invalid Response")
////                            return
////                        }
////                        guard response.statusCode >= 200 && response.statusCode < 300 else {
////                            let body = String(data: data!, encoding: String.Encoding.utf8)
////                            let allHeaders: [AnyHashable: Any] = response.allHeaderFields
////                            print(body)
////                            print(allHeaders)
////                            print("Status code should be 2xx but is \(response.statusCode)")
////
////                            return
////                        }
////        completionHandler(data)
////            }.resume()
////
////        }
////
////    }
//    
//    
//        //MARK: - Request Credentials
////        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
////        request.addValue("c15b711e56msh05b5f41ea7d8e5dp1b1b56jsne1f975246c84", forHTTPHeaderField: "odds.p.rapidapi.com")
////        request.httpMethod = "GET"
////
//        
////
////        //MARK: - URL
////        guard let url = URL(string: "https://odds.p.rapidapi.com/v1/sports") else { return }
////
////        //MARK: - URL Session Error, data, Response Handler
////        URLSession.shared.dataTask(with: url) { (data, response, error) in
////
////            //MARK: - More Recommended Method
////            guard
////                let data = data,
////                error == nil,
////                let response = response as? HTTPURLResponse,
////                    response.statusCode >= 200 && response.statusCode < 300 else {
////                print("Error Downloading Data")
////                return
////            }
//            
//            
//            
////        //MARK: - URL
////        guard let url = URL(string: "https://odds.p.rapidapi.com/v1/sports") else { return }
////
////        //MARK: - URL Session Error, data, Response Handler
////        URLSession.shared.dataTask(with: url) { (data, response, error) in
////MARK: - NOT Recommended Method
////            guard error == nil else  {
////                print("Error: \(String(describing: error))")
////                return
////            }
////            guard let response = response as? HTTPURLResponse else {
////                print("Invalid Response")
////                return
////            }
////            guard response.statusCode >= 200 && response.statusCode < 300 else {
////                print("Status code should be 2xx but is \(response.statusCode)")
////                return
////            }
//            
//            //MARK: - JSON Decoder
////            guard let newPost = try? JSONDecoder().decode(Result.self, from: data) else { return }
////                DispatchQueue.main.async { [weak self] in
////                    self?.res.append(newPost)
////                }
////        }.resume()
////
////        }
//    
