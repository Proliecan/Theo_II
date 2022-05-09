arr = [5, 4, 7, 6, 4, 2, 4, 7, 72, 234, 43, 2, 123, 13]
search = 43

for a in arr:
    if a == search:
        print(arr.index(43))

# Proof of correcness
# ===================
# j := iteration (0...n)
# Loop invariant: The element is not in index 0...j-1.
# 
# 1. Initialization
# In loop 0, it is obviously not in the subarray before j ([<empty>])
#  
# 2. Maintenance
# The loop ends when it finds the element.
# So, if the loop does repeat, that implies it didn't find the element before.
# 
# 3. Termination
# The loop runs exactly len(arr) times. 
# Since len(arr) does not change, the algorithm terminates after n iterations. 