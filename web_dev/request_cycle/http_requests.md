# 9.1 Release 0

**Terms**
URI - _"uniform resource identifier"_

**What are some common HTTP request codes?**
- Codes are classified by the first digit of the three:
    + 1xx - _Informational_
    + 2xx - _Success_
    + 3xx - _Redirected_
    + 4xx - _Client error_
    + 5xx - _Server error_
- 200 "OK" - _The request was successful_
- 300 "Multiple choices" - _Request has several choices that cannot be resolved into one_
- 301 "Moved Permanently" - _Request has been assigned permanently elsewhere, should use new URI_
- 302 "Found" - _Request has been temporarily moved, keep using same URI_
- 304 "Not Modified" - _I'm uncertain about the definition_
- 307 "Temporary Redirect" - _Similar to 302, request exists temporarily under different URI_
- 400 "Bad Request" - _The request couldn't be understood by the server due to syntax error_
- 401 "Unauthorized" - _The request requires user authentication_
- 403 "Forbidden" - _The server understood the request but was like, "nah"_
- 404 "Not found" - _Server didn't find anything matching the request_
- 410 "Gone" - _The request is no logner available at the server and no forwarding address is known_
- 500 "Internal Service Error" - _The server encountered an internal error_
- 501 "Not Implemented" - _The server does not support the functionality required to fulfill the request_
- 503 "Service Unavailable" - _The web server is currently unavailable to handle your request_
- 550 "Permission Denied" - _The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting_

**What's the difference between a GET and POST request?**
*GET* _Requests data from a specified source_
*POST* _Submits data to be processed by a specified source_

**What is a cookie?**
- In essence, a cookie is a small piece of data sent from a website that your browser will store
- It helps a site remeber "stateful" information, like the status of a shopping cart, whether or not the user is logged-in, autofill fields, or recording the user's browsing history
- Cookies are a POST sent back to the server anytime to request/GET info from it