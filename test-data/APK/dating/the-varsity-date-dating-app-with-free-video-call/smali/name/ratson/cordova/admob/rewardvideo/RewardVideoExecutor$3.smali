.class Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;
.super Ljava/lang/Object;
.source "RewardVideoExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->isReady(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 110
    iput-object p1, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$100(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;->this$0:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-static {v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->access$100(Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method
