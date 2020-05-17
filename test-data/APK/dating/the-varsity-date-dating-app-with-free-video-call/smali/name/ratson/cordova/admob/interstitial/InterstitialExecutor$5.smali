.class Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;
.super Ljava/lang/Object;
.source "InterstitialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->isReady(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 158
    iput-object p1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method
