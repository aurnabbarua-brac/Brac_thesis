@echo off
setlocal

echo ==========================================
echo Starting Thesis Notebook Execution
echo ==========================================

cd /d "D:\Brac_thesis\code"

echo.
echo [1/8] Data Preprocessing
jupyter nbconvert --to notebook --execute "data_preprocessing\data_preprocessing.ipynb" --output "data_preprocessing.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo [2/8] EfficientNetB0 Training
jupyter nbconvert --to notebook --execute "model_efficientnetB0\training.ipynb" --output "training.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo [3/8] EfficientNetB0 Prediction, Explainability and Evaluation
jupyter nbconvert --to notebook --execute "model_efficientnetB0\prediction_explainability_evaluation.ipynb" --output "prediction_explainability_evaluation.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo [4/8] MobileNetV2 Training
jupyter nbconvert --to notebook --execute "model_mobilenetv2\training.ipynb" --output "training.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo [5/8] MobileNetV2 Prediction, Explainability and Evaluation
jupyter nbconvert --to notebook --execute "model_mobilenetv2\prediction_explainability_evaluation.ipynb" --output "prediction_explainability_evaluation.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo [6/8] ResNet50 Training
jupyter nbconvert --to notebook --execute "model_resnet50\training.ipynb" --output "training.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo [7/8] ResNet50 Prediction, Explainability and Evaluation
jupyter nbconvert --to notebook --execute "model_resnet50\prediction_explainability_evaluation.ipynb" --output "prediction_explainability_evaluation.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo [8/8] Model Comparison
jupyter nbconvert --to notebook --execute "comparision.ipynb" --output "comparision.ipynb" --ExecutePreprocessor.timeout=-1
if errorlevel 1 goto :error

echo.
echo ==========================================
echo ALL NOTEBOOKS EXECUTED SUCCESSFULLY!
echo ==========================================
pause
exit /b 0

:error
echo.
echo ==========================================
echo ERROR: NOTEBOOK EXECUTION FAILED!
echo ==========================================
pause
exit /b 1