rosservice call /pdg/manage_stream "{morseHuman: false, niutHuman: false, groupHuman: false, mocapHuman: false, adreamMocapHuman: true, toasterSimuHuman: true, pr2Robot: false, spencerRobot: false, toasterSimuRobot: false, toasterSimuObject: true, arObject: true, om2mObject: false, gazeboObject: false, mocapObject: false}"

./rooms.sh

./bedroom_objects.sh
./office_objects.sh
./living_room_objects.sh

rosservice call /agent_monitor/monitor_all_humans "monitorAll: true"
