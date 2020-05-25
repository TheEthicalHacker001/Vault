//
//  ContentView.swift
//  Vault
//
//  Created by Dhanraj Sudhir Chavan on 25/05/20.
//  Copyright © 2020 Dhanraj Chavan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    let myPassword = "1234"
    
    @State private var first = 0
    @State private var second = 0
    @State private var third = 0
    @State private var fourth = 0
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                
                Spacer()
                
                Text("Enter Passcode")
                    .font(.headline)
                            
                HStack(alignment: .center, spacing: 20) {
                    Image(systemName: self.count > 0 ? "circle.fill" : "circle")
                        .font(.headline)
                    
                    Image(systemName: self.count > 1 ? "circle.fill" : "circle")
                        .font(.headline)
                    
                    Image(systemName: self.count > 2 ? "circle.fill" : "circle")
                        .font(.headline)
                    
                    Image(systemName: self.count > 3 ? "circle.fill" : "circle")
                        .font(.headline)
                }
                
                Spacer()
                
                Group {
                    VStack(alignment: .center, spacing: 10) {
                        HStack(alignment: .center) {
                            Button(action: {
                                print("1")
                                self.count += 1
                            }) {
                                Text("1")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("2")
                                self.count += 1
                            }) {
                                Text("2")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("3")
                                self.count += 1
                            }) {
                                Text("3")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                        }
                        
                        HStack(alignment: .center) {
                            Button(action: {
                                print("4")
                                self.count += 1
                            }) {
                                Text("4")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("5")
                                self.count += 1
                            }) {
                                Text("5")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("6")
                                self.count += 1
                            }) {
                                Text("6")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                        }
                        
                        HStack(alignment: .center) {
                            Button(action: {
                                print("7")
                                self.count += 1
                            }) {
                                Text("7")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("8")
                                self.count += 1
                            }) {
                                Text("8")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("9")
                                self.count += 1
                            }) {
                                Text("9")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                        }
                        
                        HStack(alignment: .center) {
                            Button(action: {
                                print("7")
                            }) {
                                Text("7")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }.hidden()
                            
                            Button(action: {
                                print("0")
                                self.count += 1
                            }) {
                                Text("0")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("delete")
                                self.count -= 1
                            }) {
                                Image(systemName: "delete.left")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                    .frame(width: geometry.size.width/3 - 10, height: 50)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
