//
//  OBSleepView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBSleepView: View {
    var body: some View {
       // NavigationView {
        VStack {
                Text("To begin")
                    .navigationTitle("Sleep")
                NavigationLink(destination: OBFinalView()) {
                    Text("Next")
                        .font(.system(size: 38))
                        .shadow(radius: 5)
                        .padding(.top, 10)
                        .padding(.leading, 100)
                        .padding(.trailing, 100)
                        .padding(.bottom, 10)
                      
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue))
                        .shadow(radius: 10)
                       // .overlay(
                     //       RoundedRectangle(cornerRadius: 16)
                   //             .stroke(Color.black, lineWidth: 4)
                 //               .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue))
                 //       )
                        .foregroundColor(.black)
                        
                }
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 4)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue))
                    .frame(width: 300, height: 60)
                    .overlay( Text("Hello")
                                .font(.system(size:30))
                                .shadow(radius: 10)
                    )
                    .shadow(radius: 10)
            }
     //   }
    }
}

struct OBSleepView_Previews: PreviewProvider {
    static var previews: some View {
        OBSleepView()
    }
}
