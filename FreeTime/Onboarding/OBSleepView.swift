//
//  OBSleepView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBSleepView: View {
    @EnvironmentObject var userData: UserData
    @State var input: String = ""
    var body: some View {
        ZStack {
            GradientView()
            VStack {
                Spacer()
                VStack {
                    Text("Please enter how much sleep you get on average per night:")
                        .padding(.horizontal)
                        .padding(.vertical, 25)
                        
                    TextField("", text: $input)
                        .font(.system(size: 54))
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.26)))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                        .keyboardType(.decimalPad)
                        .onAppear {
                            if  userData.sleepHoursDaily != 0.0 {
                                input = String(userData.sleepHoursDaily)
                            }
                        }
                        .onDisappear {
                            userData.sleepHoursDaily = Double(input) ?? 0.0
                        }
                }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.16))
                            .shadow(color: .black, radius: 18, x: 10, y: 10)
                    )
                    .padding()
                    
                Spacer()
                Button(action: {}) {
                        Text("Next")
                            .frame(width: 300, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 5.0)) {
                                    userData.obTabSelection = 3
                                }
                            }
                }
                .padding()
                
            }
        }
        .navigationTitle("Sleep")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct OBSleepView_Previews: PreviewProvider {
    static var previews: some View {
        OBSleepView()
            .preferredColorScheme(.dark)
            .environmentObject(UserData())
    }
}
