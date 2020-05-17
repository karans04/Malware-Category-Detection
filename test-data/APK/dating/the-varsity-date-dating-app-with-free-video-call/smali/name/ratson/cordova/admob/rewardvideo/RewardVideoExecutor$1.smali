.class Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;
.super Ljava/lang/Object;
.source "RewardVideoExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

.field final synthetic val$delayCallback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .prologue
    .line 41
    iput-object p1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 44
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$000(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v3

    iget-object v1, v3, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 45
    .local v1, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->clearAd()V

    .line 47
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v4

    invoke-static {v3, v4}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$102(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;Lcom/google/android/gms/ads/reward/RewardedVideoAd;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 48
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$100(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v3

    new-instance v4, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;

    iget-object v5, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-direct {v4, v5}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoListener;-><init>(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 49
    const-string v3, "rewardedvideo"

    iget-object v4, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v4}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$200(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v4

    iget-object v4, v4, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v4}, Lname/ratson/cordova/admob/AdMobConfig;->getRewardedVideoAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    iget-object v4, v3, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->rewardedVideoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    iget-boolean v3, v3, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->isRewardedVideoLoading:Z

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->isRewardedVideoLoading:Z

    .line 54
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "_noRefresh"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 57
    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 59
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$100(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v3

    iget-object v5, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v5}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$300(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v5

    iget-object v5, v5, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v5}, Lname/ratson/cordova/admob/AdMobConfig;->getRewardedVideoAdUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 60
    iget-object v3, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$1;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 62
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    monitor-exit v4

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
