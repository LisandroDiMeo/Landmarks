//
//  JsonFileLoader.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 27/11/2023.
//

import Foundation

struct JsonFileLoader {
    func load<T: Decodable>(filename: String) -> T {
        let data: Data
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("File \(filename) was not found!")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't read data from \(filename). Error was \n \(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
