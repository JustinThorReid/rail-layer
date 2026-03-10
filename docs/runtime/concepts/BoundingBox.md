# Concept: BoundingBox

Two positions, specifying the top-left and bottom-right corner of the box respectively. Like with
[MapPosition](runtime:MapPosition), the names of the members may be omitted. When read from the
game, the third member `orientation` is present if it is non-zero.

**Type:** `{left_top: MapPosition, orientation: RealOrientation, right_bottom: MapPosition} | (MapPosition, MapPosition)`
