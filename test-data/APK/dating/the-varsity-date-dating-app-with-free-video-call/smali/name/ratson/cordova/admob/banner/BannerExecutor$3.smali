.class Lname/ratson/cordova/admob/banner/BannerExecutor$3;
.super Ljava/lang/Object;
.source "BannerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/banner/BannerExecutor;->removeAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 137
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v1}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 146
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$102(Lname/ratson/cordova/admob/banner/BannerExecutor;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;

    .line 148
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerVisible:Z

    .line 149
    iget-object v1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$3;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 150
    return-void
.end method
