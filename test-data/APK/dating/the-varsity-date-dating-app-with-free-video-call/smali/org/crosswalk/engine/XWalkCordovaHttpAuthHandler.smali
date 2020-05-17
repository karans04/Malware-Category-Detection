.class public Lorg/crosswalk/engine/XWalkCordovaHttpAuthHandler;
.super Ljava/lang/Object;
.source "XWalkCordovaHttpAuthHandler.java"

# interfaces
.implements Lorg/apache/cordova/ICordovaHttpAuthHandler;


# instance fields
.field private final handler:Lorg/xwalk/core/XWalkHttpAuthHandler;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkHttpAuthHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xwalk/core/XWalkHttpAuthHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaHttpAuthHandler;->handler:Lorg/xwalk/core/XWalkHttpAuthHandler;

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaHttpAuthHandler;->handler:Lorg/xwalk/core/XWalkHttpAuthHandler;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkHttpAuthHandler;->cancel()V

    .line 41
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaHttpAuthHandler;->handler:Lorg/xwalk/core/XWalkHttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/XWalkHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
