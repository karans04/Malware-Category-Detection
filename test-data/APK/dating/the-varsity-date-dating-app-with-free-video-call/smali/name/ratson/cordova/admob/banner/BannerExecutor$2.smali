.class Lname/ratson/cordova/admob/banner/BannerExecutor$2;
.super Ljava/lang/Object;
.source "BannerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/banner/BannerExecutor;->requestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

.field final synthetic val$delayCallback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/banner/BannerExecutor;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 116
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$2;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$2;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$2;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$2;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$2;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$600(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v1

    invoke-virtual {v1}, Lname/ratson/cordova/admob/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 124
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$2;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0
.end method
