.class Lorg/chromium/base/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mCompletionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/chromium/base/ResourceExtractor;


# direct methods
.method private constructor <init>(Lorg/chromium/base/ResourceExtractor;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/ResourceExtractor;Lorg/chromium/base/ResourceExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/base/ResourceExtractor;
    .param p2, "x1"    # Lorg/chromium/base/ResourceExtractor$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/base/ResourceExtractor;)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/base/ResourceExtractor$ExtractTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor$ExtractTask;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private beginTraceSection(Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doInBackgroundImpl()V
    .locals 26

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/chromium/base/ResourceExtractor;->access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v16

    .line 103
    .local v16, "outputDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/chromium/base/ResourceExtractor;->access$100(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v4

    .line 104
    .local v4, "appDataDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v21

    if-nez v21, :cond_0

    .line 105
    const-string v21, "cr.base"

    const-string v22, "Unable to create pak resources directory!"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v21, "checkPakTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 110
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->getApkVersion()J

    move-result-wide v8

    .line 111
    .local v8, "curAppVersion":J
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v17

    .line 112
    .local v17, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v21, "org.chromium.base.ResourceExtractor.Version"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 113
    .local v18, "prevAppVersion":J
    cmp-long v21, v8, v18

    if-eqz v21, :cond_2

    const/16 v20, 0x1

    .line 114
    .local v20, "versionChanged":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 116
    if-eqz v20, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/chromium/base/ResourceExtractor;->access$200(Lorg/chromium/base/ResourceExtractor;)V

    .line 121
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "org.chromium.base.ResourceExtractor.Version"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    :cond_1
    const-string v21, "WalkAssets"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 125
    const/16 v21, 0x4000

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 127
    .local v6, "buffer":[B
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$300()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    move-result-object v5

    .local v5, "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v14, :cond_6

    aget-object v11, v5, v12

    .line 133
    .local v11, "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    iget-object v0, v11, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/chromium/base/ResourceExtractor;->access$400(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object v7, v4

    .line 134
    .local v7, "dir":Ljava/io/File;
    :goto_3
    new-instance v15, Ljava/io/File;

    iget-object v0, v11, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v15, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v15, "output":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_4

    .line 127
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 113
    .end local v5    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v6    # "buffer":[B
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "output":Ljava/io/File;
    .end local v20    # "versionChanged":Z
    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .restart local v5    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v6    # "buffer":[B
    .restart local v11    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v12    # "i$":I
    .restart local v14    # "len$":I
    .restart local v20    # "versionChanged":Z
    :cond_3
    move-object/from16 v7, v16

    .line 133
    goto :goto_3

    .line 140
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v15    # "output":Ljava/io/File;
    :cond_4
    const-string v21, "ExtractResource"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$500()Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    move-result-object v21

    if-eqz v21, :cond_5

    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$500()Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    move-result-object v21

    iget-object v0, v11, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;->shouldInterceptLoadRequest(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 144
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$500()Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    move-result-object v21

    iget-object v0, v11, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;->openRawResource(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 149
    .local v13, "inputStream":Ljava/io/InputStream;
    :goto_5
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15, v6}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 154
    .end local v5    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v12    # "i$":I
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "len$":I
    .end local v15    # "output":Ljava/io/File;
    :catch_0
    move-exception v10

    .line 159
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    const-string v21, "cr.base"

    const-string v22, "Exception unpacking required pak resources: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/chromium/base/ResourceExtractor;->access$200(Lorg/chromium/base/ResourceExtractor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    goto/16 :goto_0

    .line 146
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v11    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v12    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "output":Ljava/io/File;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/chromium/base/ResourceExtractor;->access$600(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    iget v0, v11, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->resourceId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    .restart local v13    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 151
    :catchall_0
    move-exception v21

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v21
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    .end local v5    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v12    # "i$":I
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "len$":I
    .end local v15    # "output":Ljava/io/File;
    :catchall_1
    move-exception v21

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v21

    .restart local v5    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v12    # "i$":I
    .restart local v14    # "len$":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    goto/16 :goto_0
.end method

.method private endTraceSection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0
.end method

.method private extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "outFile"    # Ljava/io/File;
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 82
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    const-string v3, "cr.base"

    const-string v4, "Extracting resource %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "count":I
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x4000

    invoke-virtual {p1, p3, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    move-object v1, v2

    .line 90
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v3

    .line 90
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "count":I
    .restart local v2    # "os":Ljava/io/OutputStream;
    :cond_2
    if-eqz v2, :cond_3

    .line 91
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :cond_3
    if-eqz p1, :cond_4

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 99
    :cond_4
    return-void

    .line 94
    :catchall_1
    move-exception v3

    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v3

    .line 94
    .end local v0    # "count":I
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v3

    if-eqz p1, :cond_6

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v3

    .line 89
    :catchall_3
    move-exception v3

    goto :goto_1
.end method

.method private getApkVersion()J
    .locals 6

    .prologue
    .line 201
    iget-object v3, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v3}, Lorg/chromium/base/ResourceExtractor;->access$600(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 204
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v3}, Lorg/chromium/base/ResourceExtractor;->access$600(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 205
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    .line 206
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private onPostExecuteImpl()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 187
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 173
    const-string v0, "ResourceExtractor.ExtractTask.doInBackground"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 175
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackgroundImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 191
    const-string v0, "ResourceExtractor.ExtractTask.onPostExecute"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecuteImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 197
    return-void

    .line 195
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method
