.class public final Lorg/chromium/base/CommandLineInitUtil;
.super Ljava/lang/Object;
.source "CommandLineInitUtil.java"


# static fields
.field private static final COMMAND_LINE_FILE_PATH:Ljava/lang/String; = "/data/local"

.field private static final COMMAND_LINE_FILE_PATH_DEBUG_APP:Ljava/lang/String; = "/data/local/tmp"

.field private static final TAG:Ljava/lang/String; = "CommandLineInitUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static getAlternativeCommandLinePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 66
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/local/tmp"

    invoke-direct {v0, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "alternativeCommandLineFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 83
    .end local v0    # "alternativeCommandLineFile":Ljava/io/File;
    :goto_0
    return-object v0

    .line 70
    .restart local v0    # "alternativeCommandLineFile":Ljava/io/File;
    :cond_0
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_2

    invoke-static {p0}, Lorg/chromium/base/CommandLineInitUtil;->getDebugAppPreJBMR1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "debugApp":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    const-string v4, "CommandLineInitUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using alternative command line file in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1    # "debugApp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v4, "CommandLineInitUtil"

    const-string v5, "Unable to detect alternative command line file"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1
    move-object v0, v3

    .line 83
    goto :goto_0

    .line 70
    :cond_2
    :try_start_1
    invoke-static {p0}, Lorg/chromium/base/CommandLineInitUtil;->getDebugAppJBMR1(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private static getDebugAppJBMR1(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 90
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "debug_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    :goto_1
    return-object v1

    .end local v0    # "adbEnabled":Z
    :cond_0
    move v0, v1

    .line 88
    goto :goto_0

    .line 94
    .restart local v0    # "adbEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getDebugAppPreJBMR1(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 101
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "debug_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_1
    return-object v1

    .end local v0    # "adbEnabled":Z
    :cond_0
    move v0, v1

    .line 99
    goto :goto_0

    .line 105
    .restart local v0    # "adbEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static initCommandLine(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {p0, p1}, Lorg/chromium/base/CommandLineInitUtil;->getAlternativeCommandLinePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "commandLineFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/File;

    .end local v0    # "commandLineFile":Ljava/io/File;
    const-string v1, "/data/local"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .restart local v0    # "commandLineFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/CommandLine;->initFromFile(Ljava/lang/String;)V

    .line 59
    .end local v0    # "commandLineFile":Ljava/io/File;
    :cond_1
    return-void
.end method
