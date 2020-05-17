.class public Lde/appplant/cordova/plugin/badge/Badge;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Badge.java"


# instance fields
.field private impl:Lde/appplant/cordova/plugin/badge/BadgeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/appplant/cordova/plugin/badge/Badge;)Lde/appplant/cordova/plugin/badge/BadgeImpl;
    .locals 1
    .param p0, "x0"    # Lde/appplant/cordova/plugin/badge/Badge;

    .prologue
    .line 31
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->impl:Lde/appplant/cordova/plugin/badge/BadgeImpl;

    return-object v0
.end method

.method private checkSupport(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 170
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/badge/Badge$6;

    invoke-direct {v1, p0, p1}, Lde/appplant/cordova/plugin/badge/Badge$6;-><init>(Lde/appplant/cordova/plugin/badge/Badge;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method private clearBadge(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 119
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/badge/Badge$3;

    invoke-direct {v1, p0, p1}, Lde/appplant/cordova/plugin/badge/Badge$3;-><init>(Lde/appplant/cordova/plugin/badge/Badge;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method private getBadge(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 135
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/badge/Badge$4;

    invoke-direct {v1, p0, p1}, Lde/appplant/cordova/plugin/badge/Badge$4;-><init>(Lde/appplant/cordova/plugin/badge/Badge;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private loadConfig(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 90
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/badge/Badge$1;

    invoke-direct {v1, p0, p1}, Lde/appplant/cordova/plugin/badge/Badge$1;-><init>(Lde/appplant/cordova/plugin/badge/Badge;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private saveConfig(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/badge/Badge$2;

    invoke-direct {v1, p0, p1}, Lde/appplant/cordova/plugin/badge/Badge$2;-><init>(Lde/appplant/cordova/plugin/badge/Badge;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method private setBadge(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 153
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/badge/Badge$5;

    invoke-direct {v1, p0, p1, p2}, Lde/appplant/cordova/plugin/badge/Badge$5;-><init>(Lde/appplant/cordova/plugin/badge/Badge;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x1

    .line 59
    .local v0, "ret":Z
    const-string v1, "load"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-direct {p0, p3}, Lde/appplant/cordova/plugin/badge/Badge;->loadConfig(Lorg/apache/cordova/CallbackContext;)V

    .line 81
    :goto_0
    return v0

    .line 62
    :cond_0
    const-string v1, "save"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/appplant/cordova/plugin/badge/Badge;->saveConfig(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    invoke-direct {p0, p3}, Lde/appplant/cordova/plugin/badge/Badge;->clearBadge(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-direct {p0, p3}, Lde/appplant/cordova/plugin/badge/Badge;->getBadge(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 71
    :cond_3
    const-string v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    invoke-direct {p0, p2, p3}, Lde/appplant/cordova/plugin/badge/Badge;->setBadge(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 74
    :cond_4
    const-string v1, "check"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    invoke-direct {p0, p3}, Lde/appplant/cordova/plugin/badge/Badge;->checkSupport(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 78
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pluginInitialize()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lde/appplant/cordova/plugin/badge/BadgeImpl;

    invoke-direct {p0}, Lde/appplant/cordova/plugin/badge/Badge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/appplant/cordova/plugin/badge/BadgeImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/appplant/cordova/plugin/badge/Badge;->impl:Lde/appplant/cordova/plugin/badge/BadgeImpl;

    .line 41
    return-void
.end method
