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
  
    @State var topIndex = 0
    
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
         
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 30){
                    
                    ForEach(0..<topMenu.count){menu in
                        
                        TopMenu(menu: menu, index: $topIndex)
                        
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top,10)
            
            // Here is the Vertical Menu view
            
            HStack{
                
                VerticalMenu()
                    // VerticalMenu is push to the left screen...
                    .padding(.leading,-165)
                    .zIndex(1)
                // Moving the view in the stack once clicked...
                
                
                
                // Another Scroll view goes here...
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 15){
                        
                        ForEach(1...6,id: \.self){i in
                            
                            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                                
                                // Here is where the background Nike Logo...
                                Image("logo")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(height: 110)
                                    .foregroundColor(Color.black.opacity(0.08))
                                    .padding(.top,55)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading){
                                    
                                    Text("$300")
                                        .font(.system(size: 22))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                    Spacer(minLength: 0)
                                    
                                    Image("p\(i)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    // Here the image is rotated...
                                        .rotationEffect(.init(degrees: 12))
                                    
                                    Spacer(minLength: 0)
                                    
                                    Text("Men's Shoe")
                                        .foregroundColor(Color.white.opacity(0.6))
                                    Text("Nike Air Max")
                                        .font(.system(size: 22))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                }
                            }
                            .padding(.horizontal)
                            .padding(.vertical)
                            // Here we fix Frame...
                            .frame(width: UIScreen.main.bounds.width - 150, height: 360)
                            .background(Color("Color\(i)"))
                            .cornerRadius(15)
                            
                        }
                    }
                    .padding(.leading,20)
                    .padding(.trailing)
                    
                }
                .padding(.leading,-165)
            }
            // This is where the height gets fixed here
            .padding(.top,30)
            .frame(height: 400)
            
            // When the view is rotated to width it is then converted to height
            
            HStack{
                
                Text("New Releases")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("1/2")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.top,25)
            // Menu...
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 20){
                    
                    ForEach(2...6,id: \.self){i in
                        
                        Image("p\(i)")
                            .resizable()
                            .frame(width: 65, height: 35)
                            .rotationEffect(.init(degrees: 12))
                            .padding(.vertical,25)
                            .padding(.horizontal)
                            .background(Color("Color\(i)"))
                            .cornerRadius(15)
                        
                    }
                }
                .padding(.horizontal)
                
            }
            .padding(.top,20)
            
            Spacer(minLength: 0)
            
            
        }
        // All edges are ignored at this point
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct VerticalMenu : View {
    
    @State var index = 0
    
    var body: some View{
        
        HStack(spacing: 0){
            
            Button {
                
                index = 0
                
            } label: {
                VStack(spacing: 5){
                    
                    Text("Men")
                        .fontWeight(index == 0 ? .bold : .none)
                        .foregroundColor(index == 0 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 0 ? 1 : 0)
                }
            }
            .padding(.leading)
            
            Spacer(minLength: 0)
            
            Button {
                
                index = 1
                
            } label: {
                VStack(spacing: 5){
                    
                    Text("Women")
                        .fontWeight(index == 1 ? .bold : .none)
                        .foregroundColor(index == 1 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 1 ? 1 : 0)
                }
            }
            Spacer(minLength: 0)
            
            Button {
                
                index = 2
                
            } label: {
                VStack(spacing: 5){
                    
                    Text("Kids")
                        .fontWeight(index == 2 ? .bold : .none)
                        .foregroundColor(index == 2 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 2 ? 1 : 0)
                }
            }
            Spacer(minLength: 0)
            
            Button {
                
                index = 3
                
            } label: {
                VStack(spacing: 5){
                    
                    Text("Sports")
                        .fontWeight(index == 3 ? .bold : .none)
                        .foregroundColor(index == 3 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 3 ? 1 : 0)
                }
            }
            .padding(.trailing)
        }
        .padding(.vertical,30)
        // Here is where we fix width for the view when rotated
        .frame(width: 400)
        .background(Color.black.opacity(0.1))
        .cornerRadius(12)
        // Rotating View starts here
        .rotationEffect(.init(degrees: -90))
    }
}

struct TopMenu : View {
    
    var menu : Int
    @Binding var index : Int
    
    var body: some View{
        
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
                
                












