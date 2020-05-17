.class public Lorg/xwalk/core/extension/BindingObjectStore;
.super Ljava/lang/Object;
.source "BindingObjectStore.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBindingObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/extension/BindingObject;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:Lorg/xwalk/core/extension/ExtensionInstanceHelper;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/extension/MessageHandler;Lorg/xwalk/core/extension/ExtensionInstanceHelper;)V
    .locals 2
    .param p1, "handler"    # Lorg/xwalk/core/extension/MessageHandler;
    .param p2, "instance"    # Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "BindingObjectStore"

    iput-object v0, p0, Lorg/xwalk/core/extension/BindingObjectStore;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    .line 28
    iput-object p2, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mInstance:Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    .line 29
    const-string v0, "JSObjectCollected"

    const-string v1, "onJSObjectCollected"

    invoke-virtual {p1, v0, v1, p0}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v0, "postMessageToObject"

    const-string v1, "onPostMessageToObject"

    invoke-virtual {p1, v0, v1, p0}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    const-string v0, "postMessageToClass"

    const-string v1, "onPostMessageToClass"

    invoke-virtual {p1, v0, v1, p0}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public addBindingObject(Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;)Z
    .locals 3
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "obj"    # Lorg/xwalk/core/extension/BindingObject;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/xwalk/core/extension/BindingObjectStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing binding object:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mInstance:Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    invoke-virtual {p2, p1, v0}, Lorg/xwalk/core/extension/BindingObject;->initBindingInfo(Ljava/lang/String;Lorg/xwalk/core/extension/ExtensionInstanceHelper;)V

    .line 41
    iget-object v0, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p2}, Lorg/xwalk/core/extension/BindingObject;->onJsBound()V

    .line 43
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBindingObject(Ljava/lang/String;)Lorg/xwalk/core/extension/BindingObject;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/BindingObject;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 150
    iget-object v3, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/BindingObject;

    .line 152
    .local v2, "obj":Lorg/xwalk/core/extension/BindingObject;
    invoke-virtual {v2}, Lorg/xwalk/core/extension/BindingObject;->onDestroy()V

    goto :goto_0

    .line 154
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    .end local v2    # "obj":Lorg/xwalk/core/extension/BindingObject;
    :cond_0
    return-void
.end method

.method public onJSObjectCollected(Lorg/xwalk/core/extension/MessageInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/extension/BindingObjectStore;->removeBindingObject(Ljava/lang/String;)Lorg/xwalk/core/extension/BindingObject;

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 136
    iget-object v3, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/BindingObject;

    .line 138
    .local v2, "obj":Lorg/xwalk/core/extension/BindingObject;
    invoke-virtual {v2}, Lorg/xwalk/core/extension/BindingObject;->onPause()V

    goto :goto_0

    .line 140
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    .end local v2    # "obj":Lorg/xwalk/core/extension/BindingObject;
    :cond_0
    return-void
.end method

.method public onPostMessageToClass(Lorg/xwalk/core/extension/MessageInfo;)Ljava/lang/Object;
    .locals 11
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 62
    const/4 v8, 0x0

    .line 63
    .local v8, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getArgs()Lorg/json/JSONArray;

    move-result-object v0

    .line 67
    .local v0, "args":Lorg/json/JSONArray;
    :try_start_0
    new-instance v5, Lorg/xwalk/core/extension/MessageInfo;

    invoke-direct {v5, p1}, Lorg/xwalk/core/extension/MessageInfo;-><init>(Lorg/xwalk/core/extension/MessageInfo;)V

    .line 68
    .local v5, "newInfo":Lorg/xwalk/core/extension/MessageInfo;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "memberName":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 70
    .local v6, "originArgs":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "ctorName":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 73
    .local v3, "memberArgs":Lorg/json/JSONArray;
    invoke-virtual {v5, v4}, Lorg/xwalk/core/extension/MessageInfo;->setJsName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v3}, Lorg/xwalk/core/extension/MessageInfo;->setArgs(Lorg/json/JSONArray;)V

    .line 76
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getExtension()Lorg/xwalk/core/extension/XWalkExternalExtension;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getTargetReflect(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v7

    .line 78
    .local v7, "reflection":Lorg/xwalk/core/extension/ReflectionHelper;
    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lorg/xwalk/core/extension/ReflectionHelper;->handleMessage(Lorg/xwalk/core/extension/MessageInfo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 84
    .end local v1    # "ctorName":Ljava/lang/String;
    .end local v3    # "memberArgs":Lorg/json/JSONArray;
    .end local v4    # "memberName":Ljava/lang/String;
    .end local v5    # "newInfo":Lorg/xwalk/core/extension/MessageInfo;
    .end local v6    # "originArgs":Lorg/json/JSONArray;
    .end local v7    # "reflection":Lorg/xwalk/core/extension/ReflectionHelper;
    .end local v8    # "result":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 79
    .restart local v8    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Lorg/json/JSONException;
    iget-object v9, p0, Lorg/xwalk/core/extension/BindingObjectStore;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lorg/xwalk/core/extension/BindingObjectStore;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPostMessageToObject(Lorg/xwalk/core/extension/MessageInfo;)Ljava/lang/Object;
    .locals 13
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 88
    const/4 v10, 0x0

    .line 90
    .local v10, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/xwalk/core/extension/BindingObjectStore;->getBindingObject(Ljava/lang/String;)Lorg/xwalk/core/extension/BindingObject;

    move-result-object v7

    .line 92
    .local v7, "obj":Lorg/xwalk/core/extension/BindingObject;
    new-instance v6, Lorg/xwalk/core/extension/MessageInfo;

    invoke-direct {v6, p1}, Lorg/xwalk/core/extension/MessageInfo;-><init>(Lorg/xwalk/core/extension/MessageInfo;)V

    .line 93
    .local v6, "newInfo":Lorg/xwalk/core/extension/MessageInfo;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getArgs()Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 94
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getArgs()Lorg/json/JSONArray;

    move-result-object v1

    .line 95
    .local v1, "args":Lorg/json/JSONArray;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "objectMethodName":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 97
    .local v8, "objectMethodArgs":Lorg/json/JSONArray;
    invoke-virtual {v6, v9}, Lorg/xwalk/core/extension/MessageInfo;->setJsName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v6, v8}, Lorg/xwalk/core/extension/MessageInfo;->setArgs(Lorg/json/JSONArray;)V

    .line 113
    .end local v1    # "args":Lorg/json/JSONArray;
    .end local v8    # "objectMethodArgs":Lorg/json/JSONArray;
    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Lorg/xwalk/core/extension/BindingObject;->handleMessage(Lorg/xwalk/core/extension/MessageInfo;)Ljava/lang/Object;

    move-result-object v10

    .line 118
    .end local v6    # "newInfo":Lorg/xwalk/core/extension/MessageInfo;
    .end local v7    # "obj":Lorg/xwalk/core/extension/BindingObject;
    .end local v9    # "objectMethodName":Ljava/lang/String;
    .end local v10    # "result":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v10

    .line 100
    .restart local v6    # "newInfo":Lorg/xwalk/core/extension/MessageInfo;
    .restart local v7    # "obj":Lorg/xwalk/core/extension/BindingObject;
    .restart local v10    # "result":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getBinaryArgs()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    .local v1, "args":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 103
    .local v2, "byteOffset":I
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 104
    .local v5, "methodNameLen":I
    add-int/lit8 v2, v2, 0x4

    .line 105
    rem-int/lit8 v11, v5, 0x4

    rsub-int/lit8 v11, v11, 0x4

    add-int v0, v5, v11

    .line 106
    .local v0, "alignedMethodNameLen":I
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-direct {v9, v11, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 107
    .restart local v9    # "objectMethodName":Ljava/lang/String;
    add-int/2addr v2, v0

    .line 108
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    array-length v11, v11

    sub-int v4, v11, v2

    .line 109
    .local v4, "len":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-static {v11, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 110
    .local v8, "objectMethodArgs":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v9}, Lorg/xwalk/core/extension/MessageInfo;->setJsName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6, v8}, Lorg/xwalk/core/extension/MessageInfo;->setBinaryArgs(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 115
    .end local v0    # "alignedMethodNameLen":I
    .end local v1    # "args":Ljava/nio/ByteBuffer;
    .end local v2    # "byteOffset":I
    .end local v4    # "len":I
    .end local v5    # "methodNameLen":I
    .end local v6    # "newInfo":Lorg/xwalk/core/extension/MessageInfo;
    .end local v7    # "obj":Lorg/xwalk/core/extension/BindingObject;
    .end local v8    # "objectMethodArgs":Ljava/nio/ByteBuffer;
    .end local v9    # "objectMethodName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v11, p0, Lorg/xwalk/core/extension/BindingObjectStore;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 129
    iget-object v3, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/BindingObject;

    .line 131
    .local v2, "obj":Lorg/xwalk/core/extension/BindingObject;
    invoke-virtual {v2}, Lorg/xwalk/core/extension/BindingObject;->onResume()V

    goto :goto_0

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    .end local v2    # "obj":Lorg/xwalk/core/extension/BindingObject;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 122
    iget-object v3, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/BindingObject;

    .line 124
    .local v2, "obj":Lorg/xwalk/core/extension/BindingObject;
    invoke-virtual {v2}, Lorg/xwalk/core/extension/BindingObject;->onStart()V

    goto :goto_0

    .line 126
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    .end local v2    # "obj":Lorg/xwalk/core/extension/BindingObject;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 143
    iget-object v3, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/BindingObject;

    .line 145
    .local v2, "obj":Lorg/xwalk/core/extension/BindingObject;
    invoke-virtual {v2}, Lorg/xwalk/core/extension/BindingObject;->onStop()V

    goto :goto_0

    .line 147
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;>;"
    .end local v2    # "obj":Lorg/xwalk/core/extension/BindingObject;
    :cond_0
    return-void
.end method

.method public removeBindingObject(Ljava/lang/String;)Lorg/xwalk/core/extension/BindingObject;
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lorg/xwalk/core/extension/BindingObjectStore;->mBindingObjects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/BindingObject;

    .line 52
    .local v0, "obj":Lorg/xwalk/core/extension/BindingObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xwalk/core/extension/BindingObject;->onJsDestroyed()V

    .line 54
    :cond_0
    return-object v0
.end method
