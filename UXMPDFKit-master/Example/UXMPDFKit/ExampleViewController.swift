//
//  ExampleViewController.swift
//  UXMPDFKit
//
//  Created by Chris Anderson on 5/7/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import UXMPDFKit

class ExampleViewController: UIViewController, PDFSinglePageViewerDelegate{
    func singlePageViewer(_ collectionView: PDFSinglePageViewer, didDisplayPage page: Int) {
        print("ON PAGE \(page)")
    }
    
    func singlePageViewer(_ collectionView: PDFSinglePageViewer, loadedContent content: PDFPageContentView) {
    
    }
    
    func singlePageViewer(_ collectionView: PDFSinglePageViewer, selected action: PDFAction) {
        
    }
    
    func singlePageViewer(_ collectionView: PDFSinglePageViewer, selected annotation: PDFAnnotationView) {
        
    }
    
    func singlePageViewer(_ collectionView: PDFSinglePageViewer, tapped recognizer: UITapGestureRecognizer) {
        
    }
    
    func singlePageViewerDidBeginDragging() {
        
    }
    
    func singlePageViewerDidEndDragging() {
        
    }
    
    
    
    @IBAction func loadPDF() {

        let url = Bundle.main.path(forResource: "Majmua", ofType: "pdf")!
        let document = try! PDFDocument.from(filePath: url)
        
        let pdf = PDFViewController(document: document!)
        
        pdf.showsScrubber = true
        pdf.scrollDirection = .vertical
        
        
//        pdf.view.bounds = self.view.bounds
    
        pdf.annotationController.annotationTypes = [
            PDFHighlighterAnnotation.self,
            PDFPenAnnotation.self,
            PDFTextAnnotation.self,
        ]
        
        
        
        //self.view.addSubview(pdf.view)
        self.navigationController?.pushViewController(pdf, animated: true)
    }
}
