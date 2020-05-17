.class Lorg/crosswalk/engine/XWalkCordovaCookieManager;
.super Ljava/lang/Object;
.source "XWalkCordovaCookieManager.java"

# interfaces
.implements Lorg/apache/cordova/ICordovaCookieManager;


# instance fields
.field protected cookieManager:Lorg/xwalk/core/XWalkCookieManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    .line 29
    new-instance v0, Lorg/xwalk/core/XWalkCookieManager;

    invoke-direct {v0}, Lorg/xwalk/core/XWalkCookieManager;-><init>()V

    iput-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    .line 30
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkCookieManager;->removeAllCookie()V

    .line 46
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkCookieManager;->flushCookieStore()V

    .line 50
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/XWalkCookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/XWalkCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setCookiesEnabled(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/XWalkCookieManager;->setAcceptCookie(Z)V

    .line 34
    return-void
.end method
