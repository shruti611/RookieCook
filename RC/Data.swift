//
//  Data.swift
//  RC
//
//  Created by Shruti Sachdeva on 24/02/24.
//

import Foundation

struct Recipe :CustomStringConvertible {
    
    
    var recipeImageName:String
    var recipeName:String
    var course:String
    var cuisine:Cuisines
    var ingredients:[String]
    var instructions:[String]
    var calories:Int
    var cookingTime:String
    var servings:Int
    var favourite:Bool
    var description: String {
        return "The recipe \(self.recipeName) uses \(self.ingredients.count) ingredients"
    }
    
}
enum Cuisines:Int {
    case Continental = 0
    case Asian = 1
    case Thai = 2
    
    static func index(of cuisine:Cuisines)->Int{
        let allCuisines = [Cuisines.Continental,Cuisines.Asian,Cuisines.Thai]
        return allCuisines.firstIndex(of:cuisine)!
    }
    static func element(at index:Int)->Cuisines {
        let allCuisines = [Cuisines.Continental,Cuisines.Asian,Cuisines.Thai]
        
        return allCuisines[index]
       
    }
    
    
}


var recipes = [
    Recipe(recipeImageName: "PenneAlfredoPasta", recipeName: "Penne Alfredo Pasta",course: "Main Dish",cuisine: Cuisines.Continental, ingredients: ["2 tbsp butter","3 tbsp flour","3 cloves garlic minced","2 cups of milk","½ tsp dried basil","½ tsp Dried Oregano","½  cup Parmesan Cheese shredded","1 tsp Salt and pepper","400 gm Penne Pasta cooked","¼ cup Parsley fresh or dried","¼ cup Parmesan Cheese shredded"], instructions: ["In a pan, add butter. Once it melts, add the chopped garlic and sauté it.","Once it is soft, add half the flour and mix it. Then add the rest of the flour and mix it again.","Add the milk little at a time and keep stirring to avoid lumps. As the sauce begins to thicken, add oregano, basil, salt and pepper.","Stir well. Then add Parmesan cheese and mix until it melts.","Take a bowl and add the cooked penne pasta to it.","Then pour the sauce over the pasta.","Add extra Parmesan cheese and sprinkle fresh parsley.","Mix well and serve."], calories: 413, cookingTime:"20 minutes",servings:6,favourite: false),
    Recipe(recipeImageName: "CucumberSalad", recipeName: "Cucumber Salad", course: "Side Dish", cuisine: Cuisines.Continental, ingredients: ["Cucumber","Red Onion","Vinegar","Honey","Dill"], instructions: ["First, slice the cucumber into thin rounds. You want thin slices so the cucumbers can easily absorb the dressing. You can use a mandoline, but it isn’t necessary. A sharp knife will do the job. You want the slices to be about ¼ to 1/8-inch thick.","In a medium bowl, whisk together the vinegar and honey (or sugar).","Add the cucumber slices, red onion, and dill to the bowl. Season with salt and black pepper.","Toss the salad until the cucumbers are well coated.","Let the salad sit for at least 10 minutes before serving. You can also chill for a couple of hours before serving to let the cucumbers marinate."], calories: 49, cookingTime: "5 minutes", servings: 2,favourite: false),
    Recipe(recipeImageName: "ArugulaApplePearSalad", recipeName: "Arugula Apple Pear Salad", course: "Side Dish", cuisine: Cuisines.Continental, ingredients: ["Argula","Apple","Pear","Pomegranate seeds","Feta Cheese","Red wine vinegar", "Maple syrup", "Olive oil", "Salt","Pepper"], instructions: ["In a small mixing bowl, simply whisk together your ingredients (red wine vinegar, maple syrup, olive oil, salt and pepper) to combine.","Create a pillowy bed of arugula on the bottom of the dish. Next, sprinkle on your toasted pecan pieces.","Arrange your apples and pears in a visually interesting way. Now sprinkle on your feta and pomegranate arils for contrasting color.","Finally, use a spoon to drizzle on as much dressing as you like right before you serve the salad."], calories: 440, cookingTime: "10 minutes", servings: 4,favourite: false),
    Recipe(recipeImageName: "CabbageStirFry", recipeName: "Cabbage Stir Fry", course: "Main Dish", cuisine: Cuisines.Asian, ingredients: ["Green Cabbage","Yellow Onion","Mushrooms","Carrots","Bell Pepper","Garlic","Ginger"], instructions: ["Slice the green cabbage,mushrooms,bell peppers and carrots.You can also cut the cabbage into wedges, then use a chef’s knife to slice the cabbage into strips.","Heat a large skillet or wok without any oil, and add the sliced mushrooms. Because mushrooms are so porous, they hold a lot of water. Saute them to allow the water to evaporate out of the mushrooms. In turn, they’re ready to soak in all the delicious flavor of the aromatics, and the sauce, and keep their earthiness.","Once the mushrooms have been browned, add a little oil and then the thinly sliced onions, along with the garlic and ginger. Stir well to make sure they don’t burn.","Once the onions are tender, add the red bell pepper to saute.","Pour in the stir-fry sauce and simmer until it begins to thicken slightly, about 2 minutes or so. The sauce simmers before the cabbage is added so that the cabbage isn’t overcooked.","Toss in the cabbage and shredded carrots. Saute for just a couple of minutes until tender, but not mushy. The sauce will continue to thicken, too. Finish with a squeeze of fresh lime."], calories: 190, cookingTime: "30 minutes", servings: 4,favourite: true),
    Recipe(recipeImageName: "PadThai", recipeName: "Pad Thai", course: "Main Dish", cuisine: Cuisines.Thai, ingredients: ["Zucchini","Soy Sauce","Rice Vinegar","Chili Garlic Sauce","Honey","Eggs","Carrot","Bean Sprouts","Edamame","Garlic","Green Onions","Cilantro","Lime","Peanuts"], instructions: ["In a small bowl, mix the sauce ingredients.","Spiralize the zucchini into zoodles (or cut into ribbons using a Y-shaped vegetable peeler). Set aside.","Next, sauté the garlic, and scramble the eggs until they just begin to set.","Add the zucchini noodles, bean sprouts, carrots, edamame, green onions, and sauce. Then, cook until the veggies are crisp-tender.","Garnish with peanuts, cilantro, and lime wedges."], calories: 350, cookingTime: "30 minutes", servings: 2, favourite: true),
    Recipe(recipeImageName: "SesameNoodles", recipeName: "Sesame Noodles", course: "Side Dish", cuisine: Cuisines.Asian, ingredients: ["400 g Miki Noodles or sub with udon noodles","100 g carrots julienned","140 g yu choy or bok choy, roughly chopped into 1.5-inch segments","2 green onion finely chopped","3 cloves garlic minced", "5 ml vegetable oil or any neutral oil","15 ml kecap manis or sweet soy sauce", "15 ml dark soy sauce","8 g white granulated sugar","5 ml sesame oil","3 g cornstarch or potato starch", "5 ml Shaoxing Cooking Wine or Dry Sherry","2 g sesame seeds", "60 ml vegetable broth or water"], instructions: ["In a small bowl, combine noodle sauce ingredients. Set aside.","In a large bowl, add fresh noodles and pour boiling hot water over top. Soak until loosened for 30 seconds. Strain and set aside.","Heat vegetable oil in a large pan on low-medium heat. Fry garlic and green onions. Cook for 10 seconds until fragrant.","Increase to medium-high heat, add carrots and cook for 2 minutes until softened.","Then toss in yu choy or bok choy and cook for 30 seconds until softened or wilted.","Add noodles and noodle sauce.Toss until combined and remove off heat immediately once combined."], calories: 849, cookingTime: "25 minutes", servings: 4, favourite: false)]
