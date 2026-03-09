from pymatgen.io.vasp.outputs import Eigenval
from pymatgen.io.vasp.inputs import Poscar

eig = Eigenval('EIGENVAL')
print(eig.eigenvalue_band_properties)

poscar = Poscar.from_file('POSCAR')
L = poscar.structure.lattice
print("Lattice constants (a, b, c) in Å:", L.abc)
print("Angles (alpha, beta, gamma) in °:", L.angles)