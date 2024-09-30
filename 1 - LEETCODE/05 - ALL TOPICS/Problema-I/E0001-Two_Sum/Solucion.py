"""
    ? Problema 0001 - Suma de Dos
    * Autor : Marcos Yana 
    
"""


# ! Primera Solucion
from typing import List

class Solution:
    def twoSum (self, nums: List[int],target: int) -> List[int]:
        almacena = {}
        for i, x in enumerate(nums):
            complemento = target - x
            if complemento in almacena:
                return [almacena[complemento],i]
            almacena[x] = i
            
# ? Verificamos en consola

solucion = Solution()
print(solucion.twoSum(nums=[2, 7, 11, 15], target=9))
print(solucion.twoSum(nums=[3, 2, 4], target=6))
print(solucion.twoSum(nums=[3, 3], target=6))

