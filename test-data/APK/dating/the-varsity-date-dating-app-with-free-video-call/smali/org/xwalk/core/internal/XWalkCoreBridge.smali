.class Lorg/xwalk/core/internal/XWalkCoreBridge;
.super Ljava/lang/Object;
.source "XWalkCoreBridge.java"


# static fields
.field private static final BRIDGE_PACKAGE:Ljava/lang/String; = "org.xwalk.core.internal"

.field private static final WRAPPER_PACKAGE:Ljava/lang/String; = "org.xwalk.core"

.field private static sInstance:Lorg/xwalk/core/internal/XWalkCoreBridge;


# instance fields
.field private mBridgeContext:Landroid/content/Context;

.field private mWrapperLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkCoreBridge;->mBridgeContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p0, Lorg/xwalk/core/internal/XWalkCoreBridge;->mWrapperLoader:Ljava/lang/ClassLoader;

    .line 30
    const-string v3, "XWalkContent"

    invoke-virtual {p0, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 31
    .local v2, "xwalkContent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "JavascriptInterface"

    invoke-virtual {p0, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "javascriptInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v3, "setJavascriptInterfaceClass"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {v1, v2, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 34
    .local v1, "method":Lorg/xwalk/core/internal/ReflectMethod;
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v3}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lorg/xwalk/core/internal/XWalkCoreBridge;->sInstance:Lorg/xwalk/core/internal/XWalkCoreBridge;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 23
    new-instance v0, Lorg/xwalk/core/internal/XWalkCoreBridge;

    invoke-direct {v0, p0, p1}, Lorg/xwalk/core/internal/XWalkCoreBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkCoreBridge;->sInstance:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 24
    return-void
.end method


# virtual methods
.method public getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    const-class v0, Lorg/xwalk/core/internal/XWalkCoreBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.xwalk.core.internal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBridge"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, p1, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCoreBridge;->mBridgeContext:Landroid/content/Context;

    return-object v0
.end method

.method public getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCoreBridge;->mWrapperLoader:Ljava/lang/ClassLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.xwalk.core."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method
