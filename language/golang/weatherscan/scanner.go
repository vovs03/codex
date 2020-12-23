// Date: 2020-12-23
// Coder: Vladimir Pavlychev

// Package weatherscan is Wheather scanner using API meteoservice.ru
package main

import (
	"encoding/xml"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

// WEATHER https://www.onlinetool.io/xmltogo/
// https://xml.meteoservice.ru/export/gismeteo/point/7421.xml
type WEATHER struct {
	XMLName xml.Name `xml:"MMWEATHER"`
	Text    string   `xml:",chardata"`
	REPORT  struct {
		Text string `xml:",chardata"`
		Type string `xml:"type,attr"`
		TOWN struct {
			Text      string `xml:",chardata"`
			Index     string `xml:"index,attr"`
			Sname     string `xml:"sname,attr"`
			Latitude  string `xml:"latitude,attr"`
			Longitude string `xml:"longitude,attr"`
			FORECAST  []struct {
				Text      string `xml:",chardata"`
				Day       string `xml:"day,attr"`
				Month     string `xml:"month,attr"`
				Year      string `xml:"year,attr"`
				Hour      string `xml:"hour,attr"`
				Tod       string `xml:"tod,attr"`
				Predict   string `xml:"predict,attr"`
				Weekday   string `xml:"weekday,attr"`
				PHENOMENA struct {
					Text          string `xml:",chardata"`
					Cloudiness    string `xml:"cloudiness,attr"`
					Precipitation string `xml:"precipitation,attr"`
					Rpower        string `xml:"rpower,attr"`
					Spower        string `xml:"spower,attr"`
				} `xml:"PHENOMENA"`
				PRESSURE struct {
					Text string `xml:",chardata"`
					Max  string `xml:"max,attr"`
					Min  string `xml:"min,attr"`
				} `xml:"PRESSURE"`
				TEMPERATURE struct {
					Text string `xml:",chardata"`
					Max  string `xml:"max,attr"`
					Min  string `xml:"min,attr"`
				} `xml:"TEMPERATURE"`
				WIND struct {
					Text      string `xml:",chardata"`
					Min       string `xml:"min,attr"`
					Max       string `xml:"max,attr"`
					Direction string `xml:"direction,attr"`
				} `xml:"WIND"`
				RELWET struct {
					Text string `xml:",chardata"`
					Max  string `xml:"max,attr"`
					Min  string `xml:"min,attr"`
				} `xml:"RELWET"`
				HEAT struct {
					Text string `xml:",chardata"`
					Min  string `xml:"min,attr"`
					Max  string `xml:"max,attr"`
				} `xml:"HEAT"`
			} `xml:"FORECAST"`
		} `xml:"TOWN"`
	} `xml:"REPORT"`
}

func main() {
	// https://golang.org/pkg/net/http/#Response
	// doc: https://www.meteoservice.ru/content/export
	response, err := http.Get(
		"https://www.meteoservice.ru/export/gismeteo?point=7421")
	if err != nil {
		log.Fatal(err)
	}
	defer response.Body.Close()

	// https://golang.org/pkg/io/ioutil/#ReadAll
	byteValue, err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}

	//fmt.Println(string(byteValue))
	var weather WEATHER
	err = xml.Unmarshal(byteValue, &weather)
	if err != nil {
		log.Fatal(err)
	}

	forecast := weather.REPORT.TOWN.FORECAST
	for i := 0; i < len(forecast); i++ {
		fmt.Printf("Time %s/%s/%s %s:00 - T max/min: %s/%s \n", forecast[i].Day, forecast[i].Month, forecast[i].Year, forecast[i].Hour, forecast[i].TEMPERATURE.Max, forecast[i].TEMPERATURE.Min)
	}
}
