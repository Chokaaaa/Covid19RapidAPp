//
//  NewViewModel.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 01/11/2021.
//

//import Foundation
//import UIKit
//
//
//
//class NewViewModal : ObservableObject {
//
//@Published var res : [ToDoResponseModel] = []
//
//init() {
//
//fetch()
//}
//
//func fetch() {
//
//let url = URL(string: "https://odds.p.rapidapi.com/v1/sports")
//guard let requestUrl = url else { fatalError() }
//
//var request = URLRequest(url: requestUrl)
//request.httpMethod = "GET"
//
//// Set HTTP Request Header
//request.setValue("c15b711e56msh05b5f41ea7d8e5dp1b1b56jsne1f975246c84", forHTTPHeaderField: "X-RapidAPI-Key")
//request.setValue("odds.p.rapidapi.com", forHTTPHeaderField: "X-RapidAPI-Host")
////request.setValue("application/json", forHTTPHeaderField: "Accept")
////request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//let newTodoItem = ToDoResponseModel(id: 6, key: "americanfootball_ncaaf", active: true, group: "American Football", details: "US College Football", title: "NCAAF")
// let jsonData = try? JSONEncoder().encode(newTodoItem)
//    
//
//request.httpBody = jsonData
//
//    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//        
//        if let error = error {
//            print("Error took place \(error)")
//            return
//        }
//        guard let data = data else {return}
//
//        do{
//            let todoItemModel = try JSONDecoder().decode(ToDoResponseModel.self, from: data)
//            print("Response data:\n \(todoItemModel)")
//            print("todoItemModel Title: \(todoItemModel.title)")
//            print("todoItemModel id: \(todoItemModel.id ?? 0)")
//            
//        }catch let jsonErr{
//            print(jsonErr)
//       }
//
// 
//}
//task.resume()
//}
//}







//
//func fetchDat() {
//    
//    //MARK: - Request Credentials
////        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
////        request.addValue("c15b711e56msh05b5f41ea7d8e5dp1b1b56jsne1f975246c84", forHTTPHeaderField: "odds.p.rapidapi.com")
////        request.httpMethod = "GET"
////
//    
//    
//    //MARK: - URL
//    guard let url = URL(string: "https://odds.p.rapidapi.com/v1/sports") else { return }
//    
//    //MARK: - URL Session Error, data, Response Handler
//    URLSession.shared.dataTask(with: url) { (data, response, error) in
//        
//        //MARK: - NOT Recommended Method
//        guard
//            let data = data,
//            error == nil,
//            let response = response as? HTTPURLResponse,
//                response.statusCode >= 200 && response.statusCode < 300 else {
//            print("Error Downloading Data")
//            return
//        }
