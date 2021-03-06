import requests

URL = "http://.127.0.0.1:5000/users/"

SAMPLE_USER = {
    "first_name": "John",
    "last_name": "Doe",
    "hobbies": "Hiking"
}

def create_user(first_name, last_name, hobbies):
    user_data = SAMPLE_USER
    user_data["first_name"] = first_name
    user_data["last_name"] = last_name
    user_data["hobbies"] = hobbies
    response = requests.post(URL, json=user_data)
    if response.status_code == 204:
        print("Successfully created new user.")
    else:
        print("Something went wrong while trying to create user.")

if __name__== "__main__":
    first_name = input("enter a first name:")
    last_name = input("Enter last name: ")
    hobbies = input("Enter hobbies:")
    create_user(first_name, last_name, hobbies)