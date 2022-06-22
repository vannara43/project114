# Response Object Requirements

Every return statment from your Api Controllers will have a like the following:
```
 return Request.CreateResponse(HttpStatusCode.OK, response);

```

The `response` object in this line should be or inherit from one of the following classes

```

BaseResponse
ErrorResponse
ItemResponse<T>  
ItemsResponse<T> 
SuccessResponse

```