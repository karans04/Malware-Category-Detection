.class Lname/ratson/cordova/admob/banner/BannerExecutor$4;
.super Ljava/lang/Object;
.source "BannerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/ratson/cordova/admob/banner/BannerExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 176
    iput-object p1, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iput-object p2, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 179
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v7

    if-nez v7, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$700(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v7

    iget-object v0, v7, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 183
    .local v0, "cordova":Lorg/apache/cordova/CordovaInterface;
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iget-boolean v7, v7, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerVisible:Z

    iget-object v8, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$800(Lname/ratson/cordova/admob/banner/BannerExecutor;)Z

    move-result v8

    if-ne v7, v8, :cond_2

    .line 242
    :goto_1
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v7, :cond_0

    .line 243
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v7}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$800(Lname/ratson/cordova/admob/banner/BannerExecutor;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 186
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$900(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v7

    iget-object v5, v7, Lname/ratson/cordova/admob/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 187
    .local v5, "webView":Lorg/apache/cordova/CordovaWebView;
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 188
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    :cond_3
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1000(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v7

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-boolean v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->bannerOverlap:Z

    if-eqz v7, :cond_6

    .line 191
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v3, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v7

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-boolean v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->bannerAtTop:Z

    if-eqz v7, :cond_5

    const/16 v7, 0xa

    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/widget/RelativeLayout;

    move-result-object v7

    if-nez v7, :cond_4

    .line 197
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1202(Lname/ratson/cordova/admob/banner/BannerExecutor;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 198
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getView"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "webView":Lorg/apache/cordova/CordovaWebView;
    :cond_4
    :goto_3
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/widget/RelativeLayout;

    move-result-object v7

    iget-object v8, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 234
    .end local v3    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_4
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 235
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iput-boolean v12, v7, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerVisible:Z

    goto/16 :goto_1

    .line 194
    .restart local v3    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "webView":Lorg/apache/cordova/CordovaWebView;
    :cond_5
    const/16 v7, 0xc

    goto :goto_2

    .line 201
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5    # "webView":Lorg/apache/cordova/CordovaWebView;
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1200(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "webView":Lorg/apache/cordova/CordovaWebView;
    :cond_6
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 210
    .local v6, "wvParentView":Landroid/view/ViewGroup;
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    if-nez v7, :cond_7

    .line 211
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1402(Lname/ratson/cordova/admob/banner/BannerExecutor;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 213
    :cond_7
    if-eqz v6, :cond_8

    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    if-eq v6, v7, :cond_8

    .line 214
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v4, v7

    check-cast v4, Landroid/view/ViewGroup;

    .line 215
    .local v4, "rootView":Landroid/view/ViewGroup;
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 216
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    invoke-direct {v8, v10, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v10, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1300(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    .end local v4    # "rootView":Landroid/view/ViewGroup;
    :cond_8
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1500(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lname/ratson/cordova/admob/AdMob;

    move-result-object v7

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-boolean v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->bannerAtTop:Z

    if-eqz v7, :cond_9

    .line 225
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 229
    :goto_5
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->bringToFront()V

    .line 230
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestLayout()V

    .line 231
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_4

    .line 227
    :cond_9
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$1400(Lname/ratson/cordova/admob/banner/BannerExecutor;)Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v8}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 238
    .end local v5    # "webView":Lorg/apache/cordova/CordovaWebView;
    .end local v6    # "wvParentView":Landroid/view/ViewGroup;
    :cond_a
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-static {v7}, Lname/ratson/cordova/admob/banner/BannerExecutor;->access$100(Lname/ratson/cordova/admob/banner/BannerExecutor;)Lcom/google/android/gms/ads/AdView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 239
    iget-object v7, p0, Lname/ratson/cordova/admob/banner/BannerExecutor$4;->this$0:Lname/ratson/cordova/admob/banner/BannerExecutor;

    iput-boolean v11, v7, Lname/ratson/cordova/admob/banner/BannerExecutor;->bannerVisible:Z

    goto/16 :goto_1
.end method
