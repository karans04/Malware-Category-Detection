.class Lname/ratson/cordova/admob/interstitial/InterstitialListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "InterstitialListener.java"


# instance fields
.field private final executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)V
    .locals 0
    .param p1, "executor"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 16
    iput-object p1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .line 17
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v1, "admob.interstitial.events.CLOSE"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v1, "onDismissInterstitialAd"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->destroy()V

    .line 67
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "error"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    const-string v2, "reason"

    invoke-static {p1}, Lname/ratson/cordova/admob/AbstractExecutor;->getErrorReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "adType"

    iget-object v3, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v3, "admob.interstitial.events.LOAD_FAIL"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v3, "onFailedToReceiveAd"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    return-void

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "adType"

    iget-object v3, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v3, "admob.interstitial.events.EXIT_APP"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v3, "onLeaveToAd"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "AdMob"

    const-string v1, "InterstitialAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v1, "admob.interstitial.events.LOAD"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v1, "onReceiveInterstitialAd"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->shouldAutoShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    .line 54
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v1, "admob.interstitial.events.OPEN"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialListener;->executor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    const-string v1, "onPresentInterstitialAd"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 60
    return-void
.end method
