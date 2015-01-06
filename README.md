CLLocation-DirectionFromLocation
================================

Let's say you have two CLLocation objects, and you want to determine the cardinal direction from one to the other (i.e. Location 1 is south-west of Location 2)

```
CLLocationCardinalDirection direction = [location1 directionfromLocation:location2];
```

CLLocationCardinalDirections can be the following: 
- North
- South
- East
- West
- NorthEast
- NorthWest
- SouthEast
- SouthWest