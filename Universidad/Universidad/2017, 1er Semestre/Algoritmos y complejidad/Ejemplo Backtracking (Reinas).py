queen = [0 for c in range(8)] #Row of queen in column c
rfree = [True for r in range(8)] #Row rfree
du = [True for i in range(15)] # Diagonal i = r + 7 - c
dd = [True for i in range(15)] # Diagonal i = r + cfree
def solve(n):
    global solutions
    if n == 8:
        solutions += 1
        linea = str(solutions) + " : " 
        for r in range(8):
            if r < 7:
                end = " "
            else:
                end = "\n"
            linea += str(queen[r]+1) + end
        print(linea)
            
    else:
        for r in range(8):
            if rfree[r] and dd[n + r] and du[n + 7 - r]:
                queen[n] = r
                rfree[r] = dd[n + r] = du[n + 7 - r] = False
                solve(n + 1)
                rfree[r] = dd[n + r] = du[n + 7 - r] = True
solutions = 0
solve(0)
print( )
print(solutions, "solutions")
