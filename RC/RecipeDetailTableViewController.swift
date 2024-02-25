//
//  RecipeDetailTableViewController.swift
//  RC
//
//  Created by Shruti Sachdeva on 25/02/24.
//

import UIKit

class RecipeDetailTableViewController: UITableViewController {
    
    var recipe:Recipe?
    
    
    
    @IBOutlet var recipeImage: UIImageView!
    
    @IBOutlet var recipeNameLabel: UILabel!
    
    
    @IBOutlet var recipeCookingTimeLabel: UILabel!
    
    @IBOutlet var recipeCourseLabel: UILabel!
    
    @IBOutlet var recipeCuisineLabel: UILabel!
    
    
    
    @IBOutlet var recipeIngredientsLabel: UILabel!
    
    
    @IBOutlet var recipeCookingInstructionsLabel: UILabel!
    
    
    init?(coder:NSCoder,recipe: Recipe?) {
        self.recipe = recipe
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = recipe?.recipeName
        if let recipe = recipe {
            recipeImage.image = UIImage(named: recipe.recipeImageName)
            recipeNameLabel.text = recipe.recipeName
            recipeCookingTimeLabel.text = "⏰ " + recipe.cookingTime
            recipeCourseLabel.text = "🍽️ " + recipe.course
            recipeCuisineLabel.text = "🥣 " + recipe.cuisine
            var ingredients = ""
            for ingredient in recipe.ingredients {
                ingredients = ingredients + "\n\(ingredient)"
            }
            recipeIngredientsLabel.text = ingredients
            
            var instructions = ""
            for (number,instruction) in recipe.instructions.enumerated() {
                instructions = instructions + "\n\n\(number+1). \(instruction)"
            }
            
            recipeCookingInstructionsLabel.text = instructions
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
}
