RESTful API

## Desain URL
- Penamaan url neat, pretty

## HTTP Method
OPTIONS
GET - Ngambil data
POST - Menyimpan / membuat data baru
PATCH - hanya beberapa field
PUT - semua field harus terisi / terubah e.g: email, nama, etc
DELETE - menghapus field

## Response Header (CORS)
Header

Access-Control-Allow-Credentiasl: true
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: [HTTP METHOD]

## HTTP Status Code
200 OK
201 Created
204 No Content
304 Not Modified
400 Bad Request
401 Unauthorized

## Versioning
api.domain.com/v1/
api.domain.com/v2/

## Format Response
- xml
- json, lebih sederhana, sangat populer dan standard
[] = array
{} = object
data[0].type
data[0].attributes.title

PRACTICE - Hands-on
Using microsoft flight framework


## Summary
Client Request to -> Web Server, not DB Server