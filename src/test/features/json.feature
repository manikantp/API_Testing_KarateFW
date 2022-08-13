Feature: Testing fetching data from JSON file

Scenario: JSON reader parser

  * def jsonObject =
  """
  [
  {
  "name" : "Manikant",
  "Organization" : "TCS",
  "City"  : "Visakhapatnam"
  },
  {
  "name" : "Aditya",
  "Job" : "Graphic Designer",
  "City"  : "Eluru"
  }
  ]
  """

  * print jsonObject
  * print jsonObject[0]
  * print jsonObject[0].name
  * print jsonObject[1]

  Scenario: JSON reader parser 2

    * def jsonObjectComplex =
  """

  {"widget": {
    "debug": "on",
    "window": {
        "title": "Sample Konfabulator Widget",
        "name": "main_window",
        "width": 500,
        "height": 500
    },
    "image": {
        "src": "Images/Sun.png",
        "name": "sun1",
        "hOffset": 250,
        "vOffset": 250,
        "alignment": "center"
    },
    "text": {
        "data": "Click Here",
        "size": 36,
        "style": "bold",
        "name": "text1",
        "hOffset": 250,
        "vOffset": 100,
        "alignment": "center",
        "onMouseUp": "sun1.opacity = (sun1.opacity / 100) * 90;"
    }
}}

  """

    * print jsonObjectComplex
    * print jsonObjectComplex.widget
    * print jsonObjectComplex.widget.window.title
    * print jsonObjectComplex.widget.image.src