//
//  ContentView.swift
//  Nike
//
//  Created by Daval Cato on 7/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        MainView()
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
                
                Image("logo").resizable()
                    .frame(width: 70.0, height: 30.0)
//                    .renderingMode(.original)
                
                Spacer()
                
                Button(action: {}) {
                    Image("menu").renderingMode(.original)
                }
                
            }
            .padding()
            
            TopMenu()
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            
            Spacer(minLength: 0)
        }
        // All edges are ignored at this point
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct TopMenu : View {
    
    @State var index = 0
    
    var body: some View{
        
        HStack(spacing: 30){
            
            ForEach(0..<topMenu.count,id: \.self){menu in
                
                VStack(spacing: 8){
                    
                    Text(topMenu[menu])
                        .font(.system(size: 22))
                        .fontWeight(index == menu ? .bold : .none)
                        .foregroundColor(index == menu ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 10, height: 10)
                        .opacity(index == menu ? 1 : 0)
                    
                }
                
            }
            
        }
        
    }
    
}

var topMenu = ["Shoes","Clothing","By Sports","By Brand","By Price"]

struct MainView : View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            
            // This is where tab view with tabs will be
            
            // Here you will change tabs based on index...
            
            Home()
            
            
            // More tab Views here...
            HStack(spacing: 0){
                
                Button {
                    
                    // The button animating here...
                    
                    withAnimation{
                        
                        index = 0
                    }
                    
                } label: {
                    
                    HStack(spacing: 8){
                        
                        Image(systemName: "house.fill")
                            .foregroundColor(index == 0 ? .white : Color.black.opacity(0.35))
                            .padding(10)
                            .background(index == 0 ? Color.black : Color.clear)
                            .cornerRadius(8)
                        
                        Text(index == 0 ? "Home" : "")
                            .foregroundColor(.black)
                    }
                }
                
                Spacer(minLength: 0)
                
                Button {
                    
                    // The button animating here...
                    
                    withAnimation{
                        
                        index = 1
                    }
                    
                } label: {
                    
                    HStack(spacing: 8){
                        
                        Image(systemName: "suit.heart")
                            .foregroundColor(index == 1 ? .white : Color.black.opacity(0.35))
                            .padding(10)
                            .background(index == 1 ? Color.black : Color.clear)
                            .cornerRadius(8)
                        
                        Text(index == 1 ? "Loved" : "")
                            .foregroundColor(.black)
                    }
                }
                
                Spacer(minLength: 0)
                
                Button {
                    
                    // The button animating here...
                    
                    withAnimation{
                        
                        index = 2
                    }
                    
                } label: {
                    
                    HStack(spacing: 8){
                        
                        Image(systemName: "person.fill")
                            .foregroundColor(index == 2 ? .white : Color.black.opacity(0.35))
                            .padding(10)
                            .background(index == 2 ? Color.black : Color.clear)
                            .cornerRadius(8)
                        
                        Text(index == 2 ? "Account" : "")
                            .foregroundColor(.black)
                    }
                }
                
            }
            .padding(.top)
            .padding(.horizontal, 25)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            // The reason is because all edges are ignored...
            
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
    }
}
                
                












