#!/bin/bash

# Base URL
BASE_URL="https://alonlevko.github.io/zero-bas"

# Working directory
WORK_DIR="/Users/forgot/Desktop/mono to spatial "

# Binaural Speech Dataset subjects
BSD_SUBJECTS="subject1 subject10 subject19 subject2 subject20 subject21 subject22 subject23 subject24 subject26 subject33 subject35 subject36 subject37 subject38 subject40 subject41 subject43 subject45 subject46 subject47 subject48 subject49 subject6 subject9"

# TUT Dataset subjects
TUT_SUBJECTS="subject116 subject122 subject13 subject137 subject138 subject164 subject183 subject187 subject19 subject203 subject207 subject212 subject219 subject245 subject246 subject247 subject32 subject50 subject62 subject70 subject72 subject73 subject75 subject83 subject86"

echo "Downloading audio files from ZeroBAS demo..."

# Download Mono files
echo "Downloading Mono files..."
for subj in $BSD_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/binaural_speech_dataset/Mono/${subj}.wav" -o "${WORK_DIR}/Mono/bsd_${subj}.wav"
done
for subj in $TUT_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/TUT/Mono/${subj}.wav" -o "${WORK_DIR}/Mono/tut_${subj}.wav"
done
echo "Mono: Done!"

# Download BinauralZero (Ours) files
echo "Downloading BinauralZero files..."
for subj in $BSD_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/binaural_speech_dataset/Ours/${subj}.wav" -o "${WORK_DIR}/BinauralZero/bsd_${subj}.wav"
done
for subj in $TUT_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/TUT/Ours/${subj}.wav" -o "${WORK_DIR}/BinauralZero/tut_${subj}.wav"
done
echo "BinauralZero: Done!"

# Download WarpNet files
echo "Downloading WarpNet files..."
for subj in $BSD_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/binaural_speech_dataset/WarpNet/${subj}.wav" -o "${WORK_DIR}/WarpNet/bsd_${subj}.wav"
done
for subj in $TUT_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/TUT/WarpNet/${subj}.wav" -o "${WORK_DIR}/WarpNet/tut_${subj}.wav"
done
echo "WarpNet: Done!"

# Download BinauralGrad files
echo "Downloading BinauralGrad files..."
for subj in $BSD_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/binaural_speech_dataset/BinauralGrad/${subj}.wav" -o "${WORK_DIR}/BinauralGrad/bsd_${subj}.wav"
done
for subj in $TUT_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/TUT/BinauralGrad/${subj}.wav" -o "${WORK_DIR}/BinauralGrad/tut_${subj}.wav"
done
echo "BinauralGrad: Done!"

# Download NFS files
echo "Downloading NFS files..."
for subj in $BSD_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/binaural_speech_dataset/NFS/${subj}.wav" -o "${WORK_DIR}/NFS/bsd_${subj}.wav"
done
for subj in $TUT_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/TUT/NFS/${subj}.wav" -o "${WORK_DIR}/NFS/tut_${subj}.wav"
done
echo "NFS: Done!"

# Download GroundTruth (GT) files
echo "Downloading GroundTruth files..."
for subj in $BSD_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/binaural_speech_dataset/GT/${subj}.wav" -o "${WORK_DIR}/GroundTruth/bsd_${subj}.wav"
done
for subj in $TUT_SUBJECTS; do
    curl -sL "${BASE_URL}/samples/TUT/GT/${subj}.wav" -o "${WORK_DIR}/GroundTruth/tut_${subj}.wav"
done
echo "GroundTruth: Done!"

echo ""
echo "All downloads complete!"
echo "Files saved to: ${WORK_DIR}"
