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

This is an academic research prototype, not a clinical diagnostic tool.

---

## Supported Classes

The dataset contains **12 classes** across four condition categories.

| Skin Condition | Severity / Condition |
|----------------|----------------------|
| Acne | Mild, Moderate, Severe |
| Eczema | Mild, Moderate, Severe |
| Burn | Mild, Moderate, Severe |
| Normal Skin | Dry, Normal, Oily |

The class labels are defined in `dataset/metadata/metadata.json`.

---

## Repository Structure

```
code/
│
├── comparision.ipynb
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
├── raw/
│   ├── Acne/
│   ├── burn/
│   ├── Eczema/
│   └── Normal/
├── processed/
│   ├── Images/
│   ├── dataset.csv
│   ├── train.csv
│   ├── validation.csv
│   └── test.csv

models/
├── efficientnetb0/
├── mobilenetv2/
└── resnet50/

results/
├── comparison/
│   ├── confusion_matrices/
│   ├── metrics/
│   └── roc_curves/
├── explainability/
│   ├── gradcam/
│   └── heatmaps/
└── predictions/
```

Each model directory contains trained models and training histories organized by dataset split.

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
| Training Split | 90% (7,447 images) |
| Validation Split | 5% (414 images) |
| Test Split | 5% (414 images) |
| Total Images | 8275 |
| Total Classes | 12 |

The split CSV files are in `dataset/processed/`. The split percentages and image counts above describe the currently generated dataset; preprocessing settings can be changed in the preprocessing notebook.

---

## Model Architectures

The following transfer learning models are implemented:

- EfficientNetB0
- MobileNetV2
- ResNet50

Each model is trained using the same preprocessing pipeline and evaluated under identical experimental settings.

---

## Performance Summary

The following results are from the current 90% / 5% / 5% train / validation / test split and are recorded in `results/comparison/metrics/model_comparison.csv`.

| Model | Accuracy | Precision | Recall | F1-score | ROC-AUC | Inference Time (ms/image) |
|--------|---------:|----------:|--------:|---------:|--------:|--------------------------:|
| ResNet50 | **86.84%** | **87.22%** | **86.84%** | **86.79%** | **99.27%** | 62.86 |
| EfficientNetB0 | 85.02% | 85.17% | 85.02% | 84.88% | 98.94% | 24.90 |
| MobileNetV2 | 83.21% | 83.71% | 83.21% | 83.16% | 98.72% | **20.79** |

---

## Installation

The project uses Python 3.10 and TensorFlow 2.21.0. Install the pinned dependencies from the repository root:

```powershell
pip install -r requirements.txt
```

---

## Usage

Open and run the notebooks from the repository root in Jupyter.

### Step 1 — Dataset Preprocessing

Run:

```
code/data_preprocessing/data_preprocessing.ipynb
```

This notebook:

- Processes raw images
- Generates metadata
- Splits the dataset
- Creates CSV files

---

### Step 2 — Train Models

Choose and run a model's training notebook:

- `code/model_efficientnetB0/training.ipynb`
- `code/model_mobilenetv2/training.ipynb`
- `code/model_resnet50/training.ipynb`

Trained models and training histories are saved under `models/`, organized by model and dataset split.

---

### Step 3 — Prediction, Explainability and Evaluation

Run the corresponding `prediction_explainability_evaluation.ipynb` notebook in the model's folder for:

- Predictions
- Grad-CAM visualizations
- Confusion matrices
- ROC curves
- Classification reports

---

### Step 4 — Compare Models

Run:

```
code/comparision.ipynb
```

This notebook compares:

- Accuracy
- Precision
- Recall
- F1-score
- ROC-AUC
- Inference Time

for the trained models and dataset splits.

---

## Output

Generated outputs include:

- Processed dataset
- Trained `.keras` models
- Prediction results
- Confusion matrices
- ROC curves
- Grad-CAM heatmaps
- Model comparison metrics in `results/comparison/metrics/`

---

## Technologies Used

- TensorFlow
- Keras
- OpenCV
- NumPy
- Pandas
- Matplotlib
- scikit-learn


<!-- ---

## Citation

If you use this repository in your research, please cite:

> *Aurnab Barua, "Explainable Transfer Learning-Based Skin Condition Classification and Severity Estimation Using Grad-CAM Visualization," MSc Thesis, BRAC University, 2026.* -->

---

## License

This project is released for academic and research purposes.