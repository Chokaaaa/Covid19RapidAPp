//
//  ContentView.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 28/10/2021.
//

import SwiftUI

struct SportsListView: View {
    
   @StateObject var vm = SportsListViewModel()
    
    var body: some View {
   
        if vm.posts.data != nil {
            List {
                ForEach(vm.posts.data!, id: \.self) { post in
                    Text(post.title!)
                }
            }
        }
        else {
            ProgressView()
        }
        
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SportsListView()
    }
}
