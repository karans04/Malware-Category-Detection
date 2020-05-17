.class public final Lde/appplant/cordova/plugin/notification/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field static final CHANNEL_ID:Ljava/lang/String; = "default-channel-id"

.field private static final CHANNEL_NAME:Ljava/lang/CharSequence;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "Default channel"

    sput-object v0, Lde/appplant/cordova/plugin/notification/Manager;->CHANNEL_NAME:Ljava/lang/CharSequence;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->createDefaultChannel()V

    .line 72
    return-void
.end method

.method private createDefaultChannel()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v1

    .line 112
    .local v1, "mgr":Landroid/app/NotificationManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v2, "default-channel-id"

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 117
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/app/NotificationChannel;

    .end local v0    # "channel":Landroid/app/NotificationChannel;
    const-string v2, "default-channel-id"

    sget-object v3, Lde/appplant/cordova/plugin/notification/Manager;->CHANNEL_NAME:Ljava/lang/CharSequence;

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 123
    .restart local v0    # "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0
.end method

.method private getByIds(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/appplant/cordova/plugin/notification/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "toasts":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v1

    .line 257
    .local v1, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v0    # "id":I
    .end local v1    # "toast":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-object v2
.end method

.method private getByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;
    .locals 2
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/appplant/cordova/plugin/notification/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    sget-object v1, Lde/appplant/cordova/plugin/notification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/notification/Notification$Type;

    if-ne p1, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 284
    :goto_0
    return-object v1

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->getIdsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 284
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->getByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v0, Lde/appplant/cordova/plugin/notification/Manager;

    invoke-direct {v0, p0}, Lde/appplant/cordova/plugin/notification/Manager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getNotCompMgr()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method private getNotMgr()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    const-string v1, "NOTIFICATION_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel(I)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 181
    .local v0, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    .line 185
    :cond_0
    return-object v0
.end method

.method public cancelAll()V
    .locals 4

    .prologue
    .line 192
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 194
    .local v1, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/Notification;

    .line 195
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    goto :goto_0

    .line 198
    .end local v0    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getNotCompMgr()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancelAll()V

    .line 199
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lde/appplant/cordova/plugin/notification/Manager;->setBadge(I)V

    .line 200
    return-void
.end method

.method public clear(I)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 152
    .local v0, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->clear()V

    .line 156
    :cond_0
    return-object v0
.end method

.method public clearAll()V
    .locals 4

    .prologue
    .line 163
    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-direct {p0, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "toasts":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/Notification;

    .line 166
    .local v0, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->clear()V

    goto :goto_0

    .line 169
    .end local v0    # "toast":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getNotCompMgr()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancelAll()V

    .line 170
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lde/appplant/cordova/plugin/notification/Manager;->setBadge(I)V

    .line 171
    return-void
.end method

.method public get(I)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->getOptions(I)Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v0

    .line 365
    .local v0, "options":Lde/appplant/cordova/plugin/notification/Options;
    if-nez v0, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 368
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lde/appplant/cordova/plugin/notification/Notification;

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lde/appplant/cordova/plugin/notification/Notification;-><init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;)V

    goto :goto_0
.end method

.method getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    .prologue
    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 389
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/appplant/cordova/plugin/notification/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->getByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 207
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getIdsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;
    .locals 7
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    sget-object v4, Lde/appplant/cordova/plugin/notification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/notification/Notification$Type;

    if-ne p1, v4, :cond_1

    .line 228
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v0

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 231
    .local v1, "activeToasts":[Landroid/service/notification/StatusBarNotification;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "activeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 234
    .local v3, "toast":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 237
    .end local v3    # "toast":Landroid/service/notification/StatusBarNotification;
    :cond_2
    sget-object v4, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    if-eq p1, v4, :cond_0

    .line 240
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v2

    .line 241
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object v0, v2

    .line 243
    goto :goto_0
.end method

.method public getOptions(I)Lde/appplant/cordova/plugin/notification/Options;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 338
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 339
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "toastId":Ljava/lang/String;
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 351
    :goto_0
    return-object v5

    .line 345
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "json":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "dict":Lorg/json/JSONObject;
    new-instance v6, Lde/appplant/cordova/plugin/notification/Options;

    iget-object v7, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lde/appplant/cordova/plugin/notification/Options;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 349
    .end local v0    # "dict":Lorg/json/JSONObject;
    .end local v2    # "json":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsById(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsById(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "toasts":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->getOptions(I)Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v1

    .line 305
    .local v1, "options":Lde/appplant/cordova/plugin/notification/Options;
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v0    # "id":I
    .end local v1    # "options":Lde/appplant/cordova/plugin/notification/Options;
    :cond_1
    return-object v2
.end method

.method public getOptionsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->getByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v1

    .line 323
    .local v1, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/Notification;

    .line 324
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v4

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_0
    return-object v2
.end method

.method public hasPermission()Z
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getNotCompMgr()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public schedule(Lde/appplant/cordova/plugin/notification/Request;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 3
    .param p1, "request"    # Lde/appplant/cordova/plugin/notification/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Request;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Notification;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Request;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v0

    .line 98
    .local v0, "options":Lde/appplant/cordova/plugin/notification/Options;
    new-instance v1, Lde/appplant/cordova/plugin/notification/Notification;

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lde/appplant/cordova/plugin/notification/Notification;-><init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;)V

    .line 100
    .local v1, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v1, p1, p2}, Lde/appplant/cordova/plugin/notification/Notification;->schedule(Lde/appplant/cordova/plugin/notification/Request;Ljava/lang/Class;)V

    .line 102
    return-object v1
.end method

.method public setBadge(I)V
    .locals 2
    .param p1, "badge"    # I

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    new-instance v0, Lde/appplant/cordova/plugin/badge/BadgeImpl;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/appplant/cordova/plugin/badge/BadgeImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->clearBadge()V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v0, Lde/appplant/cordova/plugin/badge/BadgeImpl;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/appplant/cordova/plugin/badge/BadgeImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->setBadge(I)V

    goto :goto_0
.end method

.method public update(ILorg/json/JSONObject;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 1
    .param p1, "id"    # I
    .param p2, "updates"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Notification;"
        }
    .end annotation

    .prologue
    .line 134
    .local p3, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 136
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 141
    .end local v0    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :goto_0
    return-object v0

    .line 139
    .restart local v0    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_0
    invoke-virtual {v0, p2, p3}, Lde/appplant/cordova/plugin/notification/Notification;->update(Lorg/json/JSONObject;Ljava/lang/Class;)V

    goto :goto_0
.end method
