//
//  DetailAboutAnimals.swift
//  Animals
//
//  Created by Зехниддин on 11/04/21.
//

import SwiftUI

struct AboutAnimalsCell: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var item: Model
    
    var body: some View {
            HStack {
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                Text(item.name)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                Spacer()
            }
            .padding(.vertical, 5)
    }
}

struct AboutAnimalsCell_Previews: PreviewProvider {
    static var previews: some View {
        AboutAnimalsCell(item: Model(name: "Lion", description: " "))
    }
}
