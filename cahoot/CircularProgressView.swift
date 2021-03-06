//
//  CircularProgressView.swift
//  cahoot
//
//  Created by T Krobot on 23/6/22.
//

import SwiftUI

struct CircularProgressView: View {
@Environment(\.openURL) var openURL

    var progress: CGFloat
    var correc: Int
    var body: some View {
        ZStack {
            Color.black
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(Color("CircularProgressViewColor"))
                .padding()
            Circle()
                .trim(from: 0, to:progress)
                .stroke(style: .init(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color("CircularProgressViewColor"))
                .rotationEffect(Angle(degrees: 270))
                .padding()
            Text("You got \(correc)/\(Quiz.count) correct!")
                .foregroundColor(.white)
        }
            if progress == 0{
                Text("Aww man go google a link to watch paw patrol free online (pirating ahem)")
                    .foregroundColor(.white)
                    .padding()
                Button(action: {
                    openURL(URL(string: "https://www.youtube.com/watch?v=Q3CeOIaxcH8")!)
                }, label: {
                    HStack {
                        Image(systemName: "video.fill")
                            .foregroundColor(.white)
                            .opacity(0.8)
                        Text("watch here!")
                            .font(.system(size: 20, weight: .regular, design: .rounded))
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.teal.shadow(color: .teal, radius: 3, x: 0.5, y: 1))
                })

            }
            else if progress == 1/4{
                Text("Aww man go google a link to watch paw patrol free online (pirating ahem)")
                    .foregroundColor(.white)
                    .padding()
                Button(action: {
                    openURL(URL(string: "https://www.youtube.com/watch?v=Q3CeOIaxcH8")!)
                }, label: {
                    HStack {
                        Image(systemName: "video.fill")
                            .foregroundColor(.white)
                            .opacity(0.8)
                        Text("watch here!")
                            .font(.system(size: 20, weight: .regular, design: .rounded))
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.teal.shadow(color: .teal, radius: 3, x: 0.5, y: 1))
                })

            }
            else if progress == 0.5{
                Text("You passed, congratulations - but you still kinda suck :/")
                    .foregroundColor(.white)
                    .padding()
            }
            else if progress == 3/4{
                Text("THE FATAL FLAW IN YOUR SEEMINGLY COMPLETE KNOWLEDGE HAS SURFACED GO TO THE WIKI AND PATCH IT UP - YOU WERE SO CLOSE TO PERFECTION SIGH")
                    .foregroundColor(.white)
                    .padding()
            }
            else{
                Text("Your childhood has been certified to be amazing, perfect and marvellous")
                    .foregroundColor(.white)
                    .padding()

            }
        }
    }

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(progress: 1/4,correc: 1)
    }
}
