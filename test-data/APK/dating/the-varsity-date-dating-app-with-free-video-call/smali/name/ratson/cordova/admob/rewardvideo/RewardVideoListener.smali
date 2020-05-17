.class Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;
.super Ljava/lang/Object;
.source "RewardVideoListener.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# instance fields
.field private final executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)V
    .locals 0
    .param p1, "executor"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .line 18
    return-void
.end method


# virtual methods
.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 4
    .param p1, "reward"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "adType"

    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "rewardType"

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "rewardAmount"

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v3, "admob.rewardvideo.events.REWARD"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v1, "admob.rewardvideo.events.CLOSE"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->clearAd()V

    .line 75
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 22
    iget-object v2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    iget-object v3, v2, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoLock:Ljava/lang/Object;

    monitor-enter v3

    .line 23
    :try_start_0
    iget-object v2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->isRewardedVideoLoading:Z

    .line 24
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "error"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string v2, "reason"

    invoke-static {p1}, Lname/ratson/cordova/admob/AbstractExecutor;->getErrorReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v2, "adType"

    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    :goto_0
    iget-object v2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v3, "admob.rewardvideo.events.LOAD_FAIL"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 35
    return-void

    .line 24
    .end local v0    # "data":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 31
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "adType"

    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    iget-object v2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v3, "admob.rewardvideo.events.EXIT_APP"

    invoke-virtual {v2, v3, v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    iget-object v1, v0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->isRewardedVideoLoading:Z

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const-string v0, "AdMob"

    const-string v1, "RewardedVideoAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v1, "admob.rewardvideo.events.LOAD"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->shouldAutoShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    .line 59
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v1, "admob.rewardvideo.events.OPEN"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v1, "admob.rewardvideo.events.CLOSE"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;->executor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const-string v1, "admob.rewardvideo.events.START"

    invoke-virtual {v0, v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->fireAdEvent(Ljava/lang/String;)V

    .line 69
    return-void
.end method
