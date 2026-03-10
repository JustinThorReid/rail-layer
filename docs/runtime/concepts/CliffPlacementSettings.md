# Concept: CliffPlacementSettings

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Name of the cliff prototype. |
| `control` | `string` | no | Name of the autoplace control prototype. |
| `cliff_elevation_0` | `float` | no | Elevation at which the first row of cliffs is placed. The default is `10`, and this cannot be set from the map genera... |
| `cliff_elevation_interval` | `float` | no | Elevation difference between successive rows of cliffs. This is inversely proportional to 'frequency' in the map gene... |
| `cliff_smoothing` | `float` | no | Smoothing makes cliffs straighter on rough elevation but makes placement inaccurate. 0 is no smoothing, 1 is full smo... |
| `richness` | `MapGenSize` | no | Corresponds to 'continuity' in the GUI. This value is not used directly, but is used by the 'cliffiness' noise expres... |
