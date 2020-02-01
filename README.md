---
page_type: sample & dataset
languages:
- matlab
description: "Exterior acoustic scattering data suitable for machine learning"
urlFragment: "acoustic-scattering-data"
---

# Acoustic Scattering Data

This repo contains synthetic acoustic scattering data for a random set of convex prism shapes represented as loudness fields in four octave bands, along with Matlab (TM) parsing and visualization sample scripts. The data was employed in the following paper.

Ziqi Fan, Vibhav Vineet, Hannes Gamper, Nikunj Raghuvanshi, <br/>**Fast Acoustic Scattering using Convolutional Neural Networks,** <br/>*IEEE ICASSP, 2020*

## Contents
For each type of dataset, there are folders for input binary image representing shape as occupancy grid and output as a four-channel image representing scattered spatial loudness maps in four octave bands, with pixels occupied by shape represented by `NaN` values. See the referenced paper for more details. 

| File/folder       | Description                         |
|-------------------|-------------------------------------|
| `Train`          | Training data (zipped)              |
| `Val`            | Validation data      |
| `Test`           | Test data      |
| `Stretch`        | Generalization tests on analytic shapes       |
| `Visualization/visualizeData.m` | Function illustrating parsing and visualizing the data. Takes two arguments: name of dataset and an array for indices of instances within the dataset|
| `README.md`       | This README file.                          |
| `CONTRIBUTING.md` | Guidelines for contributing to the sample. |
| `LICENSE`         | The license for the sample.                |

## Prerequisites

Scripts were tested on Matlab v2017b.

## Citing/Bibtex
If you employ the dataset, please cite the following paper.

```
@InProceedings{Fan_MLScattering:2020,
author = {Fan, Ziqi and Vineet, Vibhav and Gamper, Hannes and Raghuvanshi, Nikunj},
title = {Fast Acoustic Scattering using Convolutional Neural Networks},
booktitle = {IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP)},
year = {2020},
month = {May},
}
```

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
