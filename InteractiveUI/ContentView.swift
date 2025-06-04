//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 6/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack {
                Text("What is your name?")
                    .font(.title)
                    .background(.yellow)
                TextField("Type your name here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1)
                    .background(.gray)
                Button("Button"){
                    
                }
                //end button
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
            }
            //end vstack
            .padding()
            .background(.blue)
        }
        //end zstack
        

    }
    //end body
}
//end content

#Preview {
    ContentView()
}
