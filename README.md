# US Crash Data Analysis and Machine Learning Models

Welcome to the US Crash Data Analysis and Machine Learning Models project. This project provides an in-depth analysis of the US crash dataset, including various exploratory data analysis (EDA) visualizations and machine learning models to predict crash severity.

## Table of Contents

- [Introduction](#introduction)
- [Data](#data)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Machine Learning Models](#machine-learning-models)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Introduction

This project analyzes a US crash dataset, performing various EDA techniques and building machine learning models to predict crash severity. The analysis is done using R, and the results are visualized using ggplot2.

## Data

The dataset used in this project is available [here](https://github.com/Ashaarani/US-crash-Data-Analysis/US_crashdata.csv). The dataset includes information on crashes, such as year, age of individuals involved, severity, and more.

## Exploratory Data Analysis

The EDA section includes the following visualizations:
- Bar chart of the number of crashes by year
- Histogram of crash severity distribution
- Bar chart of the number of crashes by age group

## Machine Learning Models

The following machine learning models are implemented:
- Multinomial Logistic Regression
- Random Forest
- Decision Tree

Each model is evaluated based on accuracy, precision, recall, F1-score, and AUC.

## Installation

To run this project locally, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/username/your-repo-name.git
    ```

2. Navigate to the project directory:
    ```bash
    cd your-repo-name
    ```

3. Install the required R packages:
    ```r
    install.packages(c("ggplot2", "dplyr", "magrittr", "tidyverse", "rsample", "nnet", "glmnet", "caret", "randomForest", "rpart", "pROC"))
    ```

4. Load the dataset into the R environment:
    ```r
    crash_dataset <- read.csv("path_to_your_dataset/US_crashdata.csv")
    ```

## Usage

To generate the EDA visualizations and train the machine learning models, run the R scripts provided in the `scripts` directory. Each script is well-documented with comments explaining each step.

1. Run the EDA script:
    ```r
    source("scripts/eda.R")
    ```

2. Run the machine learning models script:
    ```r
    source("scripts/ml_models.R")
    ```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or suggestions.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


Thank you for visiting this project! If you have any questions or feedback, please feel free to contact me.

