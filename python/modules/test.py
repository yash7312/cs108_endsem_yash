
import numpy as np
from matplotlib import pyplot as plt

# Seeding for reproducibility

rs = np.random.RandomState(12345)
# sampling from each of the six distributions
n = 1000000
beta = rs.beta(4,20, size = n)
print(beta)
# plotting histograms for each of the distributions
# plt.subplot(3,2,1)


# adjust the sub-plots to fit the titles and labels
plt.tight_layout()
# save the plot as plot.png
plt.savefig('plot.png')
