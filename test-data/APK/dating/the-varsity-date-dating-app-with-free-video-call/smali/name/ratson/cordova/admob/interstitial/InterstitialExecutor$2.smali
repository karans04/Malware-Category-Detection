.class Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;
.super Ljava/lang/Object;
.source "InterstitialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->createAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

.field final synthetic val$delayCallback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .prologue
    .line 73
    iput-object p1, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$400(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v2

    iget-object v0, v2, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    .line 77
    .local v0, "config":Lname/ratson/cordova/admob/AdMobConfig;
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$500(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v2

    iget-object v1, v2, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 79
    .local v1, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->destroy()V

    .line 80
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    new-instance v3, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$202(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 81
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v2

    invoke-virtual {v0}, Lname/ratson/cordova/admob/AdMobConfig;->getInterstitialAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v2

    new-instance v3, Lname/ratson/cordova/admob/interstitial/InterstitialListener;

    iget-object v4, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-direct {v3, v4}, Lname/ratson/cordova/admob/interstitial/InterstitialListener;-><init>(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 83
    const-string v2, "interstitial"

    invoke-virtual {v0}, Lname/ratson/cordova/admob/AdMobConfig;->getInterstitialAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$200(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v2

    iget-object v3, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->this$0:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-static {v3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->access$600(Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v3

    invoke-virtual {v3}, Lname/ratson/cordova/admob/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 85
    iget-object v2, p0, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor$2;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 86
    return-void
.end method
