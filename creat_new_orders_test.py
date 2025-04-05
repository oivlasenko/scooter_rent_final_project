import sender_stand_request
import data

def test_get_new_order_by_track():
    new_order_response = sender_stand_request.post_new_order(data.order_body)
    track = new_order_response.json()["track"]

    get_order_by_track_response = sender_stand_request.get_order_by_track(track)
    
    assert get_order_by_track_response.status_code == 200