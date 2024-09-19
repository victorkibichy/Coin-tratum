//
//  LocalFIleManager.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 9/19/24.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init() { }
    
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        
//        create folder
        createFolderIfNeeded(folderName: folderName)
        
//        get path for the image
        
        guard
                let data = image.pngData(),
                let url = getUrlForImage(imageName: imageName, folderName: folderName)
                else {return}
        
//        save image to the path
        
        do {
            try data.write(to: url)
        }
        catch let error {
            print("Error Saving Image. ImageName: \(imageName). \(error)")
        }
        
    }
    
    func getImage(imageName: String, folderName: String) -> UIImage? {
        
        guard
            let url = getUrlForImage(imageName: imageName, folderName: folderName),
                
                FileManager.default.fileExists(atPath: url.path) else {
            return nil
            
        }
        return UIImage(contentsOfFile: url.path)
        
    }
    
    private func createFolderIfNeeded(folderName: String) {
        
        guard let url = getUrlForFolder(folderName: folderName) else { return }
        if !FileManager.default.fileExists(atPath: url.path) {
            do {
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
            } catch let error {
                print("Error creating directory. FolderName: \(folderName). \(error)")
            }
        }
        
    }
    
        private func getUrlForFolder(folderName: String) -> URL? {
        
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            
            return nil
            
        }
        return url.appendingPathComponent(folderName)
    }
    
    func getUrlForImage(imageName: String, folderName: String) -> URL? {
        
        guard let folderURL = getUrlForFolder(folderName: folderName)   else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
    
}
