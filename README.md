# ComplexNumber

ComplexNumber class to perform complex operations.
You can take a look at the source code [here](https://github.com/Enzo1603/ComplexNumber).

## Installation

```bat
pip install complex-number
```

## Usage example

```python
from complex_number import ComplexNumber
import math

z1 = Complex(1, 2)  # real, imag
z2 = Complex.from_polar(2, math.pi)  # modulus, argument

print(z1)
z2.print(4)  # set precision (defaults to 2)
z2.print_polar(4)  # set precision (defaults to 2)

print(z1.real)
z1.real = 5

print(z1.imag)
z1.imag = -3

print(z1.modulus)
z1.modulus = 4

print(z1.argument)
z1.argument = math.pi / 2
```

### Math operations

```python
print(z1 + z2)
z1 += z2

print(z1 - z2)
z1 -= z2

print(z1 * z2)
z1 *= z2

print(z1 / z2)
z1 /= z2

print(z1 ** 3)
z1 **= 3

print(z1.root())  # defaults to 2
print(z1.root(3)) # returns a tuple of ComplexNumbers with all solutions

print(+z1)
print(-z1)
```

### Additional Operations

```python
print(z1.conjugate())

print(z1.polar())  # returns dictionary with the keys: modulus and argument.

print(ComplexNumber.to_cartesian(modulus=2, argument=math.pi))  # returns tuple with real and imag part.
```

### Check for Equality

```python
print(z1 == z2)  # true if real and imag parts are both equal to each other
```
