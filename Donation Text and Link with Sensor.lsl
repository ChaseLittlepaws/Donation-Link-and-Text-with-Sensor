string text = "Donate to the Zebra Coaltition, an LGBT nonprofit.";
vector white = <1.0, 1.0, 1.0>;
float opaque = 1.0;
float trans = 0.0;

default 
{
    state_entry()
    {
        llSensorRepeat("","", AGENT, 3.0, PI, 1.0); ///set to 1 second for testing
    }
    touch_start(integer num_detected)
    {
        key toucher = llDetectedKey(0);
        string info = "Open the Zebra Coalition website?";
        string url = "https://zebrayouth.org/";
        llLoadURL(toucher, info, url);
    }
    sensor (integer num_detected)
    {
        llSetText(text, white, opaque);
    }
    no_sensor()
    {
        llSetText("", white, trans);
    }
}