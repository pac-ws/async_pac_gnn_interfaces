# Lightweight message for broadcasting robot positions
# Optimized for distributed LPAC communication

# Header with timestamp
std_msgs/Header header

# Robot positions in fixed order by robot index
# Each position is [x, y] in meters
float32[] positions  # Flattened array: [x1, y1, x2, y2, x3, y3, ...]