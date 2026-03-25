# FreeCAD Setup

A simple, clean FreeCAD setup that sets sane defaults and mimics Onshape in navigation, shortcuts, and workflow.

## Installation

Copy `config/user.cfg` to your FreeCAD user config directory. Alternatively, modify `setup.sh` to your needs and use that.

## Changes

### Navigation

| Setting | Value | Notes |
|---|---|---|
| Navigation style | TinkerCAD | Closest to Onshape mouse navigation |
| Orbit style | Trackball Classic | Industry standard CAD orbit style |
| Rotation mode | Object Center | Cursor first, then object center |
| Pick radius | 10px | Easier selection |
| Marker size | 11 | Easier to click constraint/sketch points |

### Startup & UI

- Opens directly into **Part Design**
- Creates a new document on launch
- **Workbench selector** set to tabs
- Reduced toolbar clutter
- Toolbar icon size set to 32px
- Decimal separator follows system locale

### Workbenches and Toolbar Layout

Workbenches are ordered by most common use. Rarely-used workbenches are hidden.

Toolbar reduced to two lines.

### Other Settings

- Sketcher toolbar simplified
- Sketcher cursor coordinates hidden
- Notification popup-time reduced

---

## Keyboard Shortcuts

The default FreeCAD shortcuts are terrible in regards to UX, thus the most used Sketcher and Part Design shortcuts are changed to be single-key, simple to remember, and consistent with Onshape where possible. Many default FreeCAD shortcuts (especially multi-key view shortcuts) are cleared to avoid conflicts. 

### Part Design

| Key | Command |
|---|---|
| `S` | New Sketch |
| `E` | Pad (extrude) |
| `C` | Pocket (cut) |
| `R` | Revolution |
| `G` | Groove |
| `H` | Hole |
| `F` | Fillet |
| `P` | Pattern (Multi-Transform) |
| `T` | Transform (Move/Rotate) |

### Sketcher

| Key | Command |
|---|---|
| `L` | Polyline |
| `R` | Center Rectangle |
| `C` | Circle |
| `F` | Point Fillet |
| `U` | External Geometry (project edges) |
| `X` | Trim |
| `Q` | Toggle Construction Mode |
| `Q, Q` | Toggle Driving Constraint |
| `I` | Coincident Constraint |
| `H` | Horizontal Constraint |
| `V` | Vertical Constraint |
| `A` | Auto Horizontal/Vertical Constraint |
| `T` | Tangent Constraint |
| `E` | Equal Constraint |
| `S` | Symmetric Constraint |
| `B` | Parallel Constraint |
| `N` | View Sketch (fit sketch to screen) |
| `N, N` | View Section (cut away model in sketch) |
