/*:
## App Exercise - A Functioning App
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a `steps` variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.
 
 A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` below that will increment `steps` by one and then print its value. Call the function multiple times and observe the printouts.
 */
var stp = 0
func incrementSteps(){
    stp+=1;
}
incrementSteps();
incrementSteps();
incrementSteps();
incrementSteps();

print("Result \(stp)");
//:  Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout.
let steps = 20000;
let goal = 25000;

func progressUpdate(current step:Int, final goal:Int){
    if(((goal*10)/100) >= step){
        print("You're off to a good start.")
    }
    else if(goal/2 >= step){
        print("You're over halfway there!")
    }
    else if((goal*90)/100 >= step){
        print("You're almost there!");
    }
    else{
        print("You beat your goal!");
    }
}

progressUpdate(current: steps, final: goal);
/*:
[Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)
 */
