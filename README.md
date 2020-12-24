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

