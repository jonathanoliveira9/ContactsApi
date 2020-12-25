# ContactsAPI
## Overview

ContactsAPi is a application to learning about API.

## Authentication
Access to the API is grantend by providing your email and token that was created an user via console. You can use Postman. Example bellow.
```
Headers
Key                   Value
X-User-Email          test@test.com
X-User-Token          xxxxxxxxxxxxxxxxxx


GET localhost:3000/api/v1/contacts
 [
        {
            "id": 2,
            "name": "Leo Souza",
            "email": "reset@text.com",
            "phone": "+57 955545464",
            "description": "Cool!",
            "user_id": 1,
            "created_at": "2020-12-23T20:38:58.020Z",
            "updated_at": "2020-12-23T20:45:16.680Z"
        }
]

```

## HTTP Responses
Examples below:
### Model: Contact
```
GET Contact List
  - localhost:3000/api/v1/contacts
  Filter by Page
   - localhost:3000/api/v1/contacts?page=1
GET Contact
  - localhost:3000/api/v1/contacts/1
POST Create Contact
  - localhost:3000/api/v1/contacts.json
  Body:
        {
        "name": "text",
        "email": "tes@tra.cm",
        "phone": "45"
        
        }
PUT Update Contact
  - localhost:3000/api/v1/contacts/<id>
  Body:
        {
        "name": "text",
        "email": "tes@tra.cm",
        "phone": "45"
        
        }

DELETE Delete Contact
   - localhost:3000/api/v1/contacts/<id>
```
### Model: Address
Address belongs to contact.

```
GET List Addresses
  - localhost:3000/api/v1/contacts/
  Response:
  {
    "id": 2,
    "name": "Madonna Rice II",
    "email": "leeanne_stracke@vonrueden-davis.com",
    "phone": "7820161526",
    "description": "[\"Et sequi ad.\", \"Tempore corrupti quia.\", \"Dicta aut error.\"]",
    "user_id": 1,
    "created_at": "2020-12-24T21:07:07.028Z",
    "updated_at": "2020-12-24T21:07:07.028Z",
    "addresses": [
        {
            "id": 2,
            "street": "Vance Mall",
            "city": "Lake Jamieton",
            "state": "Montana",
            "state_full": null,
            "zip_code": "27324",
            "created_at": "2020-12-24T21:07:07.142Z",
            "updated_at": "2020-12-24T21:07:07.142Z",
            "contact_id": 2
        }
    ]
}

GET Address
  - localhost:3000/api/v1/contacts/1
  Response:
  {
    "id": 2,
    "name": "Madonna Rice II",
    "email": "leeanne_stracke@vonrueden-davis.com",
    "phone": "7820161526",
    "description": "[\"Et sequi ad.\", \"Tempore corrupti quia.\", \"Dicta aut error.\"]",
    "user_id": 1,
    "created_at": "2020-12-24T21:07:07.028Z",
    "updated_at": "2020-12-24T21:07:07.028Z",
    "addresses": [
        {
            "id": 2,
            "street": "Vance Mall",
            "city": "Lake Jamieton",
            "state": "Montana",
            "state_full": null,
            "zip_code": "27324",
            "created_at": "2020-12-24T21:07:07.142Z",
            "updated_at": "2020-12-24T21:07:07.142Z",
            "contact_id": 2
        }
    ]
}

POST Create Address
  - localhost:3000/api/v1/contacts/1
  Body: 
  {
   "addresses_attributes": [
  	{
  		"street": "3849  Ventura Drive",
  		"city": "GREEN LANE",
  		"state": "PA",
  		"state_full": "Pennsylvania",
  		"zip_code": "18054"
  	},
  	{
 		"street": "3849  Ventura Drive",
  		"city": "GREEN LANE",
  		"state": "PA",
  		"state_full": "Pennsylvania",
  		"zip_code": "18054"
  	}
  	]
}

PUT Update Addresses
   - localhost:3000/api/v1/contacts/1
   Body:
   {
     "addresses_attributes": [{
      "id": "<id>",
      "street": "Vance M"
     }]
   }

URL PUT - localhost:3000/api/v1/contacts/4
DELETE Delete Address
  Body:
     {
       "addresses_attributes": [
        {

         "id": "<id>",
         "_destroy": "true"
        }
        ]
     }
```

