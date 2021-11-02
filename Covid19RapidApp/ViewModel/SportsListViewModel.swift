//
//  ViewModal.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 31/10/2021.
//

import SwiftUI

        
class SportsListViewModel : ObservableObject {
    
    @Published var posts = SportsResult()
    
    init() {
        fetchData()
    }
    
    /// THIS FUNCTION IS DEPRECATED ---> REMOVE IT, IS NOT USED
    func oldFetchData() {
        guard let url = URL(string: "https://odds.p.rapidapi.com/v1/sports") else { return }
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.setValue("c15b711e56msh05b5f41ea7d8e5dp1b1b56jsne1f975246c84", forHTTPHeaderField: "x-rapidapi-key")
    
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                
                print(response)
     
                guard let data = data else {
                    print("No Data.")
                    return
                }
                
                guard error == nil else  {
                    print("Error: \(String(describing: error))")
                    return
                }
                guard let response = response as? HTTPURLResponse else {
                    print("Invalid Response")
                    return
                }
                guard response.statusCode >= 200 && response.statusCode < 300 else {

                print("Status code should be 2xx but is \(response.statusCode)")
                            
                        return
                    }
                    
                
            }.resume()
    }
    
    
    func fetchData() {

        guard let url = URL(string: "https://odds.p.rapidapi.com/v1/sports") else { return }

        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.setValue("c15b711e56msh05b5f41ea7d8e5dp1b1b56jsne1f975246c84", forHTTPHeaderField: "x-rapidapi-key")
        
        downloadData(fromRequest: request) { returnedData in
            
            if returnedData != nil {
                do {
                    let decodedPosts = try? JSONDecoder().decode(SportsResult.self, from: returnedData!)
                    DispatchQueue.main.async {
                        self.posts = decodedPosts ?? SportsResult()
                    }
                    
                    print("decoded data: \(decodedPosts)")
                }
                catch let jsonError as NSError {
                    print("Could not decode data")
                }
            }
            else {
                print("Returned data is nil")
            }

        }
        
    }

    
    func downloadData(fromRequest request: URLRequest, completion: @escaping(_ data: Data?) -> Void) {
        
        //MARK: - URL Session Error, data, Response Handler
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            print(response)
            
            //MARK: - More Recommended Method
            guard let data = data, error == nil, let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
                    print("HTTP Failure")
                    completion(nil)
                    return
            }
            
            completion(data)
            
        }.resume()
        
    }

}
