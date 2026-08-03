"@title: Gas Simulation in a Maze
@description: Demonstrates particle diffusion and collision dynamics through a simple multi-wall maze layout.
@category: Physics
@tags: Ideal Gas ; Maze ; Diffusion ; Thermodynamics
@author: Gemini AI
@class: GasSimulation"

GasSimulation new
    fenceOrigin: 0@0 corner: 400@300;
    
    "Outer/Inner Maze Walls"
    addWallFrom: 100@0 to: 100@200;
    addWallFrom: 200@300 to: 200@100;
    addWallFrom: 300@0 to: 300@220;
    
    "Baffles/Obstacles"
    addWallFrom: 0@150 to: 50@150;
    addWallFrom: 150@50 to: 200@50;
    
    addMolecules: 100;
    view