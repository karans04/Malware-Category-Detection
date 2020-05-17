.class public Lorg/xwalk/core/extension/EventTarget;
.super Lorg/xwalk/core/extension/BindingObject;
.source "EventTarget.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/extension/MessageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xwalk/core/extension/BindingObject;-><init>()V

    .line 17
    const-string v0, "EventTarget"

    iput-object v0, p0, Lorg/xwalk/core/extension/EventTarget;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    .line 22
    iget-object v0, p0, Lorg/xwalk/core/extension/EventTarget;->mHandler:Lorg/xwalk/core/extension/MessageHandler;

    const-string v1, "addEventListener"

    invoke-virtual {v0, v1, p0}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lorg/xwalk/core/extension/EventTarget;->mHandler:Lorg/xwalk/core/extension/MessageHandler;

    const-string v1, "removeEventListener"

    invoke-virtual {v0, v1, p0}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xwalk/core/extension/EventTarget;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method

.method public dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    :try_start_0
    iget-object v3, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    iget-object v3, p0, Lorg/xwalk/core/extension/EventTarget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to dispatch to non-existing event :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v3, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/MessageInfo;

    .line 46
    .local v2, "info":Lorg/xwalk/core/extension/MessageInfo;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .local v0, "args":Lorg/json/JSONArray;
    if-eqz p2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    :cond_1
    invoke-virtual {v2, v0}, Lorg/xwalk/core/extension/MessageInfo;->postResult(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "args":Lorg/json/JSONArray;
    .end local v2    # "info":Lorg/xwalk/core/extension/MessageInfo;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lorg/xwalk/core/extension/EventTarget;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEventActive(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAddEventListener(Lorg/xwalk/core/extension/MessageInfo;)V
    .locals 5
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getArgs()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to re-add the event :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 63
    .restart local v1    # "type":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, v1}, Lorg/xwalk/core/extension/EventTarget;->startEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRemoveEventListener(Lorg/xwalk/core/extension/MessageInfo;)V
    .locals 5
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getArgs()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to remove non-existing event :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 78
    .restart local v1    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lorg/xwalk/core/extension/EventTarget;->stopEvent(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->mEvents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/xwalk/core/extension/EventTarget;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public stopEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    return-void
.end method
