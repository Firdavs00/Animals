//
//  InfoAppScreen.swift
//  Animals
//
//  Created by Зехниддин on 11/04/21.
//

import SwiftUI

struct InfoAppScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all).opacity(0.6)
            
            VStack {
                ZStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Text("Info App")
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 24, weight: .semibold, design: Font.Design.serif))
                            .frame(minHeight: 0, maxHeight: 30)
                        Spacer()
                    }
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image("ic_back")
                                .padding(.leading)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.top, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text("The app is designed to get information about a variety of animals. In addition, you can learn animal's voices. Definitely, you like this app, beacause it is vey useful in many ways. Learnimg about animals will come in handy for you in the long run. Also, animal's vuices is very vonderful, and if you listen to animals voice,  it help you to put your mind at ease and to take your mind of problems. And, of course the app was created by a professional programmer. ")
                        .lineLimit(nil)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .font(.system(size: 20, weight: .medium, design: Font.Design.serif))
                        .padding(.vertical, 20)
                }
            }
        }
        
    }
}

struct InfoAppScreen_Previews: PreviewProvider {
    static var previews: some View {
        InfoAppScreen()
    }
}
