# Lego Video Processing Project

## Project Overview
This project involves using MATLAB to process a video recorded by a social influencer building a Lego set in a silent room. The goal is to detect the distinct clicking sounds of Lego pieces snapping into place, extract the corresponding video and audio segments, and create a short, engaging social media-ready video. The final product will highlight the key moments with enhanced audio and visuals.

## Objectives
1. **Audio Analysis:** Detect Lego snapping sounds in the audio track of the video.
2. **Video Segmentation:** Extract video and audio segments corresponding to the detected snapping sounds.
3. **Audio Enhancement:** Reduce noise and amplify the clicking sounds to make them more prominent and satisfying.
4. **Video Compilation:** Create a 1-minute summary video showcasing the highlights with enhanced audio.

## Requirements
- MATLAB (latest version recommended)
- Signal Processing Toolbox
- Image Processing Toolbox

## Workflow
### Step 1: Audio Processing
1. Extract the audio track from the video.
2. Use signal processing techniques to analyze the audio and identify the snapping sounds:
   - Apply a band-pass filter to isolate the frequency range of the clicking sounds.
   - Use a threshold-based or machine learning approach to detect the snapping events.

### Step 2: Video Segmentation
1. Identify the time intervals corresponding to the detected snapping sounds.
2. Extract the corresponding video segments from the original video.

### Step 3: Audio Enhancement
1. Apply noise reduction techniques to remove background noise.
2. Amplify the detected snapping sounds for better emphasis.

### Step 4: Video Compilation
1. Combine the extracted video and audio segments into a single summary video.
2. Use MATLAB's video processing tools to ensure smooth transitions and synchronization.

## Deliverables
1. **Detection Algorithm:** MATLAB script for detecting snapping sounds in the audio.
2. **Extracted Segments:** Video and audio segments corresponding to the snapping events.
3. **Summary Video:** A 1-minute engaging video showcasing the highlights with enhanced audio.

## How to Run the Project
1. Clone this repository.
2. Place the input video file in the `input` folder.
3. Run the `process_lego_video.m` script in MATLAB.
4. The output video will be saved in the `output` folder.

## Key Concepts Explored
- Signal Processing: Filtering, noise reduction, and event detection.
- Image Processing: Video segmentation and compilation.
- System Design: Developing an end-to-end algorithm for a real-world application.
