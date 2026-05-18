# Sports Day TETRIS Animation
A dynamic Processing-based visual installation designed to cut through administrative noise and capture collective attention.


## Project Overview & Impact
This project is a customized, algorithmic Tetris animation built using the Processing language. Rather than existing as a standalone game, this software was engineered as a high-visibility digital installation deployed across two distinct institutional contexts:

1. School Sports Day Advertisement: Broadcasted on central TV displays across a 1,000+ student campus to orchestrate attention, cut through the physical chaos of a massive school event, and deliver clear, high-impact event promotional messaging.
2. Computer Science Enrichment Week: Featured on showcase displays as a benchmark student use-case of the Processing language, demonstrating how programmatic canvas manipulation can bridge the gap between creative coding and functional UI design.


## How It Works

The core architecture is built upon the Processing framework (Java-based), utilizing object-oriented principles to handle collision, board state calculation, and rendering pipelines.

### 1. State Space & Grid Representation
The simulation environment is governed by a strict 2D coordinate grid matrix representing the playfield. Each cell in the matrix holds a state value corresponding to whether it is empty or occupied by a locked block color. 

### 2. The Algorithmic Loop
* **The Falling Phase (Active Block):** An active `Tetromino` object is instantiated with specific geometry and color signatures. It translates down the vertical axis dictated by an internal clock cycle (`frameCount` scaling).
* **Collision Detection:** Prior to any translation or rotation, a matrix look-ahead algorithm checks if the bounding boxes of the active Tetromino overlap with existing locked cells or the boundaries of the canvas.
* **The Locking Phase (Resolution of Chaos):** When a piece can no longer descend, its matrix coordinates are permanently written into the global grid state. 
* **Row Clearance Line Scan:** A linear scan checks the matrix for fully saturated horizontal vectors. When a row is full, it is cleared, and all rows above it are bit-shifted downward, maintaining systemic structural integrity.

### 3. Visual Delivery Engine
The rendering engine utilizes strict geometric primitives (`rect()`) tied to the matrix states. The color palette and block updates are optimized to be high-contrast and readable from long distances across school hallways and busy campus environments.

all code, architecture, object, algorithms built by cosmic-perott for school use in display events
