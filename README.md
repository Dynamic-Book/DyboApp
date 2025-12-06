# Introduction

The cash register is a boring computer designed for efficiency. The
Dybo, both software and hardware, wants to bring this efficiency
to teachers and students to manage their job of teaching and learning.

The DyboApp is the main user application of the Dybo
device. It is through this app that teachers and students interact the
most. Its features are interconnected to maximize user comfort and to
save time. It anticipates the needs of the user according to their
location and time of use, at home, school, in which class, and with
which students.

For more insights about the project, [watch this
presentation](https://youtu.be/DBjJrAZSEHs?si=y1hHnFLp9mI_8yN9) at The
Smalltalk 2023 Fast event in Buenos Aires.

# Installation

Instructions to install the DyboApp in a Cuis-Smalltalk developer
environment.

## 1. Set up your Cuis-Smalltalk environment.
```bash
mkdir Cuis
cd Cuis
# Install Cuis image and packages
git clone --depth 1 https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev
git clone --depth 1 https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-UI
git clone --depth 1 https://github.com/Dynamic-Book/NeoCSV
git clone --depth 1 https://github.com/Cuis-Smalltalk/SVG
git clone --depth 1 https://github.com/Cuis-Smalltalk/Numerics
git clone --depth 1 https://github.com/Cuis-Smalltalk/OSProcess

cd Cuis-Smalltalk-Dev
git clone --depth 1 https://github.com/Dynamic-Book/DyboLib
git clone --depth 1 https://github.com/Dynamic-Book/DyboApp
```

Optionally, to be able to import and annotate PDF document, install
the needed package **poppler-utils**. On Debian based distribution:
```bash
sudo apt install poppler-utils
```

## 2. Prepare the data sample.

This set preset data, for fast testing. These data is created directly
from the DyboApp, with the settings tool (the gear button at the right
of the toolbar)

```bash
cd DyboApp/resources/data
cp data_sample.obj data.obj
cd -
```

## 3. Start the DyboApp IDE.
```
cd Cuis/Cuis-Smalltalk-Dev
./DyboApp/startIDE.sh
```

A new image dyboIDE.image is built. This is the development
environment for the DyboApp.

In the Workspace window, execute the statement `DySystem
beDevelopment`, it will set up the paths to the resources to test
appropriately the application.

Then, execute `Dybo load` to start the application with the existing
data sample.

Alternatively, execute `Dybo new` to start the application with no initial
data, you will have to create it with the settings tool (the gear
button at the right in the toolbar).

Have an interesting exploration!

# License

Copyright 2023--2025 Hilaire Fernandes 
