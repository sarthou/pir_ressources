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
