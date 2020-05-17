.class public final Lde/appplant/cordova/plugin/notification/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final CLICK_ACTION_ID:Ljava/lang/String; = "click"

.field public static final EXTRA_ID:Ljava/lang/String; = "NOTIFICATION_ACTION_ID"


# instance fields
.field private final context:Landroid/content/Context;

.field private final options:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/action/Action;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    .line 62
    return-void
.end method

.method private getChoices()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v4, "choices"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 125
    .local v2, "opts":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 126
    const/4 v0, 0x0

    .line 134
    :cond_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 130
    .local v0, "choices":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 131
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIcon()I
    .locals 5

    .prologue
    .line 82
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/action/Action;->context:Landroid/content/Context;

    invoke-static {v3}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    move-result-object v0

    .line 83
    .local v0, "assets":Lde/appplant/cordova/plugin/notification/util/AssetUtil;
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "resPath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->getResId(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 87
    const v1, 0x1080098

    .line 90
    :cond_0
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/action/Action;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Landroid/support/v4/app/RemoteInput;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Landroid/support/v4/app/RemoteInput$Builder;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/action/Action;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v2, "emptyText"

    .line 113
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v2, "editable"

    const/4 v3, 0x1

    .line 114
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    .line 115
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/action/Action;->getChoices()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v1, "title"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLaunchingApp()Z
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v1, "launch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isWithInput()Z
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/action/Action;->options:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "type":Ljava/lang/String;
    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
