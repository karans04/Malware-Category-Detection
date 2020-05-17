.class public abstract Lname/ratson/cordova/admob/AbstractExecutor;
.super Ljava/lang/Object;
.source "AbstractExecutor.java"


# instance fields
.field protected plugin:Lname/ratson/cordova/admob/AdMob;


# direct methods
.method public constructor <init>(Lname/ratson/cordova/admob/AdMob;)V
    .locals 0
    .param p1, "plugin"    # Lname/ratson/cordova/admob/AdMob;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lname/ratson/cordova/admob/AbstractExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    .line 22
    return-void
.end method

.method public static getErrorReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 28
    const-string v0, ""

    .line 29
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 43
    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    const-string v0, "Internal error"

    .line 32
    goto :goto_0

    .line 34
    :pswitch_1
    const-string v0, "Invalid request"

    .line 35
    goto :goto_0

    .line 37
    :pswitch_2
    const-string v0, "Network Error"

    .line 38
    goto :goto_0

    .line 40
    :pswitch_3
    const-string v0, "No fill"

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lname/ratson/cordova/admob/AbstractExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v0, Lname/ratson/cordova/admob/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public fireAdEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Lname/ratson/cordova/admob/CordovaEventBuilder;

    invoke-direct {v1, p1}, Lname/ratson/cordova/admob/CordovaEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lname/ratson/cordova/admob/CordovaEventBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "js":Ljava/lang/String;
    invoke-direct {p0, v0}, Lname/ratson/cordova/admob/AbstractExecutor;->loadJS(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    new-instance v1, Lname/ratson/cordova/admob/CordovaEventBuilder;

    invoke-direct {v1, p1}, Lname/ratson/cordova/admob/CordovaEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lname/ratson/cordova/admob/CordovaEventBuilder;->withData(Lorg/json/JSONObject;)Lname/ratson/cordova/admob/CordovaEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lname/ratson/cordova/admob/CordovaEventBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "js":Ljava/lang/String;
    invoke-direct {p0, v0}, Lname/ratson/cordova/admob/AbstractExecutor;->loadJS(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public abstract getAdType()Ljava/lang/String;
.end method
