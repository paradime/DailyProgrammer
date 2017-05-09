import itertools
def concat_large(arr):
    return permutations(arr)[-1]

def concat_small(arr):
    return permutations(arr)[0]

def permutations(arr):
    perms = []
    for c in itertools.permutations(arr):
        perms.append(int(''.join(map(str, c))))
    return sorted(perms)

def concat(string):
    return [concat_small(string.split()), concat_large(string.split())]
