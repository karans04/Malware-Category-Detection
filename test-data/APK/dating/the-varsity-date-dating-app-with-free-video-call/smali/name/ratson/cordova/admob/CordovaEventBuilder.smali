.class public Lname/ratson/cordova/admob/CordovaEventBuilder;
.super Ljava/lang/Object;
.source "CordovaEventBuilder.java"


# instance fields
.field private eventName:Ljava/lang/String;

.field private jsonData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lname/ratson/cordova/admob/CordovaEventBuilder;->eventName:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, "js":Ljava/lang/StringBuilder;
    const-string v1, "javascript:cordova.fireDocumentEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lname/ratson/cordova/admob/CordovaEventBuilder;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lname/ratson/cordova/admob/CordovaEventBuilder;->jsonData:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lname/ratson/cordova/admob/CordovaEventBuilder;->jsonData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lname/ratson/cordova/admob/CordovaEventBuilder;->jsonData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withData(Ljava/lang/String;)Lname/ratson/cordova/admob/CordovaEventBuilder;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lname/ratson/cordova/admob/CordovaEventBuilder;->jsonData:Ljava/lang/String;

    .line 15
    return-object p0
.end method

.method public withData(Lorg/json/JSONObject;)Lname/ratson/cordova/admob/CordovaEventBuilder;
    .locals 1
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string v0, ""

    invoke-virtual {p0, v0}, Lname/ratson/cordova/admob/CordovaEventBuilder;->withData(Ljava/lang/String;)Lname/ratson/cordova/admob/CordovaEventBuilder;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/ratson/cordova/admob/CordovaEventBuilder;->withData(Ljava/lang/String;)Lname/ratson/cordova/admob/CordovaEventBuilder;

    move-result-object v0

    goto :goto_0
.end method
