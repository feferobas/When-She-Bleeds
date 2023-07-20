//
//  ContentView.swift
//  intro view when she bleeds
//
//  Created by Cristiane Andrade on 19/07/23.
//

import SwiftUI
import UIKit
struct ContentView: View {
    /*   @objc func fireTimer() {
     print("Timer fired!")
     }
     let timer1 = Timer.scheduledTimer(timeInterval: 1.0,
     target: Self.self,
     selector: #selector(fireTimer), userInfo: nil, repeats: false) */
    
    @State private var timeOut = ""
   
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color(.systemPink)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Spacer()
                        NavigationLink(destination: portugueseButton()) {
                            Text("Português")
                                
                        } .padding()
                    }
                    Spacer()
                    Image ("padsimage")
                    
                    var timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { timer in
                      timeOut = "Welcome"
                        
                    }
                    Spacer()
                    if timeOut == "Welcome" {
                            NavigationLink(destination: menstruationCycleStartView()) {
                                Text("Start")
                                    .font(.largeTitle)
                                    .fontWeight(.medium)
                            }
                    }
                    Spacer()
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
