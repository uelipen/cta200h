import numpy as np
import matplotlib
matplotlib.use("PDF")
import pylab as plt

#
# Read particle positions (x, y, z)
#

positions = np.fromfile("particles.bin", dtype="float32", count=-1)

#
# Rearrange positions so that it is of shape (3, num_particles)
#

positions = positions.reshape(positions.shape[0]/3, 3).T

#
# Make a scatter plot in (x, z) plane
#

plt.figure(1)

plt.scatter(positions[0], positions[2], s=3, edgecolors="none")

plt.axes().set_xlim((0., 90.))
plt.axes().set_ylim((0., 90.))

plt.xlabel("x Coordinate")
plt.ylabel("y Coordinate")
plt.title("Projection in xz Plane")

plt.savefig("projection.pdf")
plt.close()

