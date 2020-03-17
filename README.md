# PIR ressources

## dataset former

Use this executable to arrange the [salad data-set](http://cvip.computing.dundee.ac.uk/datasets/foodpreparation/50salads/).

```sh
rosrun pir_ressources dataset_former /path/to/file.txt
```

Options:
  - **-h** or **--high_level** : Includes the high-level activities (true or false).
  - **-p** or **--phases** : Includes the activities phases (true or false)
  - **-t** or **--triplets** : Arranges the activities in triplets (true or false)
  - **-o** or **--output** : Path to the output file. If not defined, the file name will be defined automatically.


## Launch files

 -  toaster.launch : launch toaster and rviz

## Scripts

 -  **bedroom_objects.sh** : Adds the objects of the bedroom
 -  **office_objects.sh** : Adds the objects of the office
 -  **living_room_objects.sh** : Adds the objects of the living room
 -  **rooms.sh** : Adds the areas of the three rooms
 -  **human.sh** : Adds Alexia human with her joints
 -  **init.sh** : Calls the above scripts and initialize pdg

```sh
  source setup.sh
  cd catkin_ws/src/pir_ressources/script
  ./init.sh
```
