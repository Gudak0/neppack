#priority 997
import mods.gregtech.material.Material;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.data.IData;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;

function textToIngredients(ingredients as IIngredient[][],
                           output as IItemStack,
                           recipe as string[],
                           replacements as IIngredient[string]) as IIngredient[][] {

    for i, str in recipe {
        for j in 0 .. str.length {
            var item = str[j];
            if " " != item { // blanks are nulls, ignore them
                ingredients[i][j] = replacements[item];
            }
        }
    }

    return ingredients;
}

function makeShapedFA(name as string,
                      output as IItemStack,
                      recipe as string[],
                      replacements as IIngredient[string],
                      recipeFunction as IRecipeFunction,
                      recipeAction as IRecipeAction) {

    var ingredients =
        [[null,null,null],
         [null,null,null],
         [null,null,null]] as IIngredient[][];

    recipes.addShaped(name, output,
        textToIngredients(ingredients, output, recipe, replacements),
        recipeFunction, recipeAction);
}

// Support varying arities so RecipeFunction/Action may be optionally used
function makeShapedF(name as string,
                     output as IItemStack,
                     recipe as string[],
                     replacements as IIngredient[string],
                     recipeFunction as IRecipeFunction) {
    makeShapedFA(name, output, recipe, replacements, recipeFunction, null);
}

function makeShaped(name as string,
                    output as IItemStack,
                    recipe as string[],
                    replacements as IIngredient[string]) {
    makeShapedF(name, output, recipe, replacements, null);
}


function makeShapeless3FA(name as string,
                          output as IItemStack,
                          recipe as string[],
                          replacements as IIngredient[string],
                          recipeFunction as IRecipeFunction,
                          recipeAction as IRecipeAction) {

    var ingredients = [null,null,null,
                       null,null,null,
                       null,null,null] as IIngredient[];

    for i, str in recipe {
        for j in 0 .. str.length {
            var item = str[j];
            if " " != item { // blanks are nulls, ignore them
                ingredients[str.length*i+j] = replacements[item];
            }
        }
    }

    recipes.addShapeless(name, output, ingredients, recipeFunction, recipeAction);
}

// Support varying arities so RecipeFunction/Action may be optionally used
function makeShapeless3F(name as string,
                         output as IItemStack,
                         recipe as string[],
                         replacements as IIngredient[string],
                         recipeFunction as IRecipeFunction) {
    makeShapeless3FA(name, output, recipe, replacements, recipeFunction, null);
}

function makeShapeless3(name as string,
                        output as IItemStack,
                        recipe as string[],
                        replacements as IIngredient[string]) {
    makeShapeless3F(name, output, recipe, replacements, null);
}

function makeCompacting3(name as string,
                         output as IItemStack,
                         input as IIngredient) {
    recipes.addShapeless(name, output,
        [input,input,input,
         input,input,input,
         input,input,input] as IIngredient[]);
}
 
