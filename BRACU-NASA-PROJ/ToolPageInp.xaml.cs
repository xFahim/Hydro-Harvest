using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using GMap.NET;
using GMap.NET.MapProviders;
using System.Windows.Shapes;
using System.Collections.Generic;
using LiveCharts;
using LiveCharts.Wpf;
using System.Net.Http;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace BRACU_NASA_PROJ
{
    /// <summary>
    /// Interaction logic for ToolPageInp.xaml
    /// </summary>
    public partial class ToolPageInp : Page
    {
        public SeriesCollection RainfallSeriesCollection { get; set; }
        public List<string> Months { get; set; }
        public Func<double, string> Formatter { get; set; }


        public ToolPageInp()
        {
            InitializeComponent();

      

            List<Location> locations = new List<Location>
            {
                new Location { Name = "Dhaka", Latitude = 23.8103, Longitude = 90.4125 },
                new Location { Name = "Chittagong", Latitude = 22.3569, Longitude = 91.7832 },
                // Add all 64 districts with their respective coordinates
            };

            LocationComboBox.ItemsSource = locations;
            LocationComboBox.DisplayMemberPath = "Name";  // Shows district name
            LocationComboBox.SelectedValuePath = "Latitude";

            // Initialize GMap settings
            mapControl.MapProvider = GMapProviders.GoogleMap;  // Set Google Maps as the map provider
            GMaps.Instance.Mode = AccessMode.ServerOnly;  // Access map tiles from server

            // Set default position to Dhaka (latitude: 23.8103, longitude: 90.4125)
            mapControl.Position = new PointLatLng(23.8103, 90.4125);

            // Set zoom level (0 = world view, 18 = street view)
            mapControl.MinZoom = 1;
            mapControl.MaxZoom = 20;
            mapControl.Zoom = 12;  // Set initial zoom level

            // Enable map dragging and zooming
            mapControl.CanDragMap = true;
            mapControl.DragButton = MouseButton.Left;

            // Additional settings for better performance
            mapControl.ShowCenter = false;  // Hide the center cross
            mapControl.IgnoreMarkerOnMouseWheel = true;  // Ignore markers when zooming

            LocationComboBox.SelectedIndex = 0;
        }

        private async Task GetCurrentLocationAsync()
        {
            
        }

        private void GetInterval_Click(object sender, RoutedEventArgs e)
        {

        }

        private async Task<List<RainfallData>> CallApiWithYearAsync(int year, double latitude, double longitude, int radius)
        {
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    // Set up the URL with query parameters
                    string url = $"http://206.189.235.44:81/predictions/precipitation/yearly?year={year}&latitude={latitude}&longitude={longitude}&radius={radius}";

                    // Send the POST request (no body needed)
                    HttpResponseMessage response = await client.PostAsync(url, null);

                    if (response.IsSuccessStatusCode)
                    {
                        string jsonResponse = await response.Content.ReadAsStringAsync();
                       // MessageBox.Show(jsonResponse);

                        // Deserialize the JSON response into a list of RainfallData objects
                        var rainfallDataList = JsonSerializer.Deserialize<List<RainfallData>>(jsonResponse);


                        // Return the deserialized list
                        return rainfallDataList;
                    }
                    else
                    {
                        Console.WriteLine($"Error: {response.StatusCode}");
                        return null;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Exception: " + ex.Message);
                    return null;
                }
            }
        }
        private async Task CallApiAsync(double latitude, double longitude, int radius)
        {
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    // Set up the base URL with the query parameters
                    string url = $"http://206.189.235.44:81/predictions/precipitation?latitude={latitude}&longitude={longitude}&radius={radius}";

                    // Set up the request message
                    HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, url);
                    request.Headers.Add("Accept", "application/json");

                    // Send the request
                    HttpResponseMessage response = await client.SendAsync(request);

                    // Check if the response is successful
                    if (response.IsSuccessStatusCode)
                    {
                        string responseData = await response.Content.ReadAsStringAsync();
                        // Handle the response data (you can display it or parse it here)
                        Console.WriteLine("Response data: " + responseData);
                    }
                    else
                    {
                        // Handle error response
                        Console.WriteLine("Error: " + response.StatusCode);
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions (network issues, etc.)
                    Console.WriteLine("Exception: " + ex.Message);
                }
            }
        }

        private async void GetResBtn_Click(object sender, RoutedEventArgs e)
        {
            Location l = LocationComboBox.SelectedItem as Location;
            int year = 0, rad = 0;

            if (!string.IsNullOrEmpty(YearBox.Text))
            {
                int t = 0;
                if (int.TryParse(YearBox.Text.Trim(), out t))
                {
                    year = t;
                }
                else
                {
                    MessageBox.Show("Invalid year. try again");
                    return;
                }
                
            }

            if (!string.IsNullOrEmpty(RadBox.Text))
            {
                int t = 0;
                if (int.TryParse(RadBox.Text.Trim(), out t))
                {
                    rad = t;
                }
                else
                {
                    MessageBox.Show("Invalid Radius. try again");
                    return;
                }

            }

            var data = await CallApiWithYearAsync(year, l.Latitude, l.Longitude, rad);

            if (data != null)
            {
                RainfallDataGrid.ItemsSource = data;

                InitializeRainfallChart();

                RainfallSeriesCollection[0].Values.Clear();
                
                // Populate rainfall data into the chart
                foreach (var d in data)
                {
                    RainfallSeriesCollection[0].Values.Add(d.HourlyRainfallInMm );
                }
            }
            else
            {
                MessageBox.Show("Error fetching data.");
            }

        }

        private void InitializeRainfallChart()
        {
            RainfallSeriesCollection = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = "Rainfall",
                    Values = new ChartValues<double>()
                }
            };

            Months = new List<string> { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
            Formatter = value => value.ToString("N");

            // Bind the SeriesCollection to the Chart
            RainfallChart.Series = RainfallSeriesCollection;
            DataContext = this;
        }

        private void GetCurrLoc_Click(object sender, RoutedEventArgs e)
        {
            Location l = LocationComboBox.Items[0] as Location;
            MessageBox.Show("Current cords are set : " + l.Latitude.ToString() + "  -  " +  l.Longitude.ToString());
        }
    }

    public class Location
    {
        public string Name { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
    }

    // Define a model for the rainfall data
    public class RainfallData
    {
        [JsonPropertyName("hourly_rainfall_in_mm")]
        public double HourlyRainfallInMm { get; set; }

        [JsonPropertyName("month")]
        public int Month { get; set; }

        [JsonPropertyName("year")]
        public int Year { get; set; }
    }
}
