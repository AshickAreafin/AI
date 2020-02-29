road(savar,mirpur, 10).
road(mirpur,savar, 10).

road(savar,gabtoli, 6).
road(gabtoli,savar, 6).

road(gabtoli,mirpur, 3).
road(mirpur,gabtoli, 3).

road(shahbag,mirpur, 3).
road(mirpur,shahbag, 3).

road(farmgate,mirpur, 1).
road(mirpur,farmgate, 1).

road(farmgate,shahbag, 1).
road(shahbag,farmgate, 1).

road(farmgate,shaymoli, 9).
road(shaymoli,farmgate, 9).

road(gabtoli,shaymoli, 6).
road(shaymoli,gabtoli, 6).

road(motijhil,shaymoli, 4).
road(shaymoli,motijhil, 4).

road(motijhil,shahbag, 8).
road(shahbag,motijhil, 8).


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