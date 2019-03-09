import random

def a():
    N = 1444329727510154393553799612747635457542181563961160832013134005088873165794135221

    js = [(-2^5)^3, (-2^5*3)^3, (-2^5*3*5*11)^3, (-2^6*3*5*23*29)^3]
    R = Integers(N)
    B1 = B2 = 10

    for j in js:
        a = R(j)/(R(1728)-R(j))
        cs = [random.randint(1,N) for _ in range(B1)]
        xs = [random.randint(1,N) for _ in range(B2)]
        for c in cs:
            E = EllipticCurve([3*a*c^2, 2*a*c^3])
            for x in xs:
                z = E.division_polynomial(N, R(x))
                if gcd(z,N) != 1:
                    print(j, c, x, z, gcd(z,N))
                    return

a()                    
