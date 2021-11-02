//
//  ContentView.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 28/10/2021.
//

import SwiftUI

struct ContentView: View {
    
   @StateObject var vm = ViewModal()
    
    var body: some View {
   
        List{
            ForEach(vm.res) { resul in
                
                
                Text(resul.key)
                       }
        }
        
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
