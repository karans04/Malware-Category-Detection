.class Lname/ratson/cordova/admob/banner/BannerExecutor$1;
.super Ljava/lang/Object;
.source "BannerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/banner/BannerExecutor;->prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lname/ratson/cordova/admob/banner/BannerExecutor;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 64
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$000(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v1

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 69
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    new-instance v2, Lcom/google/android/gms/ads/AdView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$102(Lname/ratson/cordova/admob/banner/BannerExecutor;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;

    .line 71
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v2

    iget-object v2, v2, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v2}, Lname/ratson/cordova/admob/AdMobConfig;->getBannerAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v2

    iget-object v2, v2, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v2, v2, Lname/ratson/cordova/admob/AdMobConfig;->adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 73
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    new-instance v2, Lname/ratson/cordova/admob/banner/BannerListener;

    iget-object v3, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-direct {v2, v3}, Lname/ratson/cordova/admob/banner/BannerListener;-><init>(Lname/ratson/cordova/admob/banner/BannerExecutor;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 75
    :cond_0
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    :cond_1
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerVisible:Z

    .line 80
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v2

    invoke-virtual {v2}, Lname/ratson/cordova/admob/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 85
    const-string v1, "banner"

    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$500(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v2

    iget-object v2, v2, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v2}, Lname/ratson/cordova/admob/AdMobConfig;->getBannerAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 88
    return-void
.end method
