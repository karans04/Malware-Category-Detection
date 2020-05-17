.class Lname/ratson/cordova/admob/banner/BannerListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "BannerListener.java"


# instance fields
.field private final executor:Lname/ratson/cordova/admob/banner/BannerExecutor;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/banner/BannerExecutor;)V
    .locals 0
    .param p1, "executor"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 17
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    .line 18
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v1, "admob.banner.events.CLOSE"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v1, "onDismissAd"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "error"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v2, "reason"

    invoke-static {p1}, Lname/ratson/cordova/admob/AbstractExecutor;->getErrorReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v2, "adType"

    iget-object v3, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/banner/BannerExecutor;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v3, "admob.banner.events.LOAD_FAIL"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v3, "onFailedToReceiveAd"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 32
    return-void

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "adType"

    iget-object v3, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/banner/BannerExecutor;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v3, "admob.banner.events.EXIT_APP"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 43
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v3, "onLeaveToAd"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "AdMob"

    const-string v1, "BannerAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->shouldAutoShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iget-boolean v0, v0, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerVisible:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    .line 52
    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v1, "admob.banner.events.LOAD"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v1, "admob.banner.events.OPEN"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerListener;->executor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const-string v1, "onPresentAd"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 60
    return-void
.end method
