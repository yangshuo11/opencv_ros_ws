import math

# ml00 {R:0.34, G:0.42, B:0.83}
# ml01 {R:0.85, G:0.85, B:0.44}
# ml10 {R:0.22, G:0.70, B:0.71}
# ml11 {R:0.75, G:0.51, B:0.58}
# mh00 {R:0.39, G:0.79, B:0.06}
# box1 <{R:0.84, G:0.21, B:0.42},{R:1.00, G:0.36, B:0.06}>
# box2 <{R:0.84, G:0.21, B:0.42},{R:0.88, G:0.64, B:1.00}>
# box3 <{R:0.84, G:0.21, B:0.42},{R:0.41, G:0.64, B:1.00}>

def rgb2hsv(r, g, b):
    mx = max(r, g, b)
    mn = min(r, g, b)
    m = mx - mn
    if mx == mn:
        h = 0
    elif mx == r:
        if g >= b:
            h = ((g - b)/m)*60
        else:
            h = ((g - b)/m)*60 + 360
    elif mx == g:
        h = ((b - r)/m)*60 + 120
    elif mx == b:
        h = ((r - g)/m)*60 + 240
    if mx ==0 :
        s = 0
    else:
        s = m / mx
    v = mx

    H = h / 2
    S = s * 255.0
    V = v * 255.0

    return H, S, V

if __name__ == '__main__':
    print(rgb2hsv(0.43,0.51,0.58)) # ml11 {R:0.43, G:0.51, B:0.58} -> (104.0, 65.94827586206895, 147.89999999999998)