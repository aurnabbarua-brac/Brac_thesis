# Explainable Deep Learning-Based Skin Condition Classification and Severity Estimation Using Transfer Learning and Grad-CAM Visualization Severity Estimation Using CNN and Grad-CAM Visualization

## Project Overview

This repository contains a skin condition classification pipeline built with TensorFlow and Keras. The project includes:
- preprocessing of raw image data
- training three CNN architectures: EfficientNetB0, MobileNetV2, and ResNet50
- evaluating and comparing model performance on a held-out test set
- generating explainability outputs and visualizations

The dataset covers 12 classes across medical and normal skin categories:
- Acne_Mild, Acne_Moderate, Acne_Severe
- Eczema_Mild, Eczema_Moderate, Eczema_Severe
- Normal_dry, Normal_normal, Normal_oily
- burn_Mild, burn_Moderate, burn_Severe

## Repository Structure

- `code/`
  - `data_preprocessing/` — notebook for loading raw images, creating labels, resizing images, and writing `train.csv`, `validation.csv`, and `test.csv`
  - `model_efficientnetB0/` — training and explainability notebooks for EfficientNetB0
  - `model_mobilenetv2/` — training and explainability notebooks for MobileNetV2
  - `model_resnet50/` — training and explainability notebooks for ResNet50
  - `comparision.ipynb` — notebook for model evaluation, comparison metrics, confusion matrices, ROC curves, and summary visualizations
- `dataset/`
  - `raw/` — source images organized by class
  - `processed/` — generated CSV files and processed image assets
  - `metadata/metadata.json` — dataset configuration and label mappings
- `models/` — saved model checkpoints and training history files for each architecture
- `results/` — evaluation outputs, comparison charts, explainability results, and predictions
- `requirements.txt` — Python dependencies

## Dataset Information

Metadata is defined in `dataset/metadata/metadata.json`:
- image size: `224 x 224`
- channels: `3`
- total images: `8275`
- train split: `70%`
- validation split: `15%`
- test split: `15%`
- total labels: `12`

## Setup

Recommended environment:
- Python 3.10
- TensorFlow 2.21.0

Install dependencies:

```bash
pip install -r requirements.txt
```

If you use the included conda environment, activate it before running notebooks.

## Usage

1. Open and run `code/data_preprocessing/data_preprocessing.ipynb` to preprocess raw images and generate the dataset CSV files.
2. Train models using one or more of the training notebooks:
   - `code/model_efficientnetB0/training.ipynb`
   - `code/model_mobilenetv2/training.ipynb`
   - `code/model_resnet50/training.ipynb`
3. Evaluate and compare the trained models with `code/comparision.ipynb`.
4. Use explainability notebooks for additional analysis:
   - `code/model_efficientnetB0/prediction_explainability_evaluation.ipynb`
   - `code/model_mobilenetv2/prediction_explainability_evaluation.ipynb`
   - `code/model_resnet50/prediction_explainability_evaluation.ipynb`

## Output Locations

- `dataset/processed/` — processed datasets and image data
- `models/efficientnetb0/`, `models/mobilenetv2/`, `models/resnet50/` — saved `.keras` models and training history
- `results/comparison/metrics/` — classification reports and comparison CSVs
- `results/comparison/confusion_matrices/` — confusion matrix images
- `results/comparison/roc_curves/` — ROC comparison plot
- `results/explainability/` — model explainability outputs
- `results/predictions/` — prediction outputs

## Notes

- The project uses `tf.data` and Keras model saving in `.keras` format.
- Model evaluation in `code/comparision.ipynb` computes accuracy, precision, recall, F1-score, ROC-AUC, and inference time.
- The comparison notebook loads all saved model files found under `models/`.
