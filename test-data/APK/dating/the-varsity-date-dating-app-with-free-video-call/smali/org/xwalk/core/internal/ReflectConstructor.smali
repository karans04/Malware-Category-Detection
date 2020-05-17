.class Lorg/xwalk/core/internal/ReflectConstructor;
.super Ljava/lang/Object;
.source "ReflectConstructor.java"


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private mParameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/ReflectConstructor;->init(Ljava/lang/Class;[Ljava/lang/Class;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public varargs init(Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    iput-object p1, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mClass:Ljava/lang/Class;

    .line 25
    iput-object p2, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mParameterTypes:[Ljava/lang/Class;

    .line 26
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 28
    iget-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 39
    :goto_0
    return v2

    .line 31
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mClass:Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mParameterTypes:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_1
    iget-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    :goto_2
    move v2, v1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    iget-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mClass:Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mParameterTypes:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 35
    iget-object v3, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 36
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    move v1, v2

    .line 39
    goto :goto_2
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v1, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/xwalk/core/internal/ReflectConstructor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 53
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    const-string v0, ""

    .line 66
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/internal/ReflectConstructor;->mClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
