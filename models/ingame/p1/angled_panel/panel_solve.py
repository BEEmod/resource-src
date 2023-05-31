"""Brute forces calculations to determine the position of the pistons required for an angle.


Radius is the distance the piston is from the hinge side of the panel.
"""

import math

ITERATION = 1000
COUNT = 300
FIXED_PIST = 32  # Distance from rotating part to the panel top.

def solve(angle):
    best_guess = 64.0
    wid = 128.0
    
    cos = math.cos(math.radians(angle))
    sin = math.sin(math.radians(angle))
    
    for it in range(ITERATION):
        diff = math.inf
        center = best_guess
        mins = max(0.0, center - wid/2)
        for off in range(0, COUNT):
            guess = mins + (off/COUNT) * wid
            hinge = guess * cos + FIXED_PIST * sin
            new_diff = abs(hinge - guess)
            if new_diff < diff:
                diff = new_diff
                best_guess = guess
        if diff == math.inf:
            print(f'{ang} #{it}: FAIL (+-{wid})')
            return
        #print(f'{ang} #{it}: {guess} (+-{wid})')
        wid *= 0.25
        
    radius = best_guess
    hinge_h = radius * sin
    pist_y = FIXED_PIST * cos
    rise = hinge_h - pist_y

    return radius - 64, rise
    
    
for ang in [0, 30, 45, 60, 90]:
    answer = solve(ang)
    print(f'{ang}: {answer}')
    #print('\n\n')
