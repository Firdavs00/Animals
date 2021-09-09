//
//  DetailAboutAnimals.swift
//  Animals
//
//  Created by Зехниддин on 11/04/21.
//

import SwiftUI

struct DetailAboutAnimals: View {
    var item: Model
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 8) {
                    Image(item.name)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                        .shadow(color: .black, radius: 8)
                        .padding(.bottom, 10)
                
                Text("Description")
                    .font(.system(size: 24, weight: .semibold, design: .rounded))
                    .foregroundColor(.orange)
                
                Text(item.description)
                    .lineLimit(nil)
            }
            .padding()
        }
        .navigationBarTitle(item.name)
    }
}

struct DetailAboutAnimals_Previews: PreviewProvider {
    static var previews: some View {
        DetailAboutAnimals(item: Model(name: "Lion", description: ""))
    }
}
