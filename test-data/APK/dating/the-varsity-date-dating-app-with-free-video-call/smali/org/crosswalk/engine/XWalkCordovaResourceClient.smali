.class public Lorg/crosswalk/engine/XWalkCordovaResourceClient;
.super Lorg/xwalk/core/XWalkResourceClient;
.source "XWalkCordovaResourceClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkCordovaResourceClient"


# instance fields
.field protected parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method public constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 1
    .param p1, "parentEngine"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 46
    iget-object v0, p1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-direct {p0, v0}, Lorg/xwalk/core/XWalkResourceClient;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 47
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    .line 48
    return-void
.end method


# virtual methods
.method public onReceivedClientCertRequest(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/ClientCertRequest;)V
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "request"    # Lorg/xwalk/core/ClientCertRequest;

    .prologue
    .line 150
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 151
    .local v0, "pluginManager":Lorg/apache/cordova/PluginManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;

    invoke-direct {v2, p2}, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;-><init>(Lorg/xwalk/core/ClientCertRequest;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/PluginManager;->onReceivedClientCertRequest(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/ICordovaClientCertRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->clearLoadTimeoutTimer()V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/XWalkResourceClient;->onReceivedClientCertRequest(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/ClientCertRequest;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "handler"    # Lorg/xwalk/core/XWalkHttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 136
    .local v0, "pluginManager":Lorg/apache/cordova/PluginManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Lorg/crosswalk/engine/XWalkCordovaHttpAuthHandler;

    invoke-direct {v2, p2}, Lorg/crosswalk/engine/XWalkCordovaHttpAuthHandler;-><init>(Lorg/xwalk/core/XWalkHttpAuthHandler;)V

    invoke-virtual {v0, v1, v2, p3, p4}, Lorg/apache/cordova/PluginManager;->onReceivedHttpAuthRequest(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/ICordovaHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->clearLoadTimeoutTimer()V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/XWalkResourceClient;->onReceivedHttpAuthRequest(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/XWalkView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "XWalkCordovaResourceClient"

    const-string v1, "CordovaWebViewClient.onReceivedError: Error code=%s Description=%s URL=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2, p3, p4}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onReceivedSslError(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/XWalkView;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 112
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 117
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 118
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 120
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 129
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 123
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 71
    :try_start_0
    iget-object v5, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v5, p2}, Lorg/apache/cordova/PluginManager;->shouldAllowRequest(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    const-string v5, "XWalkCordovaResourceClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL blocked by whitelist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/plain"

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    invoke-direct {v5, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 93
    :goto_0
    return-object v5

    .line 77
    :cond_0
    iget-object v5, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v3, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 78
    .local v3, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, "origUri":Landroid/net/Uri;
    invoke-virtual {v3, v1}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 82
    .local v2, "remappedUri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;Z)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v4

    .line 84
    .local v4, "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    iget-object v7, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->mimeType:Ljava/lang/String;

    const-string v8, "UTF-8"

    iget-object v9, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-direct {v5, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "origUri":Landroid/net/Uri;
    .end local v2    # "remappedUri":Landroid/net/Uri;
    .end local v3    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v4    # "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    instance-of v5, v0, Ljava/io/FileNotFoundException;

    if-nez v5, :cond_1

    .line 90
    const-string v5, "XWalkCordovaResourceClient"

    const-string v7, "Error occurred while loading a file (returning a 404)."

    invoke-static {v5, v7, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_1
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/plain"

    const-string v8, "UTF-8"

    invoke-direct {v5, v7, v8, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "origUri":Landroid/net/Uri;
    .restart local v2    # "remappedUri":Landroid/net/Uri;
    .restart local v3    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    :cond_2
    move-object v5, v6

    .line 87
    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onNavigationAttempt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
