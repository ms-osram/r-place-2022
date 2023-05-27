# r/place 2022 Dataset
## Introduction

Welcome to the r/place 2022 dataset! This readme file provides an overview of the dataset and its context. The r/place event was a popular April Fools' experiment on Reddit where users collaborated to create a shared pixel art canvas by placing one tile every five minutes. This dataset captures the tile placement data and allows for exploration and analysis of the collective artwork created by Redditors.
Tile Placement Data

The dataset contains comprehensive information about each tile placed during the r/place event. The data is available in CSV format and has the following structure:

    Timestamp: The UTC time of the tile placement.
    User_id: A hashed identifier for each user who placed the tile. These identifiers are not Reddit user IDs but rather anonymized values to allow for tracking tiles placed by the same user.
    Pixel_color: The hexadecimal color code of the tile placed.
    Coordinate: The "x, y" coordinate of the tile placement. The canvas is represented as a grid, with the top left corner being (0,0) and the bottom right corner being (1999, 1999).

## SQLite Format

In addition to the original CSV files, an SQLite version of the r/place 2022 dataset is available. The SQLite format provides easy searching and querying capabilities, making it convenient for exploring the data. The SQLite database, derived from the CSV files provided by u/paul_that, contains the same information as the CSV files, including timestamps, user IDs (obfuscated), color choices, and coordinates. The dataset is stored in a 9.1GB archive, which can be accessed for further analysis.

## Repository Contents

This repository includes additional resources and exercises for working with the r/place 2022 dataset. The exercises were created by F5XS and are arranged in ascending order of difficulty. They provide a hands-on approach to exploring and analyzing the dataset. Solutions for the exercises may be available in the future, but it is recommended to attempt them independently before referring to the solutions.

Additionally, ms-osram has contributed a set of their own questions to further explore the dataset. These questions are also included in the repository, providing different perspectives and avenues for investigation.

## Getting Started

To begin exploring the r/place 2022 dataset, you can:

    Access the original CSV files or the SQLite database provided in this repository.
    Utilize the exercises provided by F5XS to gain insights into the dataset.
    Explore the questions and queries posed by ms-osram to delve deeper into the data.
    Analyze the tile placement data, timestamps, user IDs, pixel colors, and coordinates to understand the collaborative artwork created during the r/place event.
    
## Credits

This repository is made possible thanks to the contributions of the following individuals:

[u/paul_that](https://www.reddit.com/user/paul_that/): Provided the [original tile placement data](https://www.reddit.com/r/place/comments/txvk2d/rplace_datasets_april_fools_2022/) for the r/place 2022 dataset, allowing us to explore and analyze the collaborative artwork created by Redditors. 

[F5XS](https://github.com/f5xs-0000a): Transformed the original CSV files provided by u/paul_that into an SQLite database format. Their efforts have made it easier for users to search, query, and analyze the dataset. Additionally, F5XS created exercises and solutions for analyzing the r/place 2022 dataset, providing valuable resources for understanding the data and its context. You can find the dataset through [this link](https://github.com/f5xs-0000a/r_place_2022) 

Feel free to clone this repository, use the dataset, and contribute to the analysis and understanding of r/place 2022.

Enjoy your exploration of the r/place 2022 dataset!
