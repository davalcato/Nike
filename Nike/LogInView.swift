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
            
            
            
            Spacer()
        }
    }
}

struct Login : View {
    
    var body: some View{
        
        
    }
}
















