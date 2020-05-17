.class public final Lde/appplant/cordova/plugin/notification/action/ActionGroup;
.super Ljava/lang/Object;
.source "ActionGroup.java"


# static fields
.field private static final GENERAL_ACTION_GROUP:Ljava/lang/String; = "DEFAULT_GROUP"

.field private static final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/appplant/cordova/plugin/notification/action/ActionGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actions:[Lde/appplant/cordova/plugin/notification/action/Action;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->groups:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lde/appplant/cordova/plugin/notification/action/Action;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "actions"    # [Lde/appplant/cordova/plugin/notification/action/Action;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->id:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->actions:[Lde/appplant/cordova/plugin/notification/action/Action;

    .line 123
    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lde/appplant/cordova/plugin/notification/action/ActionGroup;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->groups:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;

    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;)Lde/appplant/cordova/plugin/notification/action/ActionGroup;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spec"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 83
    const-string v7, "actionGroupId"

    const-string v8, "DEFAULT_GROUP"

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "id":Ljava/lang/String;
    const-string v7, "actions"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 86
    .local v3, "list":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v6

    .line 89
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/action/Action;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 92
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 93
    .local v4, "opts":Lorg/json/JSONObject;
    const-string v7, "type"

    const-string v8, "button"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "type":Ljava/lang/String;
    const-string v7, "input"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-ge v7, v8, :cond_2

    .line 96
    const-string v7, "Action"

    const-string v8, "Type input is not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_2
    const-string v7, "button"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "input"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 101
    const-string v7, "Action"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    :cond_3
    new-instance v7, Lde/appplant/cordova/plugin/notification/action/Action;

    invoke-direct {v7, p0, v4}, Lde/appplant/cordova/plugin/notification/action/Action;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    .end local v4    # "opts":Lorg/json/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 111
    new-instance v7, Lde/appplant/cordova/plugin/notification/action/ActionGroup;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lde/appplant/cordova/plugin/notification/action/Action;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lde/appplant/cordova/plugin/notification/action/Action;

    invoke-direct {v7, v2, v6}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;-><init>(Ljava/lang/String;[Lde/appplant/cordova/plugin/notification/action/Action;)V

    move-object v6, v7

    goto :goto_0
.end method

.method public static register(Lde/appplant/cordova/plugin/notification/action/ActionGroup;)V
    .locals 2
    .param p0, "group"    # Lde/appplant/cordova/plugin/notification/action/ActionGroup;

    .prologue
    .line 70
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT_GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->groups:Ljava/util/Map;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public getActions()[Lde/appplant/cordova/plugin/notification/action/Action;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->actions:[Lde/appplant/cordova/plugin/notification/action/Action;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->id:Ljava/lang/String;

    return-object v0
.end method
