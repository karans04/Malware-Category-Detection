.class Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;
.super Ljava/lang/Object;
.source "RewardVideoExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .prologue
    .line 82
    iput-object p1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$100(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$100(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    .line 88
    .local v0, "rvad":Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 93
    .end local v0    # "rvad":Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    :cond_0
    iget-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 96
    :cond_1
    return-void
.end method
