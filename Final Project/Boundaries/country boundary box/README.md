# Boundary Rectangles

This folder stores approximate rectangular boundaries for the countries and regions mentioned in the project notes.

## Files

- `country_rectangles.json`: JSON list of bounding boxes in `EPSG:4326`.

## Coordinate order

Each `bbox` uses:

- `west`
- `south`
- `east`
- `north`

Example:

```json
[25.7, 35.8, 45.1, 42.2]
```

That means:

- west longitude: `25.7`
- south latitude: `35.8`
- east longitude: `45.1`
- north latitude: `42.2`

## Use

These rectangles are meant for filtering FIRMS points after download, or for selecting a subregion before mapping and analysis.
