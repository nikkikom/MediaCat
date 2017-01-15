//
//  Document.swift
//  MediaCat
//
//  Created by Nikki Chumakov on 15/01/2017.
//  Copyright © 2017 Nikki Chumakov. All rights reserved.
//

import Cocoa

class Document: NSPersistentDocument {

  override init() {
      super.init()
    // Add your subclass-specific initialization here.
  }

  override class func autosavesInPlace() -> Bool {
    return true
  }

  override func makeWindowControllers() {
    // Returns the Storyboard that contains your Document window.
    let storyboard = NSStoryboard(name: "Main", bundle: nil)
    let windowController = storyboard.instantiateController(withIdentifier: "Document Window Controller") as! NSWindowController
    self.addWindowController(windowController)
  }

}
