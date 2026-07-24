# Explainable Transfer Learning-Based Skin Condition Classification and Severity Estimation Using Grad-CAM Visualization

## Project Overview

This repository contains the implementation of an explainable deep learning framework for automated skin condition classification and severity estimation using transfer learning. The system classifies multiple skin conditions, estimates their corresponding severity or condition levels, and provides Grad-CAM visualizations to improve model interpretability.

The project includes:

- Dataset preprocessing and metadata generation
- Transfer learning using EfficientNetB0, MobileNetV2, and ResNet50
- Model training and evaluation
- Performance comparison of multiple architectures
- Grad-CAM explainability
- Prediction visualization and performance analysis

---

## Supported Classes

The dataset contains **12 classes** representing four skin condition categories.

| Skin Condition | Severity / Condition |
|----------------|----------------------|
| Acne | Mild, Moderate, Severe |
| Eczema | Mild, Moderate, Severe |
| Burn | Mild, Moderate, Severe |
| Normal Skin | Dry, Normal, Oily |

---

## Repository Structure

```
code/
│
├── comparison.ipynb
├── data_preprocessing/
│   └── data_preprocessing.ipynb
├── model_efficientnetB0/
│   ├── training.ipynb
│   └── prediction_explainability_evaluation.ipynb
├── model_mobilenetv2/
│   ├── training.ipynb
│   └── prediction_explainability_evaluation.ipynb
└── model_resnet50/
    ├── training.ipynb
    └── prediction_explainability_evaluation.ipynb

dataset/
├── metadata/
│   └── metadata.json
├── processed/
│   ├── Images/
│   ├── dataset.csv
│   ├── train.csv
│   ├── validation.csv
│   └── test.csv
└── raw/

models/

results/
├── comparison/
├── explainability/
└── predictions/
```

---

## Dataset Information

Dataset configuration is stored in:

```
dataset/metadata/metadata.json
```

| Property | Value |
|----------|-------|
| Image Size | 224 × 224 |
| Channels | 3 |
| Training Split | 70% |
| Validation Split | 15% |
| Test Split | 15% |
| Total Images | 8275 |
| Total Classes | 12 |

---

## Model Architectures

The following transfer learning models are implemented:

- EfficientNetB0
- MobileNetV2
- ResNet50

Each model is trained using the same preprocessing pipeline and evaluated under identical experimental settings.

---

## Performance Summary

| Model | Accuracy | Precision | Recall | F1-score | ROC-AUC | Inference Time |
|--------|---------:|----------:|--------:|---------:|--------:|---------------:|
| ResNet50 | **74.32%** | **74.62%** | **74.32%** | **74.03%** | **97.48%** | 47.68 ms |
| EfficientNetB0 | 72.95% | 73.01% | 72.95% | 72.56% | 97.07% | 22.79 ms |
| MobileNetV2 | 71.26% | 71.62% | 71.26% | 71.19% | 97.02% | **17.12 ms** |

---

## Installation

Recommended environment

- Python 3.10
- TensorFlow 2.x

Install dependencies

```bash
pip install -r requirements.txt
```

---

## Usage

### Step 1 — Dataset Preprocessing

Run

```
code/data_preprocessing/data_preprocessing.ipynb
```

This notebook

- Processes raw images
- Generates metadata
- Splits the dataset
- Creates CSV files

---

### Step 2 — Train Models

Choose any model

- `code/model_efficientnetB0/training.ipynb`
- `code/model_mobilenetv2/training.ipynb`
- `code/model_resnet50/training.ipynb`

---

### Step 3 — Prediction, Explainability and Evaluation

Run the corresponding notebook

- Prediction
- Grad-CAM visualization
- Confusion Matrix
- ROC Curve
- Classification Report

---

### Step 4 — Compare Models

Run

```
code/comparison.ipynb
```

This notebook compares

- Accuracy
- Precision
- Recall
- F1-score
- ROC-AUC
- Inference Time

for all trained models.

---

## Output

Generated outputs include

- Processed dataset
- Trained `.keras` models
- Prediction results
- Confusion matrices
- ROC curves
- Grad-CAM heatmaps
- Model comparison metrics

---

## Technologies Used

- TensorFlow
- Keras
- OpenCV
- NumPy
- Pandas
- Matplotlib
- scikit-learn

---

## Future Work

Future improvements include

- Adding more skin conditions
- Improving severity estimation
- Deploying the framework as a mobile application
- Real-time skin condition monitoring
- Clinical validation using hospital datasets

<!-- ---

## Citation

If you use this repository in your research, please cite:

> *Aurnab Barua, "Explainable Transfer Learning-Based Skin Condition Classification and Severity Estimation Using Grad-CAM Visualization," MSc Thesis, BRAC University, 2026.* -->

---

## License

This project is released for academic and research purposes.