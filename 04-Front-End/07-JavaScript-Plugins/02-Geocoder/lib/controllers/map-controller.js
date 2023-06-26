import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl";

export default class extends Controller {
    static targets = ["address", "coordinates", "map"]

    connect() {
      console.log("The 'check_all_checkboxes' controller is now loaded!");
    }

    submitForm(event) {
      event.preventDefault();
      const address = this.addressTarget.value;
      fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${encodeURIComponent(address)}.json?access_token=pk.eyJ1Ijoic291emEtdmlsZWxhLWx1Y2FzMDEiLCJhIjoiY2xodDZlc3kzMGZ5NTNkbnpiNngzOG5mYSJ9.jGU9FPFn_Z6hTpBnbOv7KA`)
        .then(response => response.json())
        .then((data) => {
          console.log(data);
          const coordinates = data.features[0].center;
          console.log(coordinates);
          this.displayData(coordinates);
        });
    }

    // displayData(coordinates) {
    //   this.coordinatesTarget.textContent = `Coordinates: ${coordinates[1]}, ${coordinates[0]}`;
    // }

    displayData(coordinates) {
    //   eslint-disable-next-line no-undef
      mapboxgl.accessToken = "pk.eyJ1Ijoic291emEtdmlsZWxhLWx1Y2FzMDEiLCJhIjoiY2xodDZlc3kzMGZ5NTNkbnpiNngzOG5mYSJ9.jGU9FPFn_Z6hTpBnbOv7KA";
      const map = new mapboxgl.Map({
        container: "map",
        style: "mapbox://styles/mapbox/streets-v9",
        center: coordinates,
        zoom: 12
      });
      new mapboxgl.Marker()
        .setLngLat(coordinates)
        .addTo(map);
    }
}
