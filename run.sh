# view dataset
python scripts/viewer/view_dataset.py sdfstudio-data --data data/sdfstudio-demo-data/dtu-scan65
python scripts/viewer/view_dataset.py nuscenes-data --data_dir /home/robot/dataset/nuscenes/mini  # refer to nerfstudio/data/dataparsers/nuscenes_dataparser.py
python scripts/viewer/view_dataset.py nuscenes-data --data_dir /home/robot/dataset/nuscenes/mini --data scene-1100 --cameras FRONT_LEFT FRONT_RIGHT FRONT

# train nuscenes
ns-train neus-facto --pipeline.model.sdf-field.inside-outside True --vis viewer --experiment-name nuscenes nuscenes-data --data_dir ~/dataset/nuscenes/mini --mask_dir ~/dataset/nuscenes-mask/mini --cameras FRONT FRONT_LEFT FRONT_RIGHT BACK BACK_LEFT BACK_RIGHT
