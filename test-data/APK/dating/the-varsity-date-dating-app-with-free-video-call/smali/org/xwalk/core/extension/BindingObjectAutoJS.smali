.class public Lorg/xwalk/core/extension/BindingObjectAutoJS;
.super Lorg/xwalk/core/extension/BindingObject;
.source "BindingObjectAutoJS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xwalk/core/extension/BindingObject;-><init>()V

    return-void
.end method

.method public static dispatchEvent(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "mInfo"    # Lorg/xwalk/core/extension/JsContextInfo;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getTargetReflect()Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/xwalk/core/extension/ReflectionHelper;->isEventSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupport event in extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v1, "msgOut":Lorg/json/JSONObject;
    const-string v2, "cmd"

    const-string v3, "dispatchEvent"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v2, "constructorName"

    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getConstructorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "objectId"

    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "event"

    invoke-static {p2}, Lorg/xwalk/core/extension/ReflectionHelper;->toSerializableObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {p0, v1}, Lorg/xwalk/core/extension/JsContextInfo;->postMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v1    # "msgOut":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs invokeJsCallback(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "mInfo"    # Lorg/xwalk/core/extension/JsContextInfo;
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 47
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    .line 48
    .local v0, "arr":[Ljava/lang/Object;
    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    aget-object v4, v0, v6

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 49
    aget-object v4, v0, v6

    check-cast v4, Lorg/json/JSONArray;

    move-object v2, v4

    check-cast v2, Lorg/json/JSONArray;

    .line 54
    .local v2, "jsArgs":Lorg/json/JSONArray;
    :goto_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v3, "msgOut":Lorg/json/JSONObject;
    const-string v4, "cmd"

    const-string v5, "invokeCallback"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v4, "callbackId"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v4, "args"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p0, v3}, Lorg/xwalk/core/extension/JsContextInfo;->postMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v3    # "msgOut":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 51
    .end local v2    # "jsArgs":Lorg/json/JSONArray;
    :cond_0
    invoke-static {p2}, Lorg/xwalk/core/extension/ReflectionHelper;->toSerializableObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    move-object v2, v4

    check-cast v2, Lorg/json/JSONArray;

    .restart local v2    # "jsArgs":Lorg/json/JSONArray;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static invokeJsCallback(Lorg/xwalk/core/extension/JsContextInfo;[B)V
    .locals 0
    .param p0, "mInfo"    # Lorg/xwalk/core/extension/JsContextInfo;
    .param p1, "buffer"    # [B

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lorg/xwalk/core/extension/JsContextInfo;->postMessage([B)V

    .line 70
    return-void
.end method

.method public static sendEvent(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "mInfo"    # Lorg/xwalk/core/extension/JsContextInfo;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getExtensionClient()Lorg/xwalk/core/extension/XWalkExternalExtension;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/extension/XWalkExternalExtension;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public static updateProperty(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;)V
    .locals 7
    .param p0, "mInfo"    # Lorg/xwalk/core/extension/JsContextInfo;
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getTargetReflect()Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v3

    .line 123
    .local v3, "targetReflect":Lorg/xwalk/core/extension/ReflectionHelper;
    invoke-virtual {v3, p1}, Lorg/xwalk/core/extension/ReflectionHelper;->hasProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexposed property in extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {v3, p1}, Lorg/xwalk/core/extension/ReflectionHelper;->getMemberInfo(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    move-result-object v4

    iget-boolean v1, v4, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isStatic:Z

    .line 129
    .local v1, "isStatic":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v2, "msgOut":Lorg/json/JSONObject;
    const-string v4, "cmd"

    const-string v5, "updateProperty"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v5, "objectId"

    if-eqz v1, :cond_1

    const-string v4, "0"

    :goto_1
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v4, "constructorName"

    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getConstructorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v4, "name"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    invoke-virtual {p0, v2}, Lorg/xwalk/core/extension/JsContextInfo;->postMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v2    # "msgOut":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "msgOut":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/xwalk/core/extension/JsContextInfo;->getObjectId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->getJsContextInfo()Lorg/xwalk/core/extension/JsContextInfo;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->dispatchEvent(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public getJsContextInfo()Lorg/xwalk/core/extension/JsContextInfo;
    .locals 5

    .prologue
    .line 29
    new-instance v0, Lorg/xwalk/core/extension/JsContextInfo;

    iget-object v1, p0, Lorg/xwalk/core/extension/BindingObjectAutoJS;->mInstanceHelper:Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    invoke-virtual {v1}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/xwalk/core/extension/BindingObjectAutoJS;->mInstanceHelper:Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    invoke-virtual {v2}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;->getExtension()Lorg/xwalk/core/extension/XWalkExternalExtension;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/xwalk/core/extension/BindingObjectAutoJS;->mObjectId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/xwalk/core/extension/JsContextInfo;-><init>(ILorg/xwalk/core/extension/XWalkExternalExtension;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public handleMessage(Lorg/xwalk/core/extension/MessageInfo;)Ljava/lang/Object;
    .locals 6
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 16
    const/4 v3, 0x0

    .line 17
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Lorg/xwalk/core/extension/BindingObjectAutoJS;->mInstanceHelper:Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    invoke-virtual {v4}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;->getExtension()Lorg/xwalk/core/extension/XWalkExternalExtension;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getReflection()Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v1

    .line 18
    .local v1, "extReflect":Lorg/xwalk/core/extension/ReflectionHelper;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/xwalk/core/extension/ReflectionHelper;->getReflectionByBindingClass(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v2

    .line 21
    .local v2, "mReflection":Lorg/xwalk/core/extension/ReflectionHelper;
    :try_start_0
    invoke-virtual {v2, p1, p0}, Lorg/xwalk/core/extension/ReflectionHelper;->handleMessage(Lorg/xwalk/core/extension/MessageInfo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 25
    .end local v3    # "result":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 22
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BindingObjectAutoJs"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs invokeJsCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->getJsContextInfo()Lorg/xwalk/core/extension/JsContextInfo;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->invokeJsCallback(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public invokeJsCallback([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->getJsContextInfo()Lorg/xwalk/core/extension/JsContextInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/xwalk/core/extension/JsContextInfo;->postMessage([B)V

    .line 74
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->getJsContextInfo()Lorg/xwalk/core/extension/JsContextInfo;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->sendEvent(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public updateProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->getJsContextInfo()Lorg/xwalk/core/extension/JsContextInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xwalk/core/extension/BindingObjectAutoJS;->updateProperty(Lorg/xwalk/core/extension/JsContextInfo;Ljava/lang/String;)V

    .line 142
    return-void
.end method
