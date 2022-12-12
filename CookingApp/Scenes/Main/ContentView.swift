//
//  ContentView.swift
//  CookingApp
//
//  Created by simge on 18.11.2022.
//


import SwiftUI

struct ContentView: View {
    @State var splashScreen  = true
    
    var body: some View {
        ZStack{
            Group{
                if splashScreen {
                    SplashScreen()
                }
                else{
                    TabBar()
                }
            }
            .onAppear {
                DispatchQueue
                    .main
                    .asyncAfter(deadline:
                            .now() + 3) {
                                self.splashScreen = false
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


struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            LottieView(filename: "6519-cooking")
                .offset(x: 0, y: -50)
        }
    }
}

