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

1. Set up your Cuis-Smalltalk environment
```bash
mkdir Cuis
cd Cuis
# Install Cuis image and packages
git clone --depth 1 https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev
git clone https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-UI
git clone https://github.com/Dynamic-Book/NeoCSV

cd Cuis-Smalltalk-Dev
git clone https://github.com/Dynamic-Book/DyboApp
```

2. Start the DyboApp IDE
```
cd Cuis/Cuis-Smalltalk-Dev
./DyboApp/startIDE.sh
```
A new image dyboIDE.image is built. In the image execute
`DySystem beDevelopment`, execute `Dynabook new` (to come) to start the
application.

Have an interesting exploration!

## License

Copyright Hilaire Fernandes 2023, 2024
