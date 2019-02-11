//
//  imgToPDF.swift
//  imgToPDF
//
//  Created by Yash Rathod on 11/02/19.
//  Copyright © 2019 Disha Technology. All rights reserved.
//

import Foundation
import UIKit
import PDFKit

open class imgToPDF:UIViewController {
    
    open func imgtopdf(images: [UIImage],_ imageQuality:CGFloat,fileurl: URL) {
        let pdfDocument = PDFDocument()
        for i in 0 ..< images.count {
            let tempImg = images[i].jpegData(compressionQuality: imageQuality)
            let imgcomplete = UIImage(data: tempImg!)
            let pdfPage = PDFPage(image: imgcomplete!)
            pdfDocument.insert(pdfPage!, at: i)
        }
        let data = pdfDocument.dataRepresentation()
        try! data!.write(to: fileurl)
    }
}
