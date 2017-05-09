import itertools
def concat_large(arr):
    return permutations(arr)[-1]

def concat_small(arr):
    return permutations(arr)[0]

def permutations(arr):
    return sorted(list(map(lambda c : int(''.join(map(str, c))), 
        set(itertools.permutations(arr)))))

def concat(string):
    return [concat_small(string.split()), concat_large(string.split())]
