.class public abstract Lorg/chromium/base/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/CommandLine$NativeCommandLine;,
        Lorg/chromium/base/CommandLine$JavaCommandLine;,
        Lorg/chromium/base/CommandLine$ResetListener;
    }
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SWITCH_PREFIX:Ljava/lang/String; = "--"

.field private static final SWITCH_TERMINATOR:Ljava/lang/String; = "--"

.field private static final SWITCH_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final TAG:Ljava/lang/String; = "CommandLine"

.field private static final sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/chromium/base/CommandLine;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResetListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/CommandLine$ResetListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/base/CommandLine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/CommandLine$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/base/CommandLine$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/base/CommandLine;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeHasSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeGetSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeAppendSwitch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lorg/chromium/base/CommandLine;->nativeAppendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800([Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeAppendSwitchesAndArguments([Ljava/lang/String;)V

    return-void
.end method

.method public static addResetListener(Lorg/chromium/base/CommandLine$ResetListener;)V
    .locals 1
    .param p0, "listener"    # Lorg/chromium/base/CommandLine$ResetListener;

    .prologue
    .line 158
    sget-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public static enableNativeProxy()V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/chromium/base/CommandLine$NativeCommandLine;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/base/CommandLine$NativeCommandLine;-><init>(Lorg/chromium/base/CommandLine$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public static getInstance()Lorg/chromium/base/CommandLine;
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 117
    sget-object v1, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/CommandLine;

    .line 118
    .local v0, "commandLine":Lorg/chromium/base/CommandLine;
    sget-boolean v1, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 119
    :cond_0
    return-object v0
.end method

.method public static getJavaSwitchesOrNull()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    sget-object v1, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/CommandLine;

    .line 224
    .local v0, "commandLine":Lorg/chromium/base/CommandLine;
    if-eqz v0, :cond_1

    .line 225
    sget-boolean v1, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/CommandLine;->isNativeImplementation()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 226
    :cond_0
    check-cast v0, Lorg/chromium/base/CommandLine$JavaCommandLine;

    .end local v0    # "commandLine":Lorg/chromium/base/CommandLine;
    invoke-static {v0}, Lorg/chromium/base/CommandLine$JavaCommandLine;->access$200(Lorg/chromium/base/CommandLine$JavaCommandLine;)[Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .restart local v0    # "commandLine":Lorg/chromium/base/CommandLine;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lorg/chromium/base/CommandLine$JavaCommandLine;

    invoke-direct {v0, p0}, Lorg/chromium/base/CommandLine$JavaCommandLine;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->setInstance(Lorg/chromium/base/CommandLine;)V

    .line 129
    return-void
.end method

.method public static initFromFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 138
    const/16 v1, 0x2000

    invoke-static {p0, v1}, Lorg/chromium/base/CommandLine;->readUtf8FileFully(Ljava/lang/String;I)[C

    move-result-object v0

    .line 139
    .local v0, "buffer":[C
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 140
    return-void

    .line 139
    :cond_0
    invoke-static {v0}, Lorg/chromium/base/CommandLine;->tokenizeQuotedAruments([C)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeAppendSwitch(Ljava/lang/String;)V
.end method

.method private static native nativeAppendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAppendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method private static native nativeGetSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeHasSwitch(Ljava/lang/String;)Z
.end method

.method private static native nativeReset()V
.end method

.method private static readUtf8FileFully(Ljava/lang/String;I)[C
    .locals 12
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "sizeLimit"    # I

    .prologue
    const/4 v8, 0x0

    .line 245
    const/4 v6, 0x0

    .line 246
    .local v6, "reader":Ljava/io/Reader;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 249
    .local v4, "fileLength":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    move-object v0, v8

    .line 276
    :goto_0
    return-object v0

    .line 253
    :cond_0
    int-to-long v10, p1

    cmp-long v9, v4, v10

    if-lez v9, :cond_1

    .line 254
    const-string v9, "CommandLine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " exceeds limit "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 256
    goto :goto_0

    .line 260
    :cond_1
    long-to-int v9, v4

    :try_start_0
    new-array v0, v9, [C

    .line 261
    .local v0, "buffer":[C
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v10, "UTF-8"

    invoke-direct {v7, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v6    # "reader":Ljava/io/Reader;
    .local v7, "reader":Ljava/io/Reader;
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 265
    .local v1, "charsRead":I
    sget-boolean v9, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    if-nez v9, :cond_3

    invoke-virtual {v7}, Ljava/io/Reader;->ready()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    .end local v1    # "charsRead":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 273
    .end local v0    # "buffer":[C
    .end local v7    # "reader":Ljava/io/Reader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "reader":Ljava/io/Reader;
    :goto_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    move-object v0, v8

    .line 276
    goto :goto_0

    .line 266
    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "charsRead":I
    .restart local v7    # "reader":Ljava/io/Reader;
    :cond_3
    :try_start_3
    array-length v9, v0

    if-ge v1, v9, :cond_4

    const/4 v9, 0x0

    invoke-static {v0, v9, v1}, Ljava/util/Arrays;->copyOfRange([CII)[C
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 273
    .end local v0    # "buffer":[C
    :cond_4
    if-eqz v7, :cond_5

    :try_start_4
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_3
    move-object v6, v7

    .line 276
    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v6    # "reader":Ljava/io/Reader;
    goto :goto_0

    .line 274
    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    :catch_1
    move-exception v2

    .line 275
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "CommandLine"

    const-string v9, "Unable to close file reader."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 274
    .end local v1    # "charsRead":I
    .end local v7    # "reader":Ljava/io/Reader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v2

    .line 275
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CommandLine"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 269
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 273
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v6, :cond_6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_5
    move-object v0, v8

    .line 276
    goto/16 :goto_0

    .line 274
    :catch_4
    move-exception v2

    .line 275
    const-string v9, "CommandLine"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 273
    :goto_6
    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 276
    :cond_7
    :goto_7
    throw v8

    .line 274
    :catch_5
    move-exception v2

    .line 275
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "CommandLine"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local v7    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v6    # "reader":Ljava/io/Reader;
    goto :goto_6

    .line 269
    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v6    # "reader":Ljava/io/Reader;
    goto :goto_4

    .line 267
    .end local v0    # "buffer":[C
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static removeResetListener(Lorg/chromium/base/CommandLine$ResetListener;)V
    .locals 1
    .param p0, "listener"    # Lorg/chromium/base/CommandLine$ResetListener;

    .prologue
    .line 162
    sget-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public static reset()V
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->setInstance(Lorg/chromium/base/CommandLine;)V

    .line 149
    new-instance v0, Lorg/chromium/base/CommandLine$1;

    invoke-direct {v0}, Lorg/chromium/base/CommandLine$1;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method private static setInstance(Lorg/chromium/base/CommandLine;)V
    .locals 2
    .param p0, "commandLine"    # Lorg/chromium/base/CommandLine;

    .prologue
    .line 232
    sget-object v1, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/CommandLine;

    .line 233
    .local v0, "oldCommandLine":Lorg/chromium/base/CommandLine;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/CommandLine;->isNativeImplementation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-static {}, Lorg/chromium/base/CommandLine;->nativeReset()V

    .line 236
    :cond_0
    return-void
.end method

.method public static tokenizeQuotedAruments([C)[Ljava/lang/String;
    .locals 13
    .param p0, "buffer"    # [C

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "arg":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 178
    .local v8, "noQuote":C
    const/16 v9, 0x27

    .line 179
    .local v9, "singleQuote":C
    const/16 v5, 0x22

    .line 180
    .local v5, "doubleQuote":C
    const/4 v4, 0x0

    .line 181
    .local v4, "currentQuote":C
    move-object v2, p0

    .local v2, "arr$":[C
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_8

    aget-char v3, v2, v6

    .line 183
    .local v3, "c":C
    if-nez v4, :cond_0

    const/16 v10, 0x27

    if-eq v3, v10, :cond_1

    const/16 v10, 0x22

    if-eq v3, v10, :cond_1

    :cond_0
    if-ne v3, v4, :cond_5

    .line 185
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_3

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 181
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    :cond_3
    if-nez v4, :cond_4

    move v4, v3

    :goto_2
    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 191
    :cond_5
    if-nez v4, :cond_6

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 192
    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v0, 0x0

    goto :goto_1

    .line 197
    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "arg":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .restart local v0    # "arg":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    .end local v3    # "c":C
    :cond_8
    if-eqz v0, :cond_a

    .line 202
    if-eqz v4, :cond_9

    .line 203
    const-string v10, "CommandLine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unterminated quoted string: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method


# virtual methods
.method public abstract appendSwitch(Ljava/lang/String;)V
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract appendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method public abstract getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getSwitchValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "switchString"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public abstract hasSwitch(Ljava/lang/String;)Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public isNativeImplementation()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
