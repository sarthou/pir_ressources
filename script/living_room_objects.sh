##############
# Living Room
##############

rosservice call /toaster_simu/add_entity "id: 'couch_l_0'
name: 'IKEA_sofa_EKTORP'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'couch_l_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 6.5
    y: 7.6
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: -0.707
    w: 0.707"

rosservice call /toaster_simu/add_entity "id: 'chair_l_0'
name: 'IKEA_armchair_EKTORP'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'chair_l_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 2.7
    y: 5.6
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: -0.966
    w: 0.259"

rosservice call /toaster_simu/add_entity "id: 'table_l_0'
name: 'IKEA_table_TORSBY'
type: 'object'
ownerId: ''"

rosservice call /toaster_simu/set_entity_pose "id: 'table_l_0'
ownerId: ''
type: 'object'
pose:
  position:
    x: 3.77
    y: 7.6
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0"
