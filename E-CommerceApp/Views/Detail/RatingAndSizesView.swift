////
////  RatingAndSizesView.swift
////  E-CommerceApp
////
////  Created by Mehmet Vural on 20.03.2024.
////
//
//import SwiftUI
//
//struct RatingAndSizesView: View {
//    @State private var sizes : [String] = ["XS" , "S" , "M" ,"L" ,"XL"]
//    var body: some View {
//        HStack{
//            VStack(alignment: .leading){
//                
//                Text("Ratings")
//                    .font(.headline)
//                    .fontWeight(.semibold)
//                    .foregroundStyle(Color.gray)
//                
//                HStack {
//                    ForEach(1 ... 5 , id : \.self){ _ in
//                        
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 5)
//                                .frame(width: 30 , height: 30)
//                                .foregroundStyle(Color.gray.opacity(0.4))
//                            Image(systemName: "star")
//                                .frame(width: 30 , height: 30)
//                        }
//                    }
//                }
//            }
//            
//            Spacer()
//            
//            VStack(alignment : .trailing){
//                Text("Sizes")
//                    .font(.headline)
//                    .fontWeight(.semibold)
//                    .foregroundStyle(Color.gray)
//                
//                HStack {
//                    ForEach(sizes, id : \.self){ size in
//                        
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 5)
//                                .stroke(lineWidth: 1.0)
//                                .frame(width: 30 , height: 30)
//                                .foregroundStyle(Color.gray)
//                            
//                            Text(size)
//                                .font(.footnote)
//                                .fontWeight(.heavy)
//                                .foregroundStyle(Color.gray)
//                                .frame(width: 30 , height: 30)
//                                
//                        }
//                    }
//                }
//                
//            }
//        }
//    }
//}
//
//#Preview {
//    RatingAndSizesView()
//}
