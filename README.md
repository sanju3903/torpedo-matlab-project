#  Torpedo Trials – MATLAB Online Project

This MATLAB application is designed to analyze and visualize torpedo trial data using an interactive menu-driven interface. It was developed and tested using **MATLAB Online** and supports reading data from an Excel sheet containing parameters from multiple test runs.

##  Project Structure

| File | Description |
|------|-------------|
| `torpedo_menu_app.m` | Main MATLAB script that loads data and displays a menu for plotting |
| `Torpedo_Trials_Report.xlsx` | Excel file containing 20 torpedo trial records |
| `README.md` | This file – explains the project |

---

## Features

- Interactive menu for selecting trial parameters
- Plots variables like speed, water depth, distance, and accuracy
- Supports overlaying multiple plots (`hold on`) and resetting plots
- Uses trial number as input for plot title labeling
- Easy to run in MATLAB Online or Desktop

---

## 🔧 How to Use

### 1. Open MATLAB Online
Go to [https://matlab.mathworks.com](https://matlab.mathworks.com) and upload:
- `torpedo_menu_app.m`
- `Torpedo_Trials_Report.xlsx`

### 2. Run the Script
In the Command Window:
```matlab
torpedo_menu_app
