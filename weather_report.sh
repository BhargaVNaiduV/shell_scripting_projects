#!/bin/bash

# Function to make the weather API call
make_api_call() {
    local city_id="$1"
    local api_key="$2"

    # Construct the API URL
    local api_url="https://api.weatherbit.io/v2.0/current?city_id=$city_id&key=$api_key&include="

    # Make the API call using curl and store the response in a variable
    api_response=$(curl -s "$api_url")

    # Check if the API call was successful
    if [ $? -eq 0 ]; then
        # Display relevant information from the API response
        display_weather_info "$api_response"
    else
        echo "Failed to fetch weather information. Please try again."
    fi
}

# Function to display weather information
display_weather_info() {
    local api_response="$1"

    # Extract relevant information from the API response
    city_name=$(echo "$api_response" | jq -r '.data[0].city_name')
    temperature=$(echo "$api_response" | jq -r '.data[0].temp')
    sunrise_time=$(echo "$api_response" | jq -r '.data[0].sunrise')

    # Display the extracted information
    echo "The City_Name is $city_name"
    echo "The Temp is $temperature"
    echo "In the city, the sun rises at $sunrise_time"
}

# Function to get weather information
get_weather_info() {
    local city_id="$1"

    # Check if the entered city ID is valid
    valid_city_id=$(awk -F',' -v id="$city_id" '$1 == id {print "true"}' cities_all.csv)

    if [ "$valid_city_id" == "true" ]; then
        echo "Valid city ID! Proceeding to fetch weather information..."

        # Ask the user for the API key
        echo -n "Please enter your Weatherbit API key: "
        read api_key

        make_api_call "$city_id" "$api_key"
    else
        echo "Invalid city ID. Please enter a valid city ID."
    fi
}

# Display a welcome message
echo "Welcome to the Weather Information Script!"

# Ask the user to provide a city ID
echo -n "Please enter the city ID: "
read city_id

# Call the function with the entered city ID
get_weather_info "$city_id"

