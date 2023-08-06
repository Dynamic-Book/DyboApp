# Introduction

The cashier register is a boring computer designed for efficiency. The
Dynabook, both software and hardware, wants to bring this efficiency
to teachers and students to manage their job of teaching and learning.

The Dynabook App is the main user application of the Dynabook
device. It is through this app that teachers and students interact the
most. Its features are interconnected to maximize user comfort and to
save time. It anticipates the needs of the user according to their
location and time of use, at home, school, in which class, and with
which students.

# Installation

Instructions to install the Dynabook.app in a Cuis-Smalltalk developer
environment.

1. Set up your Cuis-Smalltalk dev environment
```
mkdir Cuis
cd Cuis
# Install Cuis image and packages
git clone https://github.com/hilaire/dynabook.git
git clone --depth 1 https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev.git
cd Cuis-Smalltalk-Dev
./clonePackageRepos.sh
./pullAllRepos.sh
```
2. Install Virtual Machine
```
wget -O cogspur.tgz https://github.com/OpenSmalltalk/opensmalltalk-vm/releases/latest/download/squeak.cog.spur_linux64x64.tar.gz
tar -zxvf cogspur.tgz
mv ./sqcogspur64linuxht ./VM
```
3. Start the Dynabook.app IDE
```
./dynabook/startIDE.sh
```
A new image dynabookIDE.image is built. In the image execute
`DyBSystem beDevelopment`, execute `Dynabook new` (to come) to start the
application.

Have an interesting exploration!

## License

Copyright Hilaire Fernandes 2023