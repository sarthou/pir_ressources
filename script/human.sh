##########
# Humans
#########

rosservice call /toaster_simu/add_entity "id: 'alex'
name: 'Alexia'
type: 'Human'
ownerId: ''"

rosservice call /toaster_simu/add_entity "id: 'alex_head'
name: 'head'
type: 'joint'
ownerId: 'alex'"

rosservice call /toaster_simu/set_entity_pose "id: 'alex_head'
ownerId: 'alex'
type: 'joint'
pose:
  position:
    x: 0.03
    y: 0.0
    z: 1.5
  orientation:
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0"

rosservice call /toaster_simu/add_entity "id: 'alex_rhand'
name: 'rightHand'
type: 'joint'
ownerId: 'alex'"

rosservice call /toaster_simu/set_entity_pose "id: 'alex_rhand'
ownerId: 'alex'
type: 'joint'
pose:
  position:
    x: 0.1229
    y: -0.493
    z: 1.0587
  orientation:
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0"

rosservice call /toaster_simu/add_entity "id: 'alex_lhand'
name: 'leftHand'
type: 'joint'
ownerId: 'alex'"

rosservice call /toaster_simu/set_entity_pose "id: 'alex_lhand'
ownerId: 'alex'
type: 'joint'
pose:
  position:
    x: 0.1229
    y: 0.508
    z: 1.0587
  orientation:
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0"

rosservice call /toaster_simu/add_entity "id: 'alex_torso'
name: 'base'
type: 'joint'
ownerId: 'alex'"

rosservice call /toaster_simu/set_entity_pose "id: 'alex_torso'
ownerId: 'alex'
type: 'joint'
pose:
  position:
    x: 0.0
    y: 0.0
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0"

rosservice call /toaster_simu/set_entity_keyboard "id: 'alex'"
