import consumer from "channels/consumer"

consumer.subscriptions.create("RideUpdatesChannel", {
  received(data) {
    alert(`Ride updated! Status: ${data.status}`);
    location.reload(); // Refresh page to show updated riders
  }
});