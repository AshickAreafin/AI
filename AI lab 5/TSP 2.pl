get_road(Start, End, Waypoints, DistanceAcc, Visited, TotalDistance) :-
    road(Start, Waypoint, Distance),
    \+ member(Waypoint, Waypoints),
    NewDistanceAcc is DistanceAcc + Distance,
    get_road(Waypoint, End, [Waypoint|Waypoints], NewDistanceAcc, Visited, TotalDistance).