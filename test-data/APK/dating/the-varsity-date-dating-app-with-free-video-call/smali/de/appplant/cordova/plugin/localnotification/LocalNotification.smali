.class public Lde/appplant/cordova/plugin/localnotification/LocalNotification;
.super Lorg/apache/cordova/CordovaPlugin;
.source "LocalNotification.java"


# static fields
.field private static deviceready:Ljava/lang/Boolean;

.field private static eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static launchDetails:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static webView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/apache/cordova/CordovaWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Ljava/lang/ref/WeakReference;

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready()V

    return-void
.end method

.method static synthetic access$100(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->check(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1000(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->type(ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1100(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->ids(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1200(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->scheduledIds(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1300(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->triggeredIds(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1400(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->notification(ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1500(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->notifications(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1600(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->scheduledNotifications(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1700(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->triggeredNotifications(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$200(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->request(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$300(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->actions(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->schedule(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$500(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->update(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$600(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cancel(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$700(Lde/appplant/cordova/plugin/localnotification/LocalNotification;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    .prologue
    .line 60
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cancelAll()V

    return-void
.end method

.method static synthetic access$800(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->clear(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$900(Lde/appplant/cordova/plugin/localnotification/LocalNotification;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    .prologue
    .line 60
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->clearAll()V

    return-void
.end method

.method private actions(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "args"    # Lorg/json/JSONObject;

    .prologue
    .line 252
    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->parse(Landroid/content/Context;Lorg/json/JSONObject;)Lde/appplant/cordova/plugin/notification/action/ActionGroup;

    move-result-object v0

    .line 254
    .local v0, "group":Lde/appplant/cordova/plugin/notification/action/ActionGroup;
    if-eqz v0, :cond_0

    .line 255
    invoke-static {v0}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->register(Lde/appplant/cordova/plugin/notification/action/ActionGroup;)V

    .line 257
    :cond_0
    return-void
.end method

.method private cancel(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "ids"    # Lorg/json/JSONArray;

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 308
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    .line 311
    .local v1, "id":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/appplant/cordova/plugin/notification/Manager;->cancel(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v2

    .line 313
    .local v2, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v2, :cond_0

    .line 307
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    const-string v3, "cancel"

    invoke-static {v3, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    goto :goto_1

    .line 318
    .end local v1    # "id":I
    .end local v2    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-void
.end method

.method private cancelAll()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Manager;->cancelAll()V

    .line 325
    const-string v0, "cancelall"

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private check(Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 230
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v2

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Manager;->hasPermission()Z

    move-result v0

    .line 231
    .local v0, "allowed":Z
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 233
    .local v1, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 234
    return-void
.end method

.method private clear(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "ids"    # Lorg/json/JSONArray;

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 335
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    .line 338
    .local v1, "id":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/appplant/cordova/plugin/notification/Manager;->clear(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v2

    .line 340
    .local v2, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v2, :cond_0

    .line 334
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    const-string v3, "clear"

    invoke-static {v3, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    goto :goto_1

    .line 345
    .end local v1    # "id":I
    .end local v2    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-void
.end method

.method private clearAll()V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Manager;->clearAll()V

    .line 352
    const-string v0, "clearall"

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private static declared-synchronized deviceready()V
    .locals 4

    .prologue
    .line 478
    const-class v2, Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 480
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "js":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "js":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 481
    .restart local v0    # "js":Ljava/lang/String;
    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->sendJavascript(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 484
    :cond_0
    :try_start_1
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    monitor-exit v2

    return-void
.end method

.method private fireEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 493
    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;Lorg/json/JSONObject;)V

    .line 494
    return-void
.end method

.method static fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;

    .prologue
    .line 503
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;Lorg/json/JSONObject;)V

    .line 504
    return-void
.end method

.method static fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "toast"    # Lde/appplant/cordova/plugin/notification/Notification;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 517
    :try_start_0
    const-string v3, "event"

    invoke-virtual {p2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v3, "foreground"

    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInForeground()Z

    move-result v4

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 519
    const-string v4, "queued"

    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 521
    if-eqz p1, :cond_0

    .line 522
    const-string v3, "notification"

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_1
    if-eqz p1, :cond_3

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "params":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cordova.plugins.notification.local.core.fireEvent(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "js":Ljava/lang/String;
    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    if-nez v3, :cond_1

    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 538
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    .line 541
    :cond_1
    invoke-static {v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->sendJavascript(Ljava/lang/String;)V

    .line 542
    return-void

    .line 519
    .end local v1    # "js":Ljava/lang/String;
    .end local v2    # "params":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 531
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "params":Ljava/lang/String;
    goto :goto_2
.end method

.method private getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/appplant/cordova/plugin/notification/Manager;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v0

    return-object v0
.end method

.method private ids(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 390
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v0

    .line 391
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 392
    return-void
.end method

.method private static isInForeground()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 570
    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 582
    .local v0, "km":Landroid/app/KeyguardManager;
    .local v1, "view":Lorg/apache/cordova/CordovaWebView;
    :cond_0
    :goto_0
    return v2

    .line 573
    .end local v0    # "km":Landroid/app/KeyguardManager;
    .end local v1    # "view":Lorg/apache/cordova/CordovaWebView;
    :cond_1
    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/CordovaWebView;

    .line 575
    .restart local v1    # "view":Lorg/apache/cordova/CordovaWebView;
    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "keyguard"

    .line 576
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 579
    .restart local v0    # "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    :cond_2
    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private launch(Lorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 206
    sget-object v2, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    if-nez v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v0, "details":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v2, "action"

    sget-object v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 220
    const/4 v2, 0x0

    sput-object v2, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private notification(ILorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 424
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lde/appplant/cordova/plugin/notification/Manager;->getOptions(I)Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v0

    .line 426
    .local v0, "options":Lde/appplant/cordova/plugin/notification/Options;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0
.end method

.method private notifications(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 443
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 444
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Manager;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 449
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 450
    return-void

    .line 446
    .end local v0    # "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsById(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    goto :goto_0
.end method

.method private request(Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->check(Lorg/apache/cordova/CallbackContext;)V

    .line 244
    return-void
.end method

.method private schedule(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "notifications"    # Lorg/json/JSONArray;

    .prologue
    .line 265
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v2

    .line 267
    .local v2, "mgr":Lde/appplant/cordova/plugin/notification/Manager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 268
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 269
    .local v0, "dict":Lorg/json/JSONObject;
    new-instance v4, Lde/appplant/cordova/plugin/notification/Options;

    invoke-direct {v4, v0}, Lde/appplant/cordova/plugin/notification/Options;-><init>(Lorg/json/JSONObject;)V

    .line 270
    .local v4, "options":Lde/appplant/cordova/plugin/notification/Options;
    new-instance v5, Lde/appplant/cordova/plugin/notification/Request;

    invoke-direct {v5, v4}, Lde/appplant/cordova/plugin/notification/Request;-><init>(Lde/appplant/cordova/plugin/notification/Options;)V

    .line 272
    .local v5, "request":Lde/appplant/cordova/plugin/notification/Request;
    const-class v6, Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;

    .line 273
    invoke-virtual {v2, v5, v6}, Lde/appplant/cordova/plugin/notification/Manager;->schedule(Lde/appplant/cordova/plugin/notification/Request;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v3

    .line 275
    .local v3, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v3, :cond_0

    .line 276
    const-string v6, "add"

    invoke-static {v6, v3}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    .line 267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "dict":Lorg/json/JSONObject;
    .end local v3    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    .end local v4    # "options":Lde/appplant/cordova/plugin/notification/Options;
    .end local v5    # "request":Lde/appplant/cordova/plugin/notification/Request;
    :cond_1
    return-void
.end method

.method private scheduledIds(Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 401
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v1, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getIdsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 402
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 403
    return-void
.end method

.method private scheduledNotifications(Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 459
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v1, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 461
    return-void
.end method

.method private static declared-synchronized sendJavascript(Ljava/lang/String;)V
    .locals 4
    .param p0, "js"    # Ljava/lang/String;

    .prologue
    .line 551
    const-class v2, Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 552
    :cond_0
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :goto_0
    monitor-exit v2

    return-void

    .line 556
    :cond_1
    :try_start_1
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CordovaWebView;

    .line 558
    .local v0, "view":Lorg/apache/cordova/CordovaWebView;
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;

    invoke-direct {v3, v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;-><init>(Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 551
    .end local v0    # "view":Lorg/apache/cordova/CordovaWebView;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p1, "ary"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 594
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    return-object v1
.end method

.method private triggeredIds(Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 412
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v1, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getIdsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 413
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 414
    return-void
.end method

.method private triggeredNotifications(Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 470
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v1, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 471
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 472
    return-void
.end method

.method private type(ILorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 363
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 365
    .local v0, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v0, :cond_0

    .line 366
    const-string v1, "unknown"

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-void

    .line 370
    :cond_0
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification$3;->$SwitchMap$de$appplant$cordova$plugin$notification$Notification$Type:[I

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->getType()Lde/appplant/cordova/plugin/notification/Notification$Type;

    move-result-object v2

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Notification$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 378
    const-string v1, "unknown"

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_0
    const-string v1, "scheduled"

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :pswitch_1
    const-string v1, "triggered"

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private update(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "updates"    # Lorg/json/JSONArray;

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 288
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 289
    .local v3, "update":Lorg/json/JSONObject;
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 292
    .local v1, "id":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v4

    const-class v5, Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;

    invoke-virtual {v4, v1, v3, v5}, Lde/appplant/cordova/plugin/notification/Manager;->update(ILorg/json/JSONObject;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v2

    .line 294
    .local v2, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v2, :cond_0

    .line 287
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    const-string v4, "update"

    invoke-static {v4, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    goto :goto_1

    .line 299
    .end local v1    # "id":I
    .end local v2    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    .end local v3    # "update":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "command"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 124
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p3}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launch(Lorg/apache/cordova/CallbackContext;)V

    .line 195
    :goto_0
    return v2

    .line 129
    :cond_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;-><init>(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Ljava/lang/ref/WeakReference;

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 101
    return-void
.end method

.method public onResume(Z)V
    .locals 0
    .param p1, "multitasking"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 92
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready()V

    .line 93
    return-void
.end method
