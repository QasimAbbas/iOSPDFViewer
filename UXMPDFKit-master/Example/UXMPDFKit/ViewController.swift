//
//  ViewController.swift
//  UXMPDFKit
//
//  Created by Chris Anderson on 03/05/2016.
//  Copyright (c) 2016 Chris Anderson. All rights reserved.
//

import UIKit
import UXMPDFKit

class ViewController: UIViewController, PDFSinglePageViewerDelegate{
    public func singlePageViewer(_ collectionView: PDFSinglePageViewer, didDisplayPage page: Int) {
        collectionView.document?.currentPage = page
    }
    
    public func singlePageViewer(_ collectionView: PDFSinglePageViewer, loadedContent content: PDFPageContentView) {
        //        if allowsFormFilling {
        //            formController.showForm(content)
        //        }
        
    }
    
    public func singlePageViewer(_ collectionView: PDFSinglePageViewer, selected action: PDFAction) {

    }
    
    public func singlePageViewer(_ collectionView: PDFSinglePageViewer, selected annotation: PDFAnnotationView) {
        
    }
    
    public func singlePageViewer(_ collectionView: PDFSinglePageViewer, tapped recognizer: UITapGestureRecognizer) {
  
    }
    
    public func singlePageViewerDidBeginDragging() {
        
    }
    
    public func singlePageViewerDidEndDragging() { }
    

    
    @IBOutlet var collectionView:PDFSinglePageViewer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.path(forResource: "Majmua", ofType: "pdf")!
        let document = try! PDFDocument(filePath: url, password: "")
        
        self.collectionView.document = document
    }
}

