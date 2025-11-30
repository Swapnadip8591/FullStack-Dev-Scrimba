const exerciseTime = 70

const message = exerciseTime < 30 ? 'Try Harder' : (exerciseTime < 60 ? 'Doing Good' : 'Excellent')
//                 condition1(if)      truthy        else if condition     truthy     falsy
console.log(message)