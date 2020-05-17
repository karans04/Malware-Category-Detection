.class public Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;
.super Lname/ratson/cordova/admob/AbstractExecutor;
.source "RewardVideoExecutor.java"


# instance fields
.field isRewardedVideoLoading:Z

.field private rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field final rewardedVideoLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lname/ratson/cordova/admob/AdMob;)V
    .locals 1
    .param p1, "plugin"    # Lname/ratson/cordova/admob/AdMob;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lname/ratson/cordova/admob/AbstractExecutor;-><init>(Lname/ratson/cordova/admob/AdMob;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->isRewardedVideoLoading:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoLock:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .prologue
    .line 19
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$100(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .prologue
    .line 19
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object v0
.end method

.method static synthetic access$102(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;Lcom/google/android/gms/ads/reward/RewardedVideoAd;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 0
    .param p0, "x0"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;
    .param p1, "x1"    # Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .prologue
    .line 19
    iput-object p1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object p1
.end method

.method static synthetic access$200(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .prologue
    .line 19
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$300(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .prologue
    .line 19
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method


# virtual methods
.method public clearAd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 73
    iput-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->clearAd()V

    .line 105
    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "rewardvideo"

    return-object v0
.end method

.method public isReady(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 3
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 108
    iget-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 110
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;

    invoke-direct {v2, p0, p1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;-><init>(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    const/4 v1, 0x0

    return-object v1
.end method

.method public prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 37
    iget-object v2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v2, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 38
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v2, v2, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v2, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setRewardVideoOptions(Lorg/json/JSONObject;)V

    .line 40
    move-object v1, p2

    .line 41
    .local v1, "delayCallback":Lorg/apache/cordova/CallbackContext;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;

    invoke-direct {v3, p0, v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;-><init>(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    const/4 v2, 0x0

    return-object v2
.end method

.method shouldAutoShow()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-boolean v0, v0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowRewardVideo:Z

    return v0
.end method

.method public showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "show"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 77
    iget-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v3, "rewardedVideoAd is null, call createRewardVideo first."

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-object v1

    .line 80
    :cond_0
    iget-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 82
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;

    invoke-direct {v2, p0, p2}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;-><init>(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method
