Weather Information Script

Overview

This Bash script is designed to provide current weather information for a specified city using the Weatherbit API. The script prompts the user to enter a city ID, validates the input against a pre-existing list of city IDs, and then requests the user's Weatherbit API key. Upon successful validation and API call, the script displays relevant weather details such as city name, temperature, and sunrise time.

Use Case

This script is useful for individuals who want to quickly access current weather information for a specific city. It streamlines the process by automating the API call and presenting the essential details in a readable format.

Prerequisites

Before using the script, ensure you have:

- A valid Weatherbit API key
- The city ID of the location for which you want to fetch weather information

How to Use

1. Clone the Repository:
    git clone https://github.com/your_username/weather-information-script.git
    cd weather-information-script

2. Run the Script:
    ./weather_script.sh

3. Enter City ID:
    Follow the prompt to enter the city ID.

4. Provide Weatherbit API Key:
    Enter your Weatherbit API key when prompted.

5. View Weather Information:
    The script will display relevant weather details for the specified city.

Example

Welcome to the Weather Information Script!

Please enter the city ID: 2643743
Valid city ID! Proceeding to fetch weather information...

Please enter your Weatherbit API key: <your_api_key>
The City_Name is London
The Temp is 10
In the city, the sun rises at 1647689429

Note: Replace <your_api_key> with your actual Weatherbit API key.

Feel free to customize the script or incorporate it into other projects based on your needs.

