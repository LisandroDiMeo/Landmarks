//
//  LandmarkService.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 29/11/2023.
//

import Foundation
import Alamofire

struct LandmarkService {
    // For simplicity we directly build the request here,
    // but perhaps for a more complex scenario
    // we should abstract the request building, and only let the
    // user specify what resource it needs. 
    func fetchLandmarks() async -> [Landmark] {
        return await withCheckedContinuation { continuation in
            AF
                .request("http://localhost:8080/landmarks", method: .get)
                .validate(statusCode: 200..<500)
                .validate(contentType: ["application/json"])
                .responseDecodable(of: [Landmark].self) { response in
                    switch response.result {
                    case let .success(model):
                        continuation.resume(returning: model)
                    case .failure(_):
                        continuation.resume(returning: [])
                    }
                }
            
        }
    }
}
