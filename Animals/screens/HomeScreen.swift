//
//  HomeScreen.swift
//  Animals
//
//  Created by Зехниддин on 10/04/21.
//

import SwiftUI

struct HomeScreen: View {
    @State var isPresent = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Panda")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                VStack(spacing: 0) {
                    
                    Text("Animals")
                        .foregroundColor(.white)
                        .shadow(color: Color.black, radius: 14, x: 0, y: 5)
                        .font(.system(size: 70, weight: Font.Weight.bold, design: .rounded))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 20, maxHeight: 200, alignment: .bottom)
                    
                    VStack(spacing: 20) {
                        
                        NavigationLink(destination: AnimalsSoundsScreen().navigationBarHidden(true),
                                       label: {
                                        Text("Animals Sound")
                                            .font(.system(size: 26, weight: Font.Weight.medium, design: .rounded))
                                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .frame(height: 70)
                                            .background(Color.green.opacity(0.7))
                                            .foregroundColor(.white).opacity(1)
                                            .cornerRadius(100)
                                       }).buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: AnimalsAboutScreen(),
                                       label: {
                                        Text("Animals About")
                                            .font(.system(size: 26, weight: Font.Weight.medium, design: .rounded))
                                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .frame(height: 70)
                                            .background(Color.green.opacity(0.7))
                                            .foregroundColor(.white).opacity(1)
                                            .cornerRadius(100)
                                       }).buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            self.isPresent.toggle()
                        }) {
                            Text("Info App")
                                .font(.system(size: 26, weight: Font.Weight.medium, design: .rounded))
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 70)
                                .background(Color.green.opacity(0.7))
                                .foregroundColor(.white).opacity(1)
                                .cornerRadius(100)
                        }.buttonStyle(PlainButtonStyle())
                        .sheet(isPresented: $isPresent, content: {
                            InfoAppScreen()
                        })
                        
                    }.padding(.horizontal, 20)
                    .frame(minHeight: 200, maxHeight: 350, alignment: .bottom)
                    .padding(.bottom, 20)
                }
                
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
