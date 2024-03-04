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
    
    
    @IBOutlet var favouriteBarButton: UIBarButtonItem!
    
    
    init?(coder:NSCoder,recipe: Recipe?) {
        self.recipe = recipe
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func displayRecipe() {
        title = recipe?.recipeName
        if let recipe = recipe {
            recipeImage.image = UIImage(named: recipe.recipeImageName)
            recipeNameLabel.text = recipe.recipeName
            recipeCookingTimeLabel.text = "⏰ " + recipe.cookingTime
            recipeCourseLabel.text = "🍽️ " + recipe.course
            recipeCuisineLabel.text = "🥣 " + recipe.cuisine
            var ingredients = ""
            for ingredient in recipe.ingredients {
                ingredients = ingredients + "\(ingredient)\n"
            }
            recipeIngredientsLabel.text = ingredients
            
            var instructions = ""
            for (number,instruction) in recipe.instructions.enumerated() {
                instructions = instructions + "\(number+1). \(instruction)\n\n"
            }
            
            recipeCookingInstructionsLabel.text = instructions
            favouriteBarButton.tintColor = .red
            if recipe.favourite {
                favouriteBarButton.image = UIImage(systemName: "heart.fill")
            } else {
                favouriteBarButton.image = UIImage(systemName: "heart")
                
            }
            
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayRecipe()
        
    }
    
    @IBAction func favouriteBarButtonTapped(_ sender: UIBarButtonItem) {
        recipe?.favourite.toggle()
        displayRecipe()
    }
    
    
    @IBAction func recipesBarButtonTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "unwindToRecipeList", sender: sender)
    }
    
    
    
}
