//
//  ViewController.swift
//  PencilKitExample
//
//  Created by Ayush Singh on 31/05/22.
//

import UIKit
import PencilKit

class ViewController: UIViewController, PKCanvasViewDelegate, PKToolPickerObserver {
    
    private var canvasView: PKCanvasView = {
        let canvas = PKCanvasView()
        canvas.drawingPolicy = .anyInput
        return canvas
    }()
    
    let drawing = PKDrawing()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasView.drawing = drawing
        canvasView.delegate = self
        view.addSubview(canvasView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        canvasView.frame = view.bounds
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let toolPicker = PKToolPicker()
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(self)
        canvasView.becomeFirstResponder()
    }

    //Canvas View Delegates
    
    func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
        
        print("Drawing Did Change")
        
    }
    
    func canvasViewDidFinishRendering(_ canvasView: PKCanvasView) {
        
    }
    
    
    func canvasViewDidBeginUsingTool(_ canvasView: PKCanvasView) {
        
    }
    
    func canvasViewDidEndUsingTool(_ canvasView: PKCanvasView) {
        
    }
    
    //Tool Picker Delegate
    
    func toolPickerSelectedToolDidChange(_ toolPicker: PKToolPicker) {
        print("toolPickerSelectedToolDidChange")
    }
    
    func toolPickerIsRulerActiveDidChange(_ toolPicker: PKToolPicker) {
        print("toolPickerIsRulerActiveDidChange")
    }
    
    func toolPickerVisibilityDidChange(_ toolPicker: PKToolPicker) {
        print("toolPickerVisibilityDidChange")
    }
    
    func toolPickerFramesObscuredDidChange(_ toolPicker: PKToolPicker) {
        print("toolPickerFramesObscuredDidChange")
    }
    
}

