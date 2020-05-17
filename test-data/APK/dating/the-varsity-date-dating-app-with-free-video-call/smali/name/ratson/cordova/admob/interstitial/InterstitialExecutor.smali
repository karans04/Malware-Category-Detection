.class public Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;
.super Lname/ratson/cordova/admob/AbstractExecutor;
.source "InterstitialExecutor.java"


# instance fields
.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Lname/ratson/cordova/admob/AdMob;)V
    .locals 0
    .param p1, "plugin"    # Lname/ratson/cordova/admob/AdMob;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lname/ratson/cordova/admob/AbstractExecutor;-><init>(Lname/ratson/cordova/admob/AdMob;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$100(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$202(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;
    .param p1, "x1"    # Lcom/google/android/gms/ads/InterstitialAd;

    .prologue
    .line 16
    iput-object p1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$300(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$400(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$500(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$600(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$700(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$800(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 16
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method


# virtual methods
.method public createAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 5
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 67
    iget-object v3, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v3, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    .line 68
    .local v0, "config":Lname/ratson/cordova/admob/AdMobConfig;
    iget-object v3, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v1, v3, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 70
    .local v1, "cordova":Lorg/apache/cordova/CordovaInterface;
    invoke-virtual {v0, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setInterstitialOptions(Lorg/json/JSONObject;)V

    .line 72
    move-object v2, p2

    .line 73
    .local v2, "delayCallback":Lorg/apache/cordova/CallbackContext;
    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;

    invoke-direct {v4, p0, v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;-><init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    const/4 v3, 0x0

    return-object v3
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 95
    iput-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 97
    :cond_0
    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "interstitial"

    return-object v0
.end method

.method public isReady(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 3
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 156
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 158
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;

    invoke-direct {v2, p0, p1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;-><init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    const/4 v1, 0x0

    return-object v1
.end method

.method public prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 5
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 32
    iget-object v3, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v3, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    .line 33
    .local v0, "config":Lname/ratson/cordova/admob/AdMobConfig;
    iget-object v3, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v1, v3, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 34
    .local v1, "cordova":Lorg/apache/cordova/CordovaInterface;
    invoke-virtual {v0, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setInterstitialOptions(Lorg/json/JSONObject;)V

    .line 36
    move-object v2, p2

    .line 37
    .local v2, "delayCallback":Lorg/apache/cordova/CallbackContext;
    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$1;

    invoke-direct {v4, p0, v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$1;-><init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    const/4 v3, 0x0

    return-object v3
.end method

.method public requestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 5
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v2, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 102
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v2, v2, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v2, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setInterstitialOptions(Lorg/json/JSONObject;)V

    .line 104
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v2, :cond_0

    .line 105
    const-string v2, "interstitialAd is null, call createInterstitialView first"

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-object v4

    .line 109
    :cond_0
    move-object v1, p2

    .line 110
    .local v1, "delayCallback":Lorg/apache/cordova/CallbackContext;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$3;

    invoke-direct {v3, p0, v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$3;-><init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method shouldAutoShow()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-boolean v0, v0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowInterstitial:Z

    return v0
.end method

.method public showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "show"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 126
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v3, "interstitialAd is null, call createInterstitialView first."

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-object v1

    .line 129
    :cond_0
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 131
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;

    invoke-direct {v2, p0, p2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;-><init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method
