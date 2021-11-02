//
//  ViewModal.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 31/10/2021.
//

import SwiftUI

        
class ViewModal : ObservableObject {
    @Published var res : [Result] = []
    init() {
        fetchDat()
    }
    func fetchDat() {
        
        guard let url = URL(string: "https://odds.p.rapidapi.com/v1/sports") else { return }
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.setValue("83da48f53fmsh8eca7cbf45c77b1p1b98c0jsn49eee7f60f4b", forHTTPHeaderField: "x-rapidapi-key")
        request.setValue("odds.p.rapidapi.com", forHTTPHeaderField: "x-rapidapi-host")
        
                URLSession.shared.dataTask(with: url) { data, response, error in
           
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
                        let body = String(data: data, encoding: String.Encoding.utf8)
                        let allHeaders: [AnyHashable: Any] = response.allHeaderFields
                        print(body)
                        print(allHeaders)
                        print("Status code should be 2xx but is \(response.statusCode)")
                        
                        return
                    }
                    
                    guard let newPosts = try? JSONDecoder().decode([Result].self, from: data) else { return }
                    DispatchQueue.main.async { [weak self] in
                        self?.res = newPosts
                    }
    }.resume()
}
        
    }
