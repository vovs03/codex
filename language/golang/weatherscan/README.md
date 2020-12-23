# Write wheather scanner

## 1

## 2 Подготовка данных из XML -> Struc

- На сайте [url](https://www.meteoservice.ru/content/export) выбрать `город`
- Скопировать `Блок xml-данных`

```xml
<?xml version="1.0" encoding="utf-8"?>
<MMWEATHER>
<REPORT type="frc3">
  <TOWN index="7421" sname="%D0%9F%D1%80%D0%BE%D1%82%D0%B2%D0%B8%D0%BD%D0%BE%2C+%D0%9C%D0%BE%D1%81%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D0%BE%D0%B1%D0%BB.%2C+%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F" latitude="55" longitude="37">
                    			<FORECAST day="23" month="12" year="2020" hour="15" tod="2" predict="0" weekday="4">
				<PHENOMENA cloudiness="3" precipitation="10" rpower="0" spower="0"/>
				<PRESSURE max="767" min="764"/>
				<TEMPERATURE max="-7" min="-8"/>
				<WIND min="7" max="7" direction="5"/>
				<RELWET max="86" min="81"/>

				<HEAT min="-17" max="-17"/>
			</FORECAST>
                        			<FORECAST day="23" month="12" year="2020" hour="21" tod="3" predict="0" weekday="4">
				<PHENOMENA cloudiness="-1" precipitation="10" rpower="0" spower="0"/>
				<PRESSURE max="765" min="764"/>
				<TEMPERATURE max="-8" min="-9"/>
				<WIND min="7" max="8" direction="5"/>
				<RELWET max="87" min="83"/>

				<HEAT min="-18" max="-18"/>
			</FORECAST>
                        			<FORECAST day="24" month="12" year="2020" hour="03" tod="0" predict="0" weekday="5">
				<PHENOMENA cloudiness="3" precipitation="10" rpower="0" spower="0"/>
				<PRESSURE max="764" min="763"/>
    <TEMPERATURE max="-7" min="-8"/>
				<WIND min="6" max="7" direction="5"/>
				<RELWET max="89" min="87"/>

				<HEAT min="-17" max="-17"/>
			</FORECAST>
                        			<FORECAST day="24" month="12" year="2020" hour="09" tod="1" predict="0" weekday="5">
				<PHENOMENA cloudiness="3" precipitation="10" rpower="0" spower="0"/>
				<PRESSURE max="763" min="762"/>
    <TEMPERATURE max="-5" min="-7"/>
    <WIND min="6" max="7" direction="5"/>
				<RELWET max="90" min="89"/>

				<HEAT min="-14" max="-14"/>
			</FORECAST>
            		</TOWN>
 </REPORT>
</MMWEATHER>
```
- Местоположение сервиса: [https://xml.meteoservice.ru/export/gismeteo/point/7421.xml](https://xml.meteoservice.ru/export/gismeteo/point/7421.xml)
- Открыть сайт [url](https://www.onlinetool.io/xmltogo/) и вставить <!--скопированный `XML-блок`. --> в поле ввода `URL` from `XML-block`
- Скопировать `Go-defenition`  to `scanner.go`

```go
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
```

- Set array into var `forecast`
  - `forecast := weather.REPORT.TOWN.FORECAST`
