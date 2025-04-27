from pathlib import Path

# Define the source and destination directories
source_dir = Path("/data/action-recognition/kinetics-dataset/k400/val")
destination_dir = Path("/data/action-recognition/kinetics-dataset/k400/_val")

# Ensure the destination directory exists
destination_dir.mkdir(parents=True, exist_ok=True)

# Loop over all files in the source directory
for source_file in source_dir.iterdir():
    # Extract the id from the file name
    id = source_file.name[:11]

    # Define the destination file path
    destination_file = destination_dir / f"{id}.mp4"

    # Create the symbolic link
    destination_file.symlink_to(source_file)

print(f"Symbolic links created in {destination_dir}")