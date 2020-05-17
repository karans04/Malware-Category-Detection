.class Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;
.super Ljava/lang/Object;
.source "InterstitialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 131
    iput-object p1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$800(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v1

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    .line 139
    .local v0, "config":Lname/ratson/cordova/admob/AdMobConfig;
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 141
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 144
    :cond_2
    iget-boolean v1, v0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowInterstitial:Z

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v2, "Interstital not ready yet"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
