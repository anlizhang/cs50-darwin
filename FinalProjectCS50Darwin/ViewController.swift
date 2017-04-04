//
//  ViewController.swift
//  Final Project CS50Darwin
//
//  Created by Anli Zhang on 12/6/16.
//  Copyright © 2016 Anli Zhang. All rights reserved.
//
//  App Icon: https://upload.wikimedia.org/wikipedia/commons/1/18/Charles_Darwin_by_G._Richmond.png

import UIKit

class ViewController: UIViewController {
    
    // MARK: Tiles
    @IBOutlet weak var UI1x1: UIImageView!
    @IBOutlet weak var UI1x2: UIImageView!
    @IBOutlet weak var UI1x3: UIImageView!
    @IBOutlet weak var UI1x4: UIImageView!
    @IBOutlet weak var UI1x5: UIImageView!
    @IBOutlet weak var UI1x6: UIImageView!
    @IBOutlet weak var UI2x1: UIImageView!
    @IBOutlet weak var UI2x2: UIImageView!
    @IBOutlet weak var UI2x3: UIImageView!
    @IBOutlet weak var UI2x4: UIImageView!
    @IBOutlet weak var UI2x5: UIImageView!
    @IBOutlet weak var UI2x6: UIImageView!
    @IBOutlet weak var UI3x1: UIImageView!
    @IBOutlet weak var UI3x2: UIImageView!
    @IBOutlet weak var UI3x3: UIImageView!
    @IBOutlet weak var UI3x4: UIImageView!
    @IBOutlet weak var UI3x5: UIImageView!
    @IBOutlet weak var UI3x6: UIImageView!
    @IBOutlet weak var UI4x1: UIImageView!
    @IBOutlet weak var UI4x2: UIImageView!
    @IBOutlet weak var UI4x3: UIImageView!
    @IBOutlet weak var UI4x4: UIImageView!
    @IBOutlet weak var UI4x5: UIImageView!
    @IBOutlet weak var UI4x6: UIImageView!
    @IBOutlet weak var UI5x1: UIImageView!
    @IBOutlet weak var UI5x2: UIImageView!
    @IBOutlet weak var UI5x3: UIImageView!
    @IBOutlet weak var UI5x4: UIImageView!
    @IBOutlet weak var UI5x5: UIImageView!
    @IBOutlet weak var UI5x6: UIImageView!
    @IBOutlet weak var UI6x1: UIImageView!
    @IBOutlet weak var UI6x2: UIImageView!
    @IBOutlet weak var UI6x3: UIImageView!
    @IBOutlet weak var UI6x4: UIImageView!
    @IBOutlet weak var UI6x5: UIImageView!
    @IBOutlet weak var UI6x6: UIImageView!
    @IBOutlet weak var UI7x1: UIImageView!
    @IBOutlet weak var UI7x2: UIImageView!
    @IBOutlet weak var UI7x3: UIImageView!
    @IBOutlet weak var UI7x4: UIImageView!
    @IBOutlet weak var UI7x5: UIImageView!
    @IBOutlet weak var UI7x6: UIImageView!
    @IBOutlet weak var UI8x1: UIImageView!
    @IBOutlet weak var UI8x2: UIImageView!
    @IBOutlet weak var UI8x3: UIImageView!
    @IBOutlet weak var UI8x4: UIImageView!
    @IBOutlet weak var UI8x5: UIImageView!
    @IBOutlet weak var UI8x6: UIImageView!
    @IBOutlet weak var UI9x1: UIImageView!
    @IBOutlet weak var UI9x2: UIImageView!
    @IBOutlet weak var UI9x3: UIImageView!
    @IBOutlet weak var UI9x4: UIImageView!
    @IBOutlet weak var UI9x5: UIImageView!
    @IBOutlet weak var UI9x6: UIImageView!
    @IBOutlet weak var UI10x1: UIImageView!
    @IBOutlet weak var UI10x2: UIImageView!
    @IBOutlet weak var UI10x3: UIImageView!
    @IBOutlet weak var UI10x4: UIImageView!
    @IBOutlet weak var UI10x5: UIImageView!
    @IBOutlet weak var UI10x6: UIImageView!
    
    // list of names of tiles, indexed from 0-59
    var names: [UIImageView] = []
    
    // store info about each tile
    struct tile {
        var name: UIImageView? = nil
        var land: Bool = false
        var land_touching: [UIImageView]? = nil
        var group: Int? = nil
    }
    
    // arrangement of tiles in view controller
    var tiles = Array( repeatElement(Array( repeatElement(tile(), count: 8)), count: 12))
    
    // initialize color placeholder
    var species: UIColor = UIColor.black
    
    // variables to determine speciation
    var group = 1
    var groups: [Int] = []
    var land_tiles: [tile] = []
    
    // executes when memory is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize list of names
        names = [UI1x1, UI1x2, UI1x3, UI1x4, UI1x5, UI1x6, UI2x1, UI2x2, UI2x3, UI2x4, UI2x5, UI2x6, UI3x1, UI3x2, UI3x3, UI3x4, UI3x5, UI3x6, UI4x1, UI4x2, UI4x3, UI4x4, UI4x5, UI4x6, UI5x1, UI5x2, UI5x3, UI5x4, UI5x5, UI5x6, UI6x1, UI6x2, UI6x3, UI6x4, UI6x5, UI6x6, UI7x1, UI7x2, UI7x3, UI7x4, UI7x5, UI7x6, UI8x1, UI8x2, UI8x3, UI8x4, UI8x5, UI8x6, UI9x1, UI9x2, UI9x3, UI9x4, UI9x5, UI9x6, UI10x1, UI10x2, UI10x3, UI10x4, UI10x5, UI10x6]
        
        // load info about initial geography
        // top row - sea
        for index in 1...6 {
            tiles[1][index].name = names[index - 1]
            tiles[1][index].land = false
        }
        // sea to left of landmass
        for index in 2...4 {
            tiles[index][1].name = names[6 * (index - 1)]
            tiles[index][1].land = false
        }
        // original 3x3 landmass
        for index in 2...4 {
            tiles[2][index] = tile(name: names[index + 5], land: true, land_touching: nil, group: nil)
        }
        for index in 2...4 {
            tiles[3][index] = tile(name: names[index + 11], land: true, land_touching: nil, group: nil)
        }
        for index in 2...4 {
            tiles[4][index] = tile(name: names[index + 17], land: true, land_touching: nil, group: nil)
        }
        // sea to right of landmass
        for index in 2...4 {
            tiles[index][5].name = names[6 * index - 2]
            tiles[index][5].land = false
            tiles[index][6].name = names[6 * index - 1]
            tiles[index][6].land = false
        }
        // remaining sea tiles
        for index1 in 5...10 {
            for index2 in 1...6 {
                tiles[index1][index2].name = names[6 * index1 - 7 + index2]
                tiles[index1][index2].land = false
            }
        }
        
        // load info about which initial land tiles are touching
        tiles[2][2].land_touching = [UI2x2, UI2x3, UI3x2, UI3x3]
        tiles[2][3].land_touching = [UI2x2, UI2x3, UI2x4, UI3x2, UI3x3, UI3x4]
        tiles[2][4].land_touching = [UI2x3, UI2x4, UI3x3, UI3x4]
        tiles[3][2].land_touching = [UI2x2, UI2x3 ,UI3x2, UI3x3, UI4x2, UI4x3]
        tiles[3][3].land_touching = [UI2x2, UI2x3, UI2x4, UI3x2, UI3x3, UI3x4, UI4x2, UI4x3, UI4x4]
        tiles[3][4].land_touching = [UI2x3, UI2x4, UI3x3, UI3x4, UI4x3, UI4x4]
        tiles[4][2].land_touching = [UI3x2, UI3x3, UI4x2, UI4x3]
        tiles[4][3].land_touching = [UI3x2, UI3x3, UI3x4, UI4x2, UI4x3, UI4x4]
        tiles[4][4].land_touching = [UI3x3, UI3x4, UI4x3, UI4x4]
        
        // display sea tiles
        for tile in names {
            tile.backgroundColor = blue
            tile.image = nil
        }
        
        // display original 3x3 landmass
        for row in 0..<3 {
            for column in 0..<3 {
                names[(row * 6) + column + 7].image = #imageLiteral(resourceName: "land")
                names[(row * 6) + column + 7].backgroundColor = nil
            }
        }
        
        // display initial population
        species = colorGenerator()
        
        var delayInSeconds = 1.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            self.UI3x3.backgroundColor = self.species
            self.UI3x3.image = nil
        }
        delayInSeconds = 2.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            for row in 0..<3 {
                for column in 0..<3 {
                    self.names[(row * 6) + column + 7].backgroundColor = self.species
                    self.names[(row * 6) + column + 7].image = nil
                }
            }
        }
    }
    
    // update info for land_touching
    func newNeighbors(x: Int, y: Int) {
        let name = tiles[x][y].name
        
        tiles[x][y].land_touching = [name!]
        
        if tiles[x-1][y-1].land {
            tiles[x-1][y-1].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x-1][y-1].name!)
        }
        if tiles[x][y-1].land {
            tiles[x][y-1].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x][y-1].name!)
        }
        if tiles[x+1][y-1].land {
            tiles[x+1][y-1].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x+1][y-1].name!)
        }
        if tiles[x-1][y].land {
            tiles[x-1][y].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x-1][y].name!)
        }
        if tiles[x+1][y].land {
            tiles[x+1][y].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x+1][y].name!)
        }
        if tiles[x-1][y+1].land {
            tiles[x-1][y+1].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x-1][y+1].name!)
        }
        if tiles[x][y+1].land {
            tiles[x][y+1].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x][y+1].name!)
        }
        if tiles[x+1][y+1].land {
            tiles[x+1][y+1].land_touching?.append(name!)
            tiles[x][y].land_touching?.append(tiles[x+1][y+1].name!)
        }
    }
    
    // update info for land_touching
    func removeNeighbors(x: Int, y: Int) {
        let name = tiles[x][y].name
        
        tiles[x][y].land_touching = []
        
        if tiles[x-1][y-1].land {
            if let index = tiles[x-1][y-1].land_touching?.index(of: name!) {
                tiles[x-1][y-1].land_touching?.remove(at: index)
            }
        }
        if tiles[x][y-1].land {
            if let index = tiles[x][y-1].land_touching?.index(of: name!) {
                tiles[x][y-1].land_touching?.remove(at: index)
            }
        }
        if tiles[x+1][y-1].land {
            if let index = tiles[x+1][y-1].land_touching?.index(of: name!) {
                tiles[x+1][y-1].land_touching?.remove(at: index)
            }
        }
        if tiles[x-1][y].land {
            if let index = tiles[x-1][y].land_touching?.index(of: name!) {
                tiles[x-1][y].land_touching?.remove(at: index)
            }
        }
        if tiles[x+1][y].land {
            if let index = tiles[x+1][y].land_touching?.index(of: name!) {
                tiles[x+1][y].land_touching?.remove(at: index)
            }
        }
        if tiles[x-1][y+1].land {
            if let index = tiles[x-1][y+1].land_touching?.index(of: name!) {
                tiles[x-1][y+1].land_touching?.remove(at: index)
            }
        }
        if tiles[x][y+1].land {
            if let index = tiles[x][y+1].land_touching?.index(of: name!) {
                tiles[x][y+1].land_touching?.remove(at: index)
            }
        }
        if tiles[x+1][y+1].land {
            if let index = tiles[x+1][y+1].land_touching?.index(of: name!) {
                tiles[x+1][y+1].land_touching?.remove(at: index)
            }
        }
    }

    // show colors of new species
    func evolve() {
        // find all land tiles
        for i in 1...10 {
            for j in 1...6 {
                if tiles[i][j].land {
                    land_tiles.append(tiles[i][j])
                }
            }
        }
        
        // find landmasses
        if land_tiles.count > 0 {
            land_tiles[0].group = group
            groups.append(group)
            
            for (i, tile) in land_tiles.enumerated() {
                if i + 1 < land_tiles.count {
                    if land_tiles[i+1].land_touching?.contains(tile.name!) == true {
                        land_tiles[i+1].group = tile.group
                    } else {
                        group += 1
                        groups.append(group)
                        land_tiles[i+1].group = group
                    }
                }
            }
        }
        
        // color groups
        for landmass in groups {
            for tile in land_tiles {
                if tile.group == landmass {
                    species = colorGenerator()
                
                    let delayInSeconds = 1.0
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                        tile.name?.backgroundColor = self.species
                        tile.name?.image = nil
                    }
                }
            }
        }
        
        // reset values
        land_tiles = []
        groups = []
        group = 1
    }
    
    // MARK: Actions
    
    // reset button returns to original geography
    @IBAction func resetButton(_ sender: UIButton) {
        // load info about initial geography
        // top row - sea
        for index in 1...6 {
            tiles[1][index].name = names[index - 1]
            tiles[1][index].land = false
        }
        // sea to left of landmass
        for index in 2...4 {
            tiles[index][1].name = names[6 * (index - 1)]
            tiles[index][1].land = false
        }
        // original 3x3 landmass
        for index in 2...4 {
            tiles[2][index] = tile(name: names[index + 5], land: true, land_touching: nil, group: group)
        }
        for index in 2...4 {
            tiles[3][index] = tile(name: names[index + 11], land: true, land_touching: nil, group: group)
        }
        for index in 2...4 {
            tiles[4][index] = tile(name: names[index + 17], land: true, land_touching: nil, group: group)
        }
        // sea to right of landmass
        for index in 2...4 {
            tiles[index][5].name = names[6 * index - 2]
            tiles[index][5].land = false
            tiles[index][6].name = names[6 * index - 1]
            tiles[index][6].land = false
        }
        // remaining sea tiles
        for index1 in 5...10 {
            for index2 in 1...6 {
                tiles[index1][index2].name = names[6 * index1 - 7 + index2]
                tiles[index1][index2].land = false
            }
        }
        
        // load info about which initial land tiles are touching
        tiles[2][2].land_touching = [UI2x2, UI2x3, UI3x2, UI3x3]
        tiles[2][3].land_touching = [UI2x2, UI2x3, UI2x4, UI3x2, UI3x3, UI3x4]
        tiles[2][4].land_touching = [UI2x3, UI2x4, UI3x3, UI3x4]
        tiles[3][2].land_touching = [UI2x2, UI2x3 ,UI3x2, UI3x3, UI4x2, UI4x3]
        tiles[3][3].land_touching = [UI2x2, UI2x3, UI2x4, UI3x2, UI3x3, UI3x4, UI4x2, UI4x3, UI4x4]
        tiles[3][4].land_touching = [UI2x3, UI2x4, UI3x3, UI3x4, UI4x3, UI4x4]
        tiles[4][2].land_touching = [UI3x2, UI3x3, UI4x2, UI4x3]
        tiles[4][3].land_touching = [UI3x2, UI3x3, UI3x4, UI4x2, UI4x3, UI4x4]
        tiles[4][4].land_touching = [UI3x3, UI3x4, UI4x3, UI4x4]
        
        // display sea tiles
        for tile in names {
            tile.backgroundColor = blue
            tile.image = nil
        }
        
        // display original 3x3 landmass
        for row in 0..<3 {
            for column in 0..<3 {
                names[(row * 6) + column + 7].image = #imageLiteral(resourceName: "land")
                names[(row * 6) + column + 7].backgroundColor = nil
            }
        }
        
        // display initial population
        species = colorGenerator()
        
        var delayInSeconds = 1.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            self.UI3x3.backgroundColor = self.species
            self.UI3x3.image = nil
        }
        delayInSeconds = 2.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            for row in 0..<3 {
                for column in 0..<3 {
                    self.names[(row * 6) + column + 7].backgroundColor = self.species
                    self.names[(row * 6) + column + 7].image = nil
                }
            }
        }
    }
    
    // execute when tile is tapped
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let tile = sender.view as! UIImageView
        
        var index: Int
        var x_index = 0
        var y_index = 0
        
        // if sea is tapped, change to land
        if tile.backgroundColor == blue {
            tile.image = #imageLiteral(resourceName: "land")
            tile.backgroundColor = nil
            
            // update info
            for (i, array) in tiles.enumerated() {
                for (j, element) in array.enumerated() {
                    if element.name == tile {
                        tiles[i][j].land = true
                        
                        index = names.index(of: element.name!)!
                        x_index = Int(index / 6) + 1
                        y_index = (index % 6) + 1
                    }
                }
            }
            newNeighbors(x: x_index, y: y_index)
        }
        // if land is tapped, change to sea
        else if tile.backgroundColor != blue {
            tile.backgroundColor = blue
            tile.image = nil
            
            // update info
            for (i, array) in tiles.enumerated() {
                for (j, element) in array.enumerated() {
                    if element.name == tile {
                        tiles[i][j].land = false
                        tiles[i][j].group = nil
                        
                        index = names.index(of: element.name!)!
                        x_index = Int(index / 6) + 1
                        y_index = (index % 6) + 1
                    }
                }
            }
            removeNeighbors(x: x_index, y: y_index)
        }
        
        evolve()
    }
    
}
