
local cookieCutter = require("plugin.cookieCutter")
local widget = require("widget")
local json = require("json")
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor( 0,.5,0 )

local webView = native.newWebView( display.contentCenterX, display.contentCenterY-100, 320, 280 )
webView:request( "https://samesitetest.com/cookies/set" )
local getCookies = widget.newButton( {
        x = display.contentCenterX,
        y = display.contentCenterY + 200,
        id = "getCookie",
        labelColor = { default={ 1, 1, 1 }, over={0, 0, 0, 0.5 } },
        label = "getCookie",
        onEvent = function ( e )
                if (e.phase == "ended") then
                        cookieCutter.getWebviewCookie("samesitetest.com", "LaxCookie", function(ev)
                            if(ev.foundCookie)then
                                print("Cookie Result:")
                                print(ev.cookie)
                            else
                                print("no cookie found")
                            end
                            
                        end )
                end
        end
})
