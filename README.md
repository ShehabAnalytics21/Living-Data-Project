# Living-Data-Project

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#methodology">Methodology</a></li>
        <li><a href="#general-results">General Results</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


[![Product Name Screen
Shot][product-screenshot]](https://example.com)

<!-- ABOUT THE PROJECT -->
## About The Project:
*	For this project we had to track our daily activity for seven subsequent days using a smartwatch that measures and records the data which would be then converted into a CSV format that would be then used for our main analysis. 
*	Our main goal of this project was to visualise our activities and track our sleeping schedule to learn more about our daily routine and think of different ways to improve on it to become healthier and more organised. 
*	The raw data are found in the “collected_data.csv” file while the main code is found in the “Living_Data_Project.pde” file. 

### Methodology:
For my sketch, I used my own hourly data. I had seven shapes that represent the seven days of the week starting on Monday and ending on Sunday. Each shape has 24 projection that represents the number of hours per day. 

In my sketch, I used three variables:
1.	float “avSteps” _This variable represents the data from the “Steps (average per min)” column.
2.	float “avActivity” _ This variable represents the data from the “Mean Activity (g)” column.
3.	float “avSedentary” _ This variable represents the data from the “Sedentary Activity (proportion)” column. 

Mapping of the Variables was Conducted as Follows:
1.	I mapped the Steps in my sketch to the length of the projections. (The longer the projection the more steps have been done).
2.	I mapped the activity in my sketch to the fill colour of the star-like shapes that are highlighted in the following picture: 
(The redder the colour is the more Activity has been done, the more yellow the colour is the less activity has been done).
3.	I mapped the sedentary activity in my sketch to the stroke of the projections. (The bluer the colour of the projection is the more sedentary I was, the greener the colour is the less sedentary I was).


### General Results:
Based on the length and colour of the projection and star-like shapes, we were able to note that the longer the projection is, the redder the subsequent star-like shape, and the greener the colour of the projection is. This demonstrates that when our movements increase (Longer projections), our mean activity would also increase (Redder star-like shapes), while our sedentary activity would decrease (Greener projections). 
By looking at the sketch, we can also note that I spend very little energy on activities on Sunday which is not really a big surprise :p 

### Built With:
This report was built using Python language through Jupyter Notebook and the extracted data comes from a CSV file.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started:

### Installation:
To get the report up and running, please follow these simple steps:
1. 	First, fork the project to your repository.
2.	Open the PDF file named “Café Insomnia Report.pdf”. 
3.	To open the code, download the file “Café Insomnia Code.ipynb”.
 
To view the excel sheet that contains the data, please follow the instructions:
1.	First, fork the project to your repository.
2.	Download the excel file named “transactions.csv “provided in the “data” folder. 
3.	Open the file using excel or another applicable program. 

 

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Usage:
This project could be useful for beginners who are looking for a guide to exploratory data analysis or predictive modelling. This project make use of two types of predictive modelling, in specific, they are, multiple linear regression models and polynomial regression models. 

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing:
Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.
If you have a suggestion that would make this better, please fork the repo and create a pull request. Don't forget to give the project a star! Thanks again!

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
## License:
Distributed under the Apache-2.0 license. See LICENSE.txt for more information.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact:
My Name – Shehab Shahin

Email: [shahin.shehab21@gmail.com](shahin.shehab21@gmail.com)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments:

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[product-screenshot]: images/screenshot.png
