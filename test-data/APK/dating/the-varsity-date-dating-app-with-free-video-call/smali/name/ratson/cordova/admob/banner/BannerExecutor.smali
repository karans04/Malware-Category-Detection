.class public Lname/ratson/cordova/admob/banner/BannerExecutor;
.super Lname/ratson/cordova/admob/AbstractExecutor;
.source "BannerExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerExecutor"


# instance fields
.field private adView:Lcom/google/android/gms/ads/AdView;

.field private adViewLayout:Landroid/widget/RelativeLayout;

.field private bannerShow:Z

.field bannerVisible:Z

.field private parentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lname/ratson/cordova/admob/AdMob;)V
    .locals 1
    .param p1, "plugin"    # Lname/ratson/cordova/admob/AdMob;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lname/ratson/cordova/admob/AbstractExecutor;-><init>(Lname/ratson/cordova/admob/AdMob;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adViewLayout:Landroid/widget/RelativeLayout;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerShow:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerVisible:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$1000(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$102(Lname/ratson/cordova/admob/banner/BannerExecutor;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;
    .locals 0
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;
    .param p1, "x1"    # Lcom/google/android/gms/ads/AdView;

    .prologue
    .line 20
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    return-object p1
.end method

.method static synthetic access$1100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$1200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lname/ratson/cordova/admob/banner/BannerExecutor;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 20
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adViewLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    invoke-direct {p0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->getWebView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->parentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1402(Lname/ratson/cordova/admob/banner/BannerExecutor;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 20
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->parentView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1500(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$500(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$600(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$700(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method static synthetic access$800(Lname/ratson/cordova/admob/banner/BannerExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-boolean v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerShow:Z

    return v0
.end method

.method static synthetic access$900(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;
    .locals 1
    .param p0, "x0"    # Lname/ratson/cordova/admob/banner/BannerExecutor;

    .prologue
    .line 20
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    return-object v0
.end method

.method private getWebView()Landroid/view/View;
    .locals 5

    .prologue
    .line 279
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v1, v2, Lname/ratson/cordova/admob/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 281
    .local v1, "webView":Lorg/apache/cordova/CordovaWebView;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getView"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v1    # "webView":Lorg/apache/cordova/CordovaWebView;
    :goto_0
    return-object v2

    .line 282
    .restart local v1    # "webView":Lorg/apache/cordova/CordovaWebView;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    check-cast v1, Landroid/view/View;

    .end local v1    # "webView":Lorg/apache/cordova/CordovaWebView;
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 267
    iput-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    .line 269
    :cond_0
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 271
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 272
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    :cond_1
    iput-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adViewLayout:Landroid/widget/RelativeLayout;

    .line 276
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "banner"

    return-object v0
.end method

.method public pauseAd()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 255
    :cond_0
    return-void
.end method

.method public prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 3
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 62
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v1, v1, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v1, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setBannerOptions(Lorg/json/JSONObject;)V

    .line 64
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lname/ratson/cordova/admob/banner/BannerExecutor$1;

    invoke-direct {v2, p0, p2}, Lname/ratson/cordova/admob/banner/BannerExecutor$1;-><init>(Lname/ratson/cordova/admob/banner/BannerExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 132
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v2, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 134
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    const-string v2, "BannerExecutor"

    const-string v3, "executeDestroyBannerView"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object v1, p1

    .line 137
    .local v1, "delayCallback":Lorg/apache/cordova/CallbackContext;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lname/ratson/cordova/admob/banner/BannerExecutor$3;

    invoke-direct {v3, p0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor$3;-><init>(Lname/ratson/cordova/admob/banner/BannerExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    const/4 v2, 0x0

    return-object v2
.end method

.method public requestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 5
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v2, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 108
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v2, v2, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v2, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setBannerOptions(Lorg/json/JSONObject;)V

    .line 110
    iget-object v2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    if-nez v2, :cond_0

    .line 111
    const-string v2, "adView is null, call createBannerView first"

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-object v4

    .line 115
    :cond_0
    move-object v1, p2

    .line 116
    .local v1, "delayCallback":Lorg/apache/cordova/CallbackContext;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lname/ratson/cordova/admob/banner/BannerExecutor$2;

    invoke-direct {v3, p0, v1}, Lname/ratson/cordova/admob/banner/BannerExecutor$2;-><init>(Lname/ratson/cordova/admob/banner/BannerExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resumeAd()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 261
    :cond_0
    return-void
.end method

.method shouldAutoShow()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-boolean v0, v0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowBanner:Z

    return v0
.end method

.method public showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "show"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 169
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->plugin:Lname/ratson/cordova/admob/AdMob;

    iget-object v0, v1, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 170
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    iput-boolean p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerShow:Z

    .line 172
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor;->adView:Lcom/google/android/gms/ads/AdView;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v3, "adView is null, call createBannerView first."

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-object v1

    .line 176
    :cond_0
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lname/ratson/cordova/admob/banner/BannerExecutor$4;

    invoke-direct {v2, p0, p2}, Lname/ratson/cordova/admob/banner/BannerExecutor$4;-><init>(Lname/ratson/cordova/admob/banner/BannerExecutor;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    const/4 v1, 0x0

    goto :goto_0
.end method
