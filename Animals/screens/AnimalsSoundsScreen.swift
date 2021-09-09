//
//  AnimalsSoundsScreen.swift
//  Animals
//
//  Created by Зехниддин on 10/04/21.
//

import SwiftUI
import AVKit



struct AnimalsSoundsScreen: View {
    @State var audioPlayer: AVAudioPlayer!
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all).opacity(0.6)
            
            VStack {
                ZStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Text("Animals Sound")
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 20, weight: .semibold))
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
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(animals, id: \.self) { item in
                            Button(action: {
                                sayVoise(name: item.name)
                            }) {
                                ZStack(alignment: .bottomTrailing) {
                                    Image(item.name)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(height: UIScreen.main.bounds.width / 2 - 20)
                                        .cornerRadius(12)
                                        .shadow(color: .black, radius: 2)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding(10)
                }
            }
        }
        
    }
    
    func sayVoise(name: String) {
        let sound = Bundle.main.path(forResource: name, ofType: "mp3")
        if sound == nil {
            return
        }
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        self.audioPlayer.stop()
        self.audioPlayer.play()
    }
}

struct AnimalsSoundsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsSoundsScreen()
    }
}

