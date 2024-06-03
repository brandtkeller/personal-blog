---
title: "Treadmill Experiment - here is my data!"
date: 2023-11-16T05:30:00-07:00
tags: ["Wellbeing", "Experiment", "treadmill"]
series: "Wellbeing"
draft: false
---

![](https://content.bekindchooseviolence.com/strava-activities.png)

What do we love? Data!

Especially when the data is fun to aggregate and process. Finally some code!

I've been using a free Strava account for years now. It tracks my workouts and gives me some high-level information to share with friends and followers. 

## Desk Treadmill data

For each workout that I have been recording with the hardware from the previous post, I've specifically been naming them "Desk Treadmill" such that I could easily aggregate them in the future.

## The future is now.
With some setup that I call out in my [strava-api](github.com/brandtkeller/strava-api) repository, I was able to start hitting the Strava API and collecting data. The fun? you can too! 

It's pretty easy and straightforward to get the tokens you need to repeatably collect activities from the API and process them how you see fit. 

## The code

For those who want to look at the code:

- <details>
  <summary>Code - Click Here</summary>
  ```Go

    package main

    import (
      "encoding/json"
      "io"
      "log"
      "net/http"
      "strconv"
      "strings"
      "time"

      "github.com/spf13/viper"
    )

    type authResponse struct {
      AccessToken  string `json:"access_token"`
      ExpiresIn    int    `json:"expires_in"`
      TokenType    string `json:"token_type"`
      RefreshToken string `json:"refresh_token"`
    }

    type activity struct {
      Id          int     `json:"id"`
      Name        string  `json:"name"`
      Description string  `json:"description"`
      Distance    float64 `json:"distance"`
      MovingTime  int     `json:"moving_time"`
      ElapsedTime int     `json:"elapsed_time"`
      Type        string  `json:"type"`
      StartDate   string  `json:"start_date"`
      StartTime   string  `json:"start_time"`
      EndDate     string  `json:"end_date"`
      EndTime     string  `json:"end_time"`
    }

    type envVars struct {
      StravaClientId     string `mapstructure:"STRAVA_CLIENT_ID"`
      StravaClientSecret string `mapstructure:"STRAVA_CLIENT_SECRET"`
      StravaRefreshToken string `mapstructure:"STRAVA_REFRESH_TOKEN"`
    }

    type historicalData struct {
    }

    func (hd *historicalData) GetData() (int, error) {
      return 0, nil
    }

    func (hd *historicalData) StoreData(year int, month time.Month, distance float64) error {
      return nil
    }

    func main() {

      // setup logging
      logger := log.Default()

      var config envVars
      // Load environment configuration - IE secret tokens
      viper.SetConfigName("strava")
      viper.AddConfigPath(".")
      viper.SetConfigType("env")

      viper.AutomaticEnv()

      err := viper.ReadInConfig()
      if err != nil {
        logger.Fatal(err)
      }

      if err := viper.Unmarshal(&config); err != nil {
        logger.Fatal(err)
      }

      // Create HTTP Client
      client := http.Client{}

      authUrl := "https://www.strava.com/oauth/token"
      activitesUrl := "https://www.strava.com/api/v3/athlete/activities"

      // Authenticate to get access token
      req, err := http.NewRequest("POST", authUrl, strings.NewReader("client_id=115159&client_secret=6e0451fb8dcfb7b4de3a16f56ffab22eb01df0cf&grant_type=refresh_token&refresh_token=d705e4806714d9a00f4a9a33aaeed4550b9fb252&f=json"))
      if err != nil {
        //Handle Error
        logger.Fatal(err)
      }

      q := req.URL.Query()
      q.Add("client_id", config.StravaClientId)
      q.Add("client_secret", config.StravaClientSecret)
      q.Add("refresh_token", config.StravaRefreshToken)
      q.Add("grant_type", "refresh_token")
      q.Add("f", "json")
      req.URL.RawQuery = q.Encode()

      res, err := client.Do(req)
      if err != nil {
        //Handle Error
        logger.Fatal(err)
      }

      body, readErr := io.ReadAll(res.Body)
      if readErr != nil {
        logger.Fatal(readErr)
      }

      // Unmarshall json response to struct
      var result authResponse
      if err := json.Unmarshal(body, &result); err != nil { // Parse []byte to go struct pointer
        logger.Println("Can not unmarshal JSON")
      }

      logger.Println("Authenticated - Preparing to get activities by page of 200")

      // Create a slice of activities to hold all activities
      activities := make([]activity, 0)
      page := 1

      for {
        // Create a placeholder slice of activities for each page of results (200 max)
        pageActivities := make([]activity, 0)
        req, err = http.NewRequest("GET", activitesUrl, nil)
        if err != nil {
          //Handle Error
          logger.Fatal(err)
        }
        q := req.URL.Query()
        q.Add("per_page", "200")
        q.Add("page", strconv.Itoa(page))
        req.URL.RawQuery = q.Encode()

        req.Header = http.Header{
          "Authorization": []string{"Bearer " + result.AccessToken},
        }

        res, err = client.Do(req)
        if err != nil {
          //Handle Error
          logger.Fatal(err)
        }

        body, readErr = io.ReadAll(res.Body)
        if readErr != nil {
          logger.Fatal(readErr)
        }

        if err := json.Unmarshal(body, &pageActivities); err != nil { // Parse []byte to go struct pointer
          logger.Fatal(err)
        }

        if len(pageActivities) == 200 {
          // if we get a total of 200 activities, there may be
          logger.Printf("Page %d retrieved with %d activities\n", page, len(pageActivities))
          page++
          activities = append(activities, pageActivities...)
        } else {
          logger.Printf("Page %d retrieved with %d activities\n", page, len(pageActivities))
          activities = append(activities, pageActivities...)
          break
        }
      }

      // Log total number of activities
      logger.Printf("Total Number of activities: %d\n", len(activities))

      var deskCount int
      var distance float64

      for _, activity := range activities {
        if strings.ToLower(activity.Name) == "desk treadmill" {
          distance += activity.Distance
          deskCount++
        }
      }

      // Log number of desk treadmill activities
      logger.Printf("Desk Treadmill Activities: %d\n", deskCount)
      // Log number of miles after converting meters to miles
      logger.Printf("Total Distance: %f Miles since September 12th \n", distance*0.000621371)

    }
  ```
</details>

## Improvements

If I were not writing this for a specific purpose, I would have done a lot more. Breaking out the code into functions and overall modularity.

## The results

```
2023/11/16 08:53:27 Authenticated - Preparing to get activities by page of 200
2023/11/16 08:53:31 Page 1 retrieved with 200 activities
2023/11/16 08:53:39 Page 2 retrieved with 200 activities
2023/11/16 08:53:45 Page 3 retrieved with 123 activities
2023/11/16 08:53:45 Total Number of activities: 523
2023/11/16 08:53:45 Desk Treadmill Activities: 43
2023/11/16 08:53:45 Total Distance: 64.614320 Miles since September 12th
```

## Conclusion

I had a lot of fun building the pipeline that was hardware -> sensors -> platform -> data aggregation & processing.

I will continue to record my thoughts and walking data for future review. 



