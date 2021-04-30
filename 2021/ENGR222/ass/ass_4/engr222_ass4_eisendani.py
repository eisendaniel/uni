# %% 
from sympy import symbols,linsolve, Matrix


# %% 3
x,y,z,w = symbols("x,y,z,w")

aug = Matrix([[5,-1,2,3,7],[-1,3,2,0,-2],[0,4,2,-1,1],[2,0,-3,7,-3]])
aug
# %%
linsolve(aug,x,y,z,w)


# %% 4
x,y,z,w = symbols("x,y,z,w")

aug = Matrix([[1,-1,2,4,2],[3,-3,1,2,1],[2,-1,1,0,-1],[2,-6,1,10,9]])
aug
# %%
linsolve(aug,x,y,z,w)

# %% 5
x,y,z,w = symbols("x,y,z,w")

aug = Matrix([[1,2,2,3,0],[-4,-8,-8,-9,0],[2,4,1,0,3],[1,2,-2,-4,4]])
aug

# %%
linsolve(aug,x,y,z,w)


# %% 6
aug = Matrix([[1,0,0,-1,0],[0,2,1,-3,0],[0,0,2,-3,0]])
aug

# %%
linsolve(aug)

# %% 
Matrix([4,3,6,4])
# %% 7
aug = Matrix([[1,0,-1,0,0],[4,0,0,-2,0],[0,2,-2,-1,0]])
aug

# %%
linsolve(aug)
# %%
Matrix([1,2,1,2])

# %%
