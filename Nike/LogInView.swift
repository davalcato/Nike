//
//  LogInView.swift
//  Nike
//
//  Created by Daval Cato on 7/24/20.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        
        Home()
        
    }
}
        
        // For Smaller Size iPhones...
                  
//                  VStack{
//
//                      if UIScreen.main.bounds.height < 750{
//
//                          ScrollView(.vertical, showsIndicators: false) {
//
//                              Home()
//                          }
//                      }
//                      else{
//
//                          Home()
//                      }
//                  }
//                  .padding(.vertical)
//              }
//          }

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

struct Home : View {
    
    @State var index = 0
    @Namespace var name
    
    var body: some View{
        
        VStack{
            
            Image("logo1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70.0)
                
            
            HStack(spacing: 0){
                
                Button(action: {
                    
                    withAnimation(.spring()){
                        
                        index = 0
                    }
                    
                }) {
                    
                    VStack{
                        
                        Text("Login")
                            .font(.system(size:20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        
                        ZStack{
                            
                            Capsule()
                                
                                // Slide animation goes here...
                                
                                
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 0{
                                
                                Capsule()
                                    .fill(Color("Color2"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
                
                Button(action: {
                    
                    withAnimation(.spring()){
                        
                        index = 1
                    }
                    
                }) {
                    
                    VStack{
                        
                        Text("Sign Up")
                            .font(.system(size:20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .black : .gray)
                        
                        ZStack{
                            
                            Capsule()
                                
                                // Slide animation goes here...
                                
                                
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 1{
                                
                                Capsule()
                                    .fill(Color("Color2"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }
            .padding(.top,30)
            
            
            // Login View goes here...
            
            // Able to change the Views Based on Index...
            
            if index == 0{
                
                Login()
            }
        }
    }
}

struct Login : View {
    
    @State var password = ""
    
    var body: some View{
        
        VStack{
            
            HStack{
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text("Hello Again,")
                        .fontWeight(.bold)
                    
                    Text("Ms. Joie")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Button(action: {}) {
                        
                        Text("This isn't me")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color2"))
                    }
                }
                
                Spacer(minLength: 0)
                
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
            }
            .padding(.horizontal,25)
            .padding(.top,30)
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("Password")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    
                // Add shadow effects here....
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x:0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x:0, y: -5)
                
                Button(action: {}) {
                    
                    Text("Forgot Password")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color2"))
                }
                .padding(.top,10)
            }
            .padding(.horizontal,25)
            .padding(.top,25)
            
            // Login Button goes here...
            
            Button(action: {}) {
                
                Text("Login")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        
                        LinearGradient(gradient: .init(colors: [Color("Color1"),Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(8)
            }
            .padding(.horizontal,25)
            .padding(.top,25)
            
            // Social Media buttons goes here...
            Button(action: {}) {
                
                HStack(spacing: 35){
                    
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                        .foregroundColor(Color("Color5"))
                    
                    Text("Login With Face ID")
                        .font(.system(size: 20))
                        .foregroundColor(Color("Color5"))
                    
                    Spacer(minLength: 0)
                       
                    
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color("Color5"),lineWidth: 1))

            }
            .padding(.top,30)
            .padding(.horizontal,25)
            
            HStack(spacing: 30){
                
                ForEach(social,id: \.self){name in
                    
                    Button(action: {}) {
                        
                        Image(name)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(name == "google" ? "Color3": "Color3"))
                    }
                }
            }
            .padding(.top,25)
        }
    }
}

var social = ["twitter", "fb", "google"]















