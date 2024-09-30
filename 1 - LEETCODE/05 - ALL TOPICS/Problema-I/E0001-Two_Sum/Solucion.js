/*
    ? Problema 0001 - Suma de Dos
    * Autor : Marcos Yana 
*/

// ! Primera Solucion

// inicio leetcode
const twoSum = function (nums, target){
    const numArray = new Map();
    for (let i = 0; i < nums.length; i++) {
        const almacena = nums[i];
        const complemento = target - almacena;
        if(numArray.has(complemento)){
            return [numArray.get(complemento), i];
        }
        numArray.set(almacena, i);
    }
}
//fin leetcode

// ? Verificamos en consola

console.log(twoSum([2, 7, 11, 15], 9)); // [0, 1]
console.log(twoSum([3, 2, 4], 6)); // [0, 1]
console.log(twoSum([3, 3], 6)); // [0, 1]



