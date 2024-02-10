//
//  SwiftUIView.swift
//  PetHome
//
//  Created by Mingo Chan on 10/2/2024.
//

import SwiftUI
import PhotosUI

struct PhotoView: View {
    @State private var selectedItems: [PhotosPickerItem] = []
    @State private var selectedPhotosData: [Data] = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(selectedPhotosData, id: \.self) { photoData in
                        if let image = UIImage(data: photoData) {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10.0)
                                .padding(.horizontal)
                        }
                    }
                }
            }


            .navigationTitle("Photos")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PhotosPicker(selection: $selectedItems, maxSelectionCount: 5, matching: .images) {
                        Image(systemName: "photo.on.rectangle.angled")
                    }
                    .onChange(of: selectedItems) { newItems in
                        for newItem in newItems {

                            Task {
                                if let data = try? await newItem.loadTransferable(type: Data.self) {
                                    selectedPhotosData.append(data)
                                }
                            }

                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PhotoView()
}
