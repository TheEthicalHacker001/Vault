//
//  ContentView.swift
//  Vault
//
//  Created by Dhanraj Sudhir Chavan on 25/05/20.
//  Copyright © 2020 Dhanraj Chavan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0 {
        didSet {
            if count == 4 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.checkPassword(pswd: self.newPass)
                    self.showNext = true
                }
            }
        }
    }
    
    @State private var showNext = false
    
    @State private var newPass = ""
    @State private var myPassword = "1234"
    
    var body: some View {
        NavigationView {
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
                                    self.newPass.append("1")
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
                                    self.newPass.append("2")
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
                                    self.newPass.append("3")
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
                                    self.newPass.append("4")
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
                                    self.newPass.append("5")
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
                                    self.newPass.append("6")
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
                                    self.newPass.append("7")
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
                                    self.newPass.append("8")
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
                                    self.newPass.append("9")
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
                                    self.newPass.append("0")
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
                                    
                                    if self.newPass != "" {
                                        self.newPass.removeLast()
                                    } else {
                                        print("empty")
                                    }
                                    
                                    print(self.newPass)
                                }) {
                                    Image(systemName: "delete.left")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                        .frame(width: geometry.size.width/3 - 10, height: 50)
                                }
                            }
                        }
                    }
                    NavigationLink(destination: SecondView(), isActive: self.$showNext) {
                        Text("")
                    }.hidden()
                }
            }
        }
    }
    
    func checkPassword(pswd: String) {
        if myPassword == pswd {
            print("Matched")
        } else {
            print("Not Matched")
            self.count = 0
            self.newPass = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
