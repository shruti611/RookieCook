//
//  RecipeInstructionsTableViewController.swift
//  RC
//
//  Created by Shruti Sachdeva on 12/03/24.
//

import UIKit

class RecipeInstructionsTableViewController: UITableViewController {

    var recipe:Recipe?
    var recipeInstructionNumber:Int = 0
    
    
    
    init?(coder:NSCoder,recipe:Recipe?){
        self.recipe = recipe
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var stepCountLabel: UILabel!
    
    @IBOutlet var recipeInstructionLabel: UILabel!
    
    @IBOutlet var previousButton: UIButton!

    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayRecipeInstruction()
        displayButtons()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func displayRecipeInstruction(){
        guard let recipe = recipe else {return}
        
        stepCountLabel.text = "Step \(recipeInstructionNumber + 1) of \(recipe.instructions.count)"
        recipeInstructionLabel.text = recipe.instructions[recipeInstructionNumber]
    }
    func displayButtons(){
        if recipeInstructionNumber == 0 {
            previousButton.isEnabled = false
        }
        else if recipeInstructionNumber == (recipe?.instructions.count)! - 1 {
            nextButton.isEnabled = false
        }
        else {
            previousButton.isEnabled = true
            nextButton.isEnabled = true
        }
    }
    
    
    @IBAction func previousButtonTapped(_ sender: Any) {
        if recipeInstructionNumber >= 1 {
            recipeInstructionNumber -= 1
            displayRecipeInstruction()
            displayButtons()
            
        }
        
    }
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if recipeInstructionNumber < (recipe?.instructions.count)! - 1 {
            recipeInstructionNumber += 1
            displayRecipeInstruction()
            displayButtons()
            
        }
        
        
    }
    
    
    
}
