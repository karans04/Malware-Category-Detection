.class public final Lde/appplant/cordova/plugin/badge/BadgeImpl;
.super Ljava/lang/Object;
.source "BadgeImpl.java"


# static fields
.field private static final BADGE_KEY:Ljava/lang/String; = "badge"

.field private static final CONFIG_KEY:Ljava/lang/String; = "badge.config"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final isSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->isBadgeCounterSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iput-object p1, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->ctx:Landroid/content/Context;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->isSupported:Z

    .line 62
    :goto_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->getBadge()I

    move-result v1

    invoke-static {v0, v1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    .line 63
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->ctx:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->isBadgeCounterSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->isSupported:Z

    goto :goto_0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->ctx:Landroid/content/Context;

    const-string v1, "badge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private saveBadge(I)V
    .locals 2
    .param p1, "badge"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "badge"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method


# virtual methods
.method public clearBadge()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->saveBadge(I)V

    .line 70
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->removeCount(Landroid/content/Context;)Z

    .line 71
    return-void
.end method

.method public getBadge()I
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "badge"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->isSupported:Z

    return v0
.end method

.method public loadConfig()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 103
    invoke-direct {p0}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "badge.config"

    const-string v4, "{}"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public saveConfig(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 118
    invoke-direct {p0}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "badge.config"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    return-void
.end method

.method public setBadge(I)V
    .locals 1
    .param p1, "badge"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/badge/BadgeImpl;->saveBadge(I)V

    .line 96
    iget-object v0, p0, Lde/appplant/cordova/plugin/badge/BadgeImpl;->ctx:Landroid/content/Context;

    invoke-static {v0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    .line 97
    return-void
.end method
