road(borhan,br, 9).
road(lota,borhan, 3).
road(lota,br, 6).
road(lota,poly, 5).
road(poly,lota, 5).
road(muradchottor,lota, 4).
road(muradchottor,poly, 8).
get_road(Start, End, Visited, Result) :-
    get_road(Start, End, [Start], 0, Visited, Result).
get_road(Start, End, Waypoints, DistanceAcc, Visited, TotalDistance) :-
    road(Start, End, Distance),
    reverse([End|Waypoints], Visited),
    TotalDistance is DistanceAcc + Distance.
get_road(Start, End, Waypoints, DistanceAcc, Visited, TotalDistance) :-
    road(Start, Waypoint, Distance),
    \+ member(Waypoint, Waypoints),
    NewDistanceAcc is DistanceAcc + Distance,
    get_road(Waypoint, End, [Waypoint|Waypoints], NewDistanceAcc, Visited, TotalDistance).
