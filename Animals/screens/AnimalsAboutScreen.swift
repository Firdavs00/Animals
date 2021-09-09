//
//  AnimalsAboutScreen.swift
//  Animals
//
//  Created by Зехниддин on 10/04/21.
//

import SwiftUI

struct AnimalsAboutScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        List(animals) { item in
            NavigationLink(
                destination: DetailAboutAnimals(item: item),
                label: {
                    AboutAnimalsCell(item: item)
                })
        }
        .navigationBarTitle("Animals")
        .background(
            LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct AnimalsAboutScreen_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsAboutScreen()
    }
}
