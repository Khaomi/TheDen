python3 RobustToolbox/Schemas/validate_rsis.py Resources/ | cut -d: -f1 | while read -r d; do
  src="${d/Resources\/Textures/Resources\/Textures\/_Starlight}"
  dst="${d/Resources\/Textures/Resources\/Textures\/_Goobstation}"
  [ -d "$src" ] || continue
  echo mkdir -p "$dst"
  echo mv "$src"/* "$dst"/
done
