.class public Lorg/xwalk/core/extension/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/extension/MessageHandler$Handler;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/extension/MessageHandler$Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "MessageHandler"

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageHandler;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageHandler;->mHandlers:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/extension/MessageHandler;)V
    .locals 2
    .param p1, "sourceHandler"    # Lorg/xwalk/core/extension/MessageHandler;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "MessageHandler"

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageHandler;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageHandler;->mHandlers:Ljava/util/Map;

    .line 54
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageHandler;->mHandlers:Ljava/util/Map;

    iget-object v1, p1, Lorg/xwalk/core/extension/MessageHandler;->mHandlers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    return-void
.end method


# virtual methods
.method public handleMessage(Lorg/xwalk/core/extension/MessageInfo;)Ljava/lang/Object;
    .locals 11
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 86
    const/4 v5, 0x0

    .line 87
    .local v5, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getJsName()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "jsName":Ljava/lang/String;
    iget-object v6, p0, Lorg/xwalk/core/extension/MessageHandler;->mHandlers:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/extension/MessageHandler$Handler;

    .line 90
    .local v1, "handler":Lorg/xwalk/core/extension/MessageHandler$Handler;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lorg/xwalk/core/extension/MessageHandler$Handler;->targetObject:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 91
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/extension/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find handler for method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v5    # "result":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 94
    .restart local v5    # "result":Ljava/lang/Object;
    :cond_1
    iget-object v4, v1, Lorg/xwalk/core/extension/MessageHandler$Handler;->targetObject:Ljava/lang/Object;

    .line 95
    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getExtension()Lorg/xwalk/core/extension/XWalkExternalExtension;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xwalk/core/extension/XWalkExternalExtension;->isAutoJS()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lorg/xwalk/core/extension/MessageHandler$Handler;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    if-eqz v6, :cond_2

    .line 97
    :try_start_0
    iget-object v6, v1, Lorg/xwalk/core/extension/MessageHandler$Handler;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {v6, p1, v4}, Lorg/xwalk/core/extension/ReflectionHelper;->handleMessage(Lorg/xwalk/core/extension/MessageInfo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/xwalk/core/extension/MessageHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, v1, Lorg/xwalk/core/extension/MessageHandler$Handler;->javaName:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lorg/xwalk/core/extension/MessageInfo;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 107
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 108
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v6, p0, Lorg/xwalk/core/extension/MessageHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "jsName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 82
    sget-object v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_METHOD:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V

    .line 83
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "jsName"    # Ljava/lang/String;
    .param p2, "javaName"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 76
    sget-object v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_METHOD:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V

    .line 77
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;)V
    .locals 6
    .param p1, "jsName"    # Ljava/lang/String;
    .param p2, "javaName"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberType;
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V

    .line 72
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V
    .locals 6
    .param p1, "jsName"    # Ljava/lang/String;
    .param p2, "javaName"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberType;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "reflection"    # Lorg/xwalk/core/extension/ReflectionHelper;

    .prologue
    .line 59
    iget-object v1, p0, Lorg/xwalk/core/extension/MessageHandler;->mHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lorg/xwalk/core/extension/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lorg/xwalk/core/extension/MessageHandler$Handler;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/xwalk/core/extension/MessageHandler$Handler;-><init>(Lorg/xwalk/core/extension/MessageHandler;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V

    .line 65
    .local v0, "handler":Lorg/xwalk/core/extension/MessageHandler$Handler;
    iget-object v1, p0, Lorg/xwalk/core/extension/MessageHandler;->mHandlers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
