//
//  ContentView.swift
//  Shared
//
//  Created by Saud Al Mutairi on 9/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var status = ""
    var body: some View {
        ZStack{
            
        Color.blue.ignoresSafeArea()
            
        VStack{
            Text("حساب الدرجات")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Image("calc")
                .resizable()
                .scaledToFit()
                .frame(width: 125, height: 125)
            Spacer()
            TextField("ادخل درجتك", text: $grade)
                .frame(width:350, height:50)
                .background(Color.white)
                .padding()
            Text("احسب درجتي")
                .padding()
            background(Color.yellow)
                .clipShape(Capsule())
                .onTapGesture {
                    if Int(grade) ?? 0>=90{
                        status="امتياز"
                        
                } else if Int(grade) ?? 0>=80{
                  status="جيد جدا"
                } else if  Int(grade) ?? 0>=70{
                  status="جيد"
                } else if  Int(grade) ?? 0>=60{
                      status="مقبول"
                } else {
                    status="راسب"
                }
            
                    }
            Text("لقد حصلت علي درجة")
            Spacer()
            Text(status)
                .font(.system(size: 80))
                .fontWeight(.semibold)
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
