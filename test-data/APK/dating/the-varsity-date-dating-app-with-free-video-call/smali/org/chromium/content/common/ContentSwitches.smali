.class public abstract Lorg/chromium/content/common/ContentSwitches;
.super Ljava/lang/Object;
.source "ContentSwitches.java"


# static fields
.field public static final ACCESSIBILITY_JAVASCRIPT_URL:Ljava/lang/String; = "accessibility-js-url"

.field public static final ADD_OFFICIAL_COMMAND_LINE:Ljava/lang/String; = "add-official-command-line"

.field public static final DISABLE_GESTURE_REQUIREMENT_FOR_MEDIA_PLAYBACK:Ljava/lang/String; = "disable-gesture-requirement-for-media-playback"

.field public static final DISABLE_GESTURE_REQUIREMENT_FOR_PRESENTATION:Ljava/lang/String; = "disable-gesture-requirement-for-presentation"

.field public static final DISABLE_POPUP_BLOCKING:Ljava/lang/String; = "disable-popup-blocking"

.field public static final ENABLE_CREDENTIAL_MANAGER_API:Ljava/lang/String; = "enable-credential-manager-api"

.field public static final ENABLE_INSTANT_EXTENDED_API:Ljava/lang/String; = "enable-instant-extended-api"

.field public static final ENABLE_TEST_INTENTS:Ljava/lang/String; = "enable-test-intents"

.field public static final ENABLE_TOUCH_HOVER:Ljava/lang/String; = "enable-touch-hover"

.field public static final FORCE_DEVICE_SCALE_FACTOR:Ljava/lang/String; = "force-device-scale-factor"

.field public static final IN_PROCESS_GPU:Ljava/lang/String; = "in-process-gpu"

.field public static final LOG_FPS:Ljava/lang/String; = "log-fps"

.field public static final NETWORK_COUNTRY_ISO:Ljava/lang/String; = "network-country-iso"

.field public static final RENDER_PROCESS_LIMIT:Ljava/lang/String; = "renderer-process-limit"

.field public static final RUNNING_PERFORMANCE_BENCHMARK:Ljava/lang/String; = "running-performance-benchmark"

.field public static final RUN_LAYOUT_TEST:Ljava/lang/String; = "run-layout-test"

.field public static final SWITCH_DOWNLOAD_PROCESS:Ljava/lang/String; = "download"

.field public static final SWITCH_GPU_PROCESS:Ljava/lang/String; = "gpu-process"

.field public static final SWITCH_PROCESS_TYPE:Ljava/lang/String; = "type"

.field public static final SWITCH_RENDERER_PROCESS:Ljava/lang/String; = "renderer"

.field public static final SWITCH_UTILITY_PROCESS:Ljava/lang/String; = "utility"

.field public static final TOP_CONTROLS_HIDE_THRESHOLD:Ljava/lang/String; = "top-controls-hide-threshold"

.field public static final TOP_CONTROLS_SHOW_THRESHOLD:Ljava/lang/String; = "top-controls-show-threshold"

.field public static final USE_MOBILE_UA:Ljava/lang/String; = "use-mobile-user-agent"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "commandLine"    # [Ljava/lang/String;
    .param p1, "switchKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 95
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v5

    .line 99
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "switchKeyPrefix":Ljava/lang/String;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 101
    .local v1, "command":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
