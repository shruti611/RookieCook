//
//  Data.swift
//  RC
//
//  Created by Shruti Sachdeva on 24/02/24.
//

import Foundation

struct Recipe :Codable,CustomStringConvertible {
    
    
    var recipeImageName:String
    var recipeName:String
    var course:String
    var cuisine:String
    var ingredients:[String]
    var instructions:[String]
    var calories:Int
    var cookingTime:String
    var servings:Int
    var description: String {
        return "The recipe \(self.recipeName) uses \(self.ingredients.count) ingredients"
    }
    
    
    
    
    
}

var recipes = [
    Recipe(recipeImageName: "PenneAlfredoPasta", recipeName: "Penne Alfredo Pasta",course: "Main Dish",cuisine: "Continental", ingredients: ["2 tbsp butter","3 tbsp flour","3 cloves garlic minced","2 cups of milk","½ tsp dried basil","½ tsp Dried Oregano","½  cup Parmesan Cheese shredded","1 tsp Salt and pepper","400 gm Penne Pasta cooked","¼ cup Parsley fresh or dried","¼ cup Parmesan Cheese shredded"], instructions: ["In a pan, add butter. Once it melts, add the chopped garlic and sauté it.","Once it is soft, add half the flour and mix it. Then add the rest of the flour and mix it again.","Add the milk little at a time and keep stirring to avoid lumps. As the sauce begins to thicken, add oregano, basil, salt and pepper.","Stir well. Then add Parmesan cheese and mix until it melts.","Take a bowl and add the cooked penne pasta to it.","Then pour the sauce over the pasta.","Add extra Parmesan cheese and sprinkle fresh parsley.","Mix well and serve."], calories: 413, cookingTime:"20 minutes",servings:6),
    Recipe(recipeImageName: "CucumberSalad", recipeName: "Cucumber Salad", course: "Side Dish", cuisine: "Continental", ingredients: ["Cucumber","Red Onion","Vinegar","Honey","Dill"], instructions: ["First, slice the cucumber into thin rounds. You want thin slices so the cucumbers can easily absorb the dressing. You can use a mandoline, but it isn’t necessary. A sharp knife will do the job. You want the slices to be about ¼ to 1/8-inch thick.","In a medium bowl, whisk together the vinegar and honey (or sugar).","Add the cucumber slices, red onion, and dill to the bowl. Season with salt and black pepper.","Toss the salad until the cucumbers are well coated.","Let the salad sit for at least 10 minutes before serving. You can also chill for a couple of hours before serving to let the cucumbers marinate."], calories: 49, cookingTime: "5 minutes", servings: 2),
    Recipe(recipeImageName: "ArugulaApplePearSalad", recipeName: "Arugula Apple Pear Salad", course: "Side Dish", cuisine: "Continental", ingredients: ["Argula","Apple","Pear","Pomegranate seeds","Feta Cheese","Red wine vinegar", "Maple syrup", "Olive oil", "Salt","Pepper"], instructions: ["In a small mixing bowl, simply whisk together your ingredients (red wine vinegar, maple syrup, olive oil, salt and pepper) to combine.","Create a pillowy bed of arugula on the bottom of the dish. Next, sprinkle on your toasted pecan pieces.","Arrange your apples and pears in a visually interesting way. Now sprinkle on your feta and pomegranate arils for contrasting color.","Finally, use a spoon to drizzle on as much dressing as you like right before you serve the salad."], calories: 440, cookingTime: "10 minutes", servings: 4),
    Recipe(recipeImageName: "CabbageStirFry", recipeName: "Cabbage Stir Fry", course: "Main Dish", cuisine: "Asian", ingredients: ["Green Cabbage","Yellow Onion","Mushrooms","Carrots","Bell Pepper","Garlic","Ginger"], instructions: ["Slice the green cabbage,mushrooms,bell peppers and carrots.You can also cut the cabbage into wedges, then use a chef’s knife to slice the cabbage into strips.","Heat a large skillet or wok without any oil, and add the sliced mushrooms. Because mushrooms are so porous, they hold a lot of water. Saute them to allow the water to evaporate out of the mushrooms. In turn, they’re ready to soak in all the delicious flavor of the aromatics, and the sauce, and keep their earthiness.","Once the mushrooms have been browned, add a little oil and then the thinly sliced onions, along with the garlic and ginger. Stir well to make sure they don’t burn.","Once the onions are tender, add the red bell pepper to saute.","Pour in the stir-fry sauce and simmer until it begins to thicken slightly, about 2 minutes or so. The sauce simmers before the cabbage is added so that the cabbage isn’t overcooked.","Toss in the cabbage and shredded carrots. Saute for just a couple of minutes until tender, but not mushy. The sauce will continue to thicken, too. Finish with a squeeze of fresh lime."], calories: 190, cookingTime: "30 minutes", servings: 4)]
