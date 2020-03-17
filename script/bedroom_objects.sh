##########
# Bedroom
##########

rosservice call /toaster_simu/add_entity "id: 'room_B_bed_0'
name: 'Bed'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_bed_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 3.5
    y: 11.4
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.707
    w: 0.707"

rosservice call /toaster_simu/add_entity "id: 'room_B_shelf_3'
name: 'Bedroom_console'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_shelf_3'
ownerId: ''
type: 'object'
pose:
  position:
    x: 6.0
    y: 11.3
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.707
    w: 0.707"

rosservice call /toaster_simu/add_entity "id: 'room_B_shelf_0'
name: 'Bedroom_chest'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_shelf_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 3.2
    y: 12.9
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0"

rosservice call /toaster_simu/add_entity "id: 'room_B_shelf_1'
name: 'Bedroom_big_cupboard'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_shelf_1'
ownerId: ''
type: 'object'
pose:
  position:
    x: 4.5
    y: 9.4
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 1.0
    w: 0.0"

rosservice call /toaster_simu/add_entity "id: 'room_B_chair_2'
name: 'IKEA_armchair_EKTORP'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_chair_2'
ownerId: ''
type: 'object'
pose:
  position:
    x: 2.7
    y: 9.6
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: -0.966
    w: 0.259"

rosservice call /toaster_simu/add_entity "id: 'room_B_lamp_0'
name: 'IKEA_RUTBO'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_lamp_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 5.1
    y: 9.4
    z: 0.0
  orientation:
    x: 0.707
    y: 0.0
    z: 0.0
    w: 0.707"

rosservice call /toaster_simu/add_entity "id: 'room_B_table_0'
name: 'office_desk'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_table_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 5.2
    y: 12.7
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.707
    w: 0.707"

rosservice call /toaster_simu/add_entity "id: 'room_B_chair_0'
name: 'IKEA_chair_STEFAN'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_chair_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 5.2
    y: 12.1
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 1.0
    w: 0.0"

rosservice call /toaster_simu/add_entity "id: 'room_B_chair_1'
name: 'IKEA_chair_STEFAN'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'room_B_chair_1'
ownerId: ''
type: 'object'
pose:
  position:
    x: 4.2
    y: 12.7
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.707
    w: 0.707"
