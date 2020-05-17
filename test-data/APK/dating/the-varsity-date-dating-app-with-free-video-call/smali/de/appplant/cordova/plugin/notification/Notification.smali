.class public final Lde/appplant/cordova/plugin/notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/appplant/cordova/plugin/notification/Notification$Type;
    }
.end annotation


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final EXTRA_UPDATE:Ljava/lang/String; = "NOTIFICATION_UPDATE"

.field static final PREF_KEY_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field private static final PREF_KEY_PID:Ljava/lang/String; = "NOTIFICATION_PID"

.field private static cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final context:Landroid/content/Context;

.field private final options:Lde/appplant/cordova/plugin/notification/Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lde/appplant/cordova/plugin/notification/Options;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lde/appplant/cordova/plugin/notification/Options;
    .param p3, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 100
    iput-object p3, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    return-void
.end method

.method private cacheBuilder()V
    .locals 3

    .prologue
    .line 432
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    .line 436
    :cond_0
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    return-void
.end method

.method private cancelScheduledAlarms()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 286
    const-string v6, "NOTIFICATION_PID"

    invoke-direct {p0, v6}, Lde/appplant/cordova/plugin/notification/Notification;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 287
    .local v5, "prefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v6}, Lde/appplant/cordova/plugin/notification/Options;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "id":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 290
    .local v1, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 303
    :cond_0
    return-void

    .line 293
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    invoke-static {v7, v8, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 299
    .local v4, "pi":Landroid/app/PendingIntent;
    if-eqz v4, :cond_2

    .line 300
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getAlarmMgr()Landroid/app/AlarmManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 454
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 457
    :cond_0
    return-void
.end method

.method private getAlarmMgr()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method static getCachedBuilder(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 447
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotMgr()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const-string v1, "notification"

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 470
    return-object v0
.end method

.method private getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private grantPermissionToPlaySoundFromExternal()V
    .locals 5

    .prologue
    .line 399
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v2, :cond_0

    .line 408
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "NOTIFICATION_SOUND"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "sound":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 405
    .local v1, "soundUri":Landroid/net/Uri;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const-string v3, "com.android.systemui"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method private isRepeating()Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Options;->getTrigger()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "every"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mergeJSONObjects(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "updates"    # Lorg/json/JSONObject;

    .prologue
    .line 414
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    .line 415
    .local v0, "dict":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 417
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 420
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private persist(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "id":Ljava/lang/String;
    const-string v2, "NOTIFICATION_ID"

    invoke-direct {p0, v2}, Lde/appplant/cordova/plugin/notification/Notification;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    if-nez p1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v2, "NOTIFICATION_PID"

    invoke-direct {p0, v2}, Lde/appplant/cordova/plugin/notification/Notification;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private trigger(Landroid/content/Intent;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 255
    const/4 v2, 0x1

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :goto_0
    return v2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method private unpersist()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 383
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "NOTIFICATION_ID"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    const-string v6, "NOTIFICATION_PID"

    aput-object v6, v3, v5

    .line 384
    .local v3, "keys":[Ljava/lang/String;
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "id":Ljava/lang/String;
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 388
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lde/appplant/cordova/plugin/notification/Notification;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 389
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 271
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->cancelScheduledAlarms()V

    .line 272
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->unpersist()V

    .line 273
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 274
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->clearCache()V

    .line 275
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 263
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->unpersist()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOptions()Lde/appplant/cordova/plugin/notification/Options;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    return-object v0
.end method

.method public getType()Lde/appplant/cordova/plugin/notification/Notification$Type;
    .locals 7

    .prologue
    .line 147
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    invoke-static {v4}, Lde/appplant/cordova/plugin/notification/Manager;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    .line 148
    .local v1, "mgr":Lde/appplant/cordova/plugin/notification/Manager;
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Manager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 149
    .local v3, "toasts":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v0

    .line 151
    .local v0, "id":I
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 152
    .local v2, "toast":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 153
    sget-object v4, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    .line 157
    .end local v2    # "toast":Landroid/service/notification/StatusBarNotification;
    :goto_1
    return-object v4

    .line 151
    .restart local v2    # "toast":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "toast":Landroid/service/notification/StatusBarNotification;
    :cond_1
    sget-object v4, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    goto :goto_1
.end method

.method schedule(Lde/appplant/cordova/plugin/notification/Request;Ljava/lang/Class;)V
    .locals 16
    .param p1, "request"    # Lde/appplant/cordova/plugin/notification/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Request;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v5, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Ljava/util/Date;Landroid/content/Intent;>;>;"
    new-instance v3, Landroid/support/v4/util/ArraySet;

    invoke-direct {v3}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 169
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lde/appplant/cordova/plugin/notification/Notification;->getAlarmMgr()Landroid/app/AlarmManager;

    move-result-object v7

    .line 171
    .local v7, "mgr":Landroid/app/AlarmManager;
    invoke-direct/range {p0 .. p0}, Lde/appplant/cordova/plugin/notification/Notification;->cancelScheduledAlarms()V

    .line 174
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lde/appplant/cordova/plugin/notification/Request;->getTriggerDate()Ljava/util/Date;

    move-result-object v2

    .line 176
    .local v2, "date":Ljava/util/Date;
    if-nez v2, :cond_2

    .line 187
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lde/appplant/cordova/plugin/notification/Request;->moveNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 189
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 190
    invoke-direct/range {p0 .. p0}, Lde/appplant/cordova/plugin/notification/Notification;->unpersist()V

    .line 233
    :cond_1
    return-void

    .line 179
    :cond_2
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v12, v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTIFICATION_ID"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 180
    invoke-virtual/range {p1 .. p1}, Lde/appplant/cordova/plugin/notification/Request;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "NOTIFICATION_ID"

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 181
    invoke-virtual {v14}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "NOTIFICATION_OCCURRENCE"

    .line 182
    invoke-virtual/range {p1 .. p1}, Lde/appplant/cordova/plugin/notification/Request;->getOccurrence()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 184
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v12, Landroid/support/v4/util/Pair;

    invoke-direct {v12, v2, v4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lde/appplant/cordova/plugin/notification/Notification;->persist(Ljava/util/Set;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v12}, Lde/appplant/cordova/plugin/notification/Options;->isInfiniteTrigger()Z

    move-result v12

    if-nez v12, :cond_4

    .line 197
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/util/Pair;

    iget-object v6, v12, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    .line 198
    .local v6, "last":Landroid/content/Intent;
    const-string v12, "NOTIFICATION_LAST"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    .end local v6    # "last":Landroid/content/Intent;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/util/Pair;

    .line 202
    .local v8, "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/util/Date;Landroid/content/Intent;>;"
    iget-object v2, v8, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    .end local v2    # "date":Ljava/util/Date;
    check-cast v2, Ljava/util/Date;

    .line 203
    .restart local v2    # "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 204
    .local v10, "time":J
    iget-object v4, v8, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 206
    .restart local v4    # "intent":Landroid/content/Intent;
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lde/appplant/cordova/plugin/notification/Notification;->trigger(Landroid/content/Intent;Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 209
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x10000000

    invoke-static {v13, v14, v4, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 213
    .local v9, "pi":Landroid/app/PendingIntent;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v13}, Lde/appplant/cordova/plugin/notification/Options;->getPriority()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 225
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v10, v11, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 228
    :catch_0
    move-exception v13

    goto :goto_1

    .line 215
    :sswitch_0
    const/4 v13, 0x1

    invoke-virtual {v7, v13, v10, v11, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 218
    :sswitch_1
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_7

    .line 219
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v10, v11, v9}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 221
    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v7, v13, v10, v11, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public show()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Options;->isWithProgressBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->cacheBuilder()V

    .line 315
    :cond_1
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->grantPermissionToPlaySoundFromExternal()V

    .line 316
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 344
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    .line 345
    .local v0, "dict":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    move-object v2, v3

    .line 353
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method update(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 4
    .param p1, "updates"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/Notification;->mergeJSONObjects(Lorg/json/JSONObject;)V

    .line 327
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lde/appplant/cordova/plugin/notification/Notification;->persist(Ljava/util/Set;)V

    .line 329
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getType()Lde/appplant/cordova/plugin/notification/Notification$Type;

    move-result-object v1

    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    if-eq v1, v2, :cond_0

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFICATION_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 333
    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "NOTIFICATION_ID"

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 334
    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "NOTIFICATION_UPDATE"

    const/4 v3, 0x1

    .line 335
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0, p2}, Lde/appplant/cordova/plugin/notification/Notification;->trigger(Landroid/content/Intent;Ljava/lang/Class;)Z

    goto :goto_0
.end method
