# cookieCutter
 Get a cookie from webview for iOS or MacOS/Sim


Please see `demo` project to get started

Basic Api Guide
```
cookieCutter.getWebviewCookie("domain.name", "cookieName", function(ev)
     if(ev.foundCookie)then
         print("Cookie Result:")
         print(ev.cookie)
     else
         print("no cookie found")
     end

 end )
 ````
