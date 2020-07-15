//
//  ContentView.swift
//  Nike
//
//  Created by Daval Cato on 7/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!").padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    var body: some View{
        
        VStack{
            
            HStack{
                
                Image("logo")
                    .renderingMode(.original)
                
                Spacer()
                
                Button(action: {}) {
                    Image("menu").renderingMode(.original)
                }
                
            }
            .padding()
            
            Spacer(minLength: 0)
        }
        // All edges are ignored at this point
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct MainView : View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            
            // This is where tab view with tabs will be
            
            
        }
    
    }
    
}












