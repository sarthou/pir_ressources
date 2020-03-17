#############
### AREA ###
#############

rosservice call /area_manager/add_area "myArea:
  id: 2
  name: 'room_O_office'
  myOwner: ''
  areaType: 'room'
  factType: ''
  entityType: 'entities'
  isCircle: false
  center: {x: 0.0, y: 0.0, z: 0.0}
  ray: 0.0
  height: 0.0
  poly:
    points:
    - {x: 6.5, y: 9.1, z: 0.0}
    - {x: 6.5, y: 13.2, z: 0.0}
    - {x: 9.4, y: 13.2, z: 0.0}
    - {x: 9.4, y: 9.1, z: 0.0}
  zmin: 0.0
  zmax: 2.5
  enterHysteresis: 0.01
  leaveHysteresis: 0.01
  insideEntities_: ['']
  upcomingEntities_: ['']
  leavingEntities_: ['']"

rosservice call /area_manager/add_area "myArea:
  id: 1
  name: 'room_B_bedroom'
  myOwner: ''
  areaType: 'room'
  factType: ''
  entityType: 'entities'
  isCircle: false
  center: {x: 0.0, y: 0.0, z: 0.0}
  ray: 0.0
  height: 0.0
  poly:
    points:
    - {x: 2.35, y: 9.1, z: 0.0}
    - {x: 6.3, y: 9.1, z: 0.0}
    - {x: 6.3, y: 13.2, z: 0.0}
    - {x: 2.35, y: 13.2, z: 0.0}
  zmin: 0.0
  zmax: 2.5
  enterHysteresis: 0.01
  leaveHysteresis: 0.01
  insideEntities_: ['']
  upcomingEntities_: ['']
  leavingEntities_: ['']"

rosservice call /area_manager/add_area "myArea:
  id: 3
  name: 'room_l_living_room'
  myOwner: ''
  areaType: 'room'
  factType: ''
  entityType: 'entities'
  isCircle: false
  center: {x: 0.0, y: 0.0, z: 0.0}
  ray: 0.0
  height: 0.0
  poly:
    points:
    - {x: 2.35, y: 9.1, z: 0.0}
    - {x: 9.4, y: 9.1, z: 0.0}
    - {x: 9.4, y: 5, z: 0.0}
    - {x: 2.35, y: 5, z: 0.0}
  zmin: 0.0
  zmax: 2.5
  enterHysteresis: 0.01
  leaveHysteresis: 0.01
  insideEntities_: ['']
  upcomingEntities_: ['']
  leavingEntities_: ['']"
