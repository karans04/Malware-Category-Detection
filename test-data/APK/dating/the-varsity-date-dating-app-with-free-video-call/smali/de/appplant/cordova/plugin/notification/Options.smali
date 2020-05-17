.class public final Lde/appplant/cordova/plugin/notification/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field private static final DEFAULT_ICON:Ljava/lang/String; = "res://icon"

.field public static final EXTRA_LAUNCH:Ljava/lang/String; = "NOTIFICATION_LAUNCH"

.field static final EXTRA_SOUND:Ljava/lang/String; = "NOTIFICATION_SOUND"


# instance fields
.field private final assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

.field private final context:Landroid/content/Context;

.field private final options:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    .line 97
    invoke-static {p1}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    .line 84
    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    .line 85
    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    .line 86
    return-void
.end method

.method private isWithDefaultLights()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 424
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithDefaultSound()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 408
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "sound"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithVibration()Z
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isWithoutLights()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isWithoutSound()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "sound"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private stripHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "hex":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method getActions()[Lde/appplant/cordova/plugin/notification/action/Action;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 581
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v5, "actionGroupId"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "groupId":Ljava/lang/String;
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v5, "actions"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 583
    .local v0, "actions":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 585
    .local v1, "group":Lde/appplant/cordova/plugin/notification/action/ActionGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 586
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->parse(Landroid/content/Context;Lorg/json/JSONObject;)Lde/appplant/cordova/plugin/notification/action/ActionGroup;

    move-result-object v1

    .line 589
    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 590
    invoke-static {v2}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->lookup(Ljava/lang/String;)Lde/appplant/cordova/plugin/notification/action/ActionGroup;

    move-result-object v1

    .line 593
    :cond_1
    if-eqz v1, :cond_2

    .line 594
    invoke-static {v1}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->register(Lde/appplant/cordova/plugin/notification/action/ActionGroup;)V

    .line 595
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/action/ActionGroup;->getActions()[Lde/appplant/cordova/plugin/notification/action/Action;

    move-result-object v3

    .line 598
    :cond_2
    return-object v3
.end method

.method getAttachments()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v7, "attachments"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 554
    .local v2, "paths":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v4, "pics":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-nez v2, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-object v4

    .line 559
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 560
    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 562
    .local v5, "uri":Landroid/net/Uri;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v5, v6, :cond_2

    .line 559
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 566
    :cond_2
    :try_start_0
    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    invoke-virtual {v6, v5}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->getIconFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 567
    .local v3, "pic":Landroid/graphics/Bitmap;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v3    # "pic":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getBadgeNumber()I
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "badge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "channel"

    const-string v2, "default-channel-id"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 308
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v5, "color"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "hex":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 332
    :goto_0
    return v3

    .line 314
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lde/appplant/cordova/plugin/notification/Options;->stripHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const-string v4, "[^0-9]*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    const-class v4, Landroid/graphics/Color;

    .line 318
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    .line 319
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 322
    :cond_1
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 323
    .local v0, "aRGB":I
    const/high16 v3, -0x1000000

    add-int/2addr v3, v0

    goto :goto_0

    .line 324
    .end local v0    # "aRGB":I
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 326
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    return-object v0
.end method

.method getDefaults()I
    .locals 4

    .prologue
    .line 434
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "defaults"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 436
    .local v0, "defaults":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Options;->isWithVibration()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    or-int/lit8 v0, v0, 0x2

    .line 442
    :goto_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Options;->isWithDefaultSound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    or-int/lit8 v0, v0, 0x1

    .line 449
    :cond_0
    :goto_1
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Options;->isWithDefaultLights()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    or-int/lit8 v0, v0, 0x4

    .line 456
    :cond_1
    :goto_2
    return v0

    .line 439
    :cond_2
    and-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 445
    :cond_3
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Options;->isWithoutSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    and-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    :cond_4
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Options;->isWithoutLights()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    and-int/lit8 v0, v0, 0x4

    goto :goto_2
.end method

.method public getDict()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    return-object v0
.end method

.method getGroup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "group"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGroupSummary()Z
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "groupSummary"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLargeIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 354
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v5, "icon"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "icon":Ljava/lang/String;
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    invoke-virtual {v4, v2}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 356
    .local v3, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 359
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    invoke-virtual {v4, v3}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->getIconFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getLedColor()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v6, "led"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 243
    .local v1, "cfg":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 245
    .local v3, "hex":Ljava/lang/String;
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 246
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v6, "led"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 267
    :goto_1
    return v4

    .line 248
    :cond_1
    instance-of v5, v1, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    .line 249
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v6, "led"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 251
    :cond_2
    instance-of v5, v1, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 252
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v6, "led"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "color"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 259
    :cond_3
    :try_start_0
    invoke-direct {p0, v3}, Lde/appplant/cordova/plugin/notification/Options;->stripHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 262
    .local v0, "aRGB":I
    const/high16 v4, -0x1000000

    add-int/2addr v4, v0

    goto :goto_1

    .line 263
    .end local v0    # "aRGB":I
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method getLedOff()I
    .locals 4

    .prologue
    .line 290
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "cfg":Ljava/lang/Object;
    const/16 v1, 0x3e8

    .line 293
    .local v1, "defVal":I
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    .line 299
    .end local v1    # "defVal":I
    :cond_0
    :goto_0
    return v1

    .line 296
    .restart local v1    # "defVal":I
    :cond_1
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method getLedOn()I
    .locals 4

    .prologue
    .line 274
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "cfg":Ljava/lang/Object;
    const/16 v1, 0x3e8

    .line 277
    .local v1, "defVal":I
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    .line 283
    .end local v1    # "defVal":I
    :cond_0
    :goto_0
    return v1

    .line 280
    .restart local v1    # "defVal":I
    :cond_1
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v4, "mediaSession"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 645
    :goto_0
    return-object v2

    .line 643
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 645
    .local v0, "session":Landroid/support/v4/media/session/MediaSessionCompat;
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    goto :goto_0
.end method

.method getMessages()[Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 607
    iget-object v12, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v13, "text"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 609
    .local v8, "text":Ljava/lang/Object;
    if-eqz v8, :cond_0

    instance-of v12, v8, Ljava/lang/String;

    if-eqz v12, :cond_2

    :cond_0
    move-object v3, v9

    .line 629
    :cond_1
    :goto_0
    return-object v3

    :cond_2
    move-object v1, v8

    .line 612
    check-cast v1, Lorg/json/JSONArray;

    .line 614
    .local v1, "list":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_3

    move-object v3, v9

    .line 615
    goto :goto_0

    .line 617
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v3, v12, [Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 618
    .local v3, "messages":[Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 620
    .local v6, "now":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v12, v3

    if-ge v0, v12, :cond_1

    .line 621
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 622
    .local v4, "msg":Lorg/json/JSONObject;
    const-string v12, "message"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "message":Ljava/lang/String;
    const-string v12, "date"

    invoke-virtual {v4, v12, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 624
    .local v10, "timestamp":J
    const-string v12, "person"

    invoke-virtual {v4, v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, "person":Ljava/lang/String;
    new-instance v12, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v12, v2, v10, v11, v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    aput-object v12, v3, v0

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getNumber()I
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "number"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getPriority()I
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "priority"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 478
    .local v0, "prio":I
    const/4 v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method getProgressMaxValue()I
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "progressBar"

    .line 515
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "maxValue"

    const/16 v2, 0x64

    .line 516
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 514
    return v0
.end method

.method getProgressValue()I
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "progressBar"

    .line 504
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x0

    .line 505
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 503
    return v0
.end method

.method getShowWhen()Z
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "showWhen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getSmallIcon()I
    .locals 5

    .prologue
    .line 371
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "smallIcon"

    const-string v4, "res://icon"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "icon":Ljava/lang/String;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    invoke-virtual {v2, v0}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->getResId(Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 375
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    const-string v3, "res://icon"

    invoke-virtual {v2, v3}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->getResId(Ljava/lang/String;)I

    move-result v1

    .line 378
    :cond_0
    if-nez v1, :cond_1

    .line 379
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 382
    :cond_1
    if-nez v1, :cond_2

    .line 383
    const v1, 0x108005e

    .line 386
    :cond_2
    return v1
.end method

.method getSound()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/util/AssetUtil;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "sound"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/notification/util/AssetUtil;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "summary"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "text":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "text":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/Object;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    .line 232
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    return-object v0
.end method

.method public getTrigger()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "trigger"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method getVisibility()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 465
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "lockscreen"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method hasLargeIcon()Z
    .locals 4

    .prologue
    .line 346
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "icon"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "icon":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isAutoClear()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "autoClear"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isIndeterminateProgress()Z
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "progressBar"

    .line 526
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "indeterminate"

    const/4 v2, 0x0

    .line 527
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 525
    return v0
.end method

.method public isInfiniteTrigger()Z
    .locals 3

    .prologue
    .line 534
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "trigger"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 536
    .local v0, "trigger":Lorg/json/JSONObject;
    const-string v1, "every"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isLaunchingApp()Z
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "launch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isSilent()Z
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "silent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSticky()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "sticky"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isWithProgressBar()Z
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "progressBar"

    .line 493
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enabled"

    const/4 v2, 0x0

    .line 494
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 492
    return v0
.end method

.method public shallWakeUp()Z
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "wakeup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
