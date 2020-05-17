.class Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;
.super Landroid/os/AsyncTask;
.source "XWalkDownloadListenerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileTransfer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->url:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->fileName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private streamTransfer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "dst"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 154
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 155
    .local v1, "length":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "dstStream":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 114
    .local v5, "srcStream":Ljava/io/InputStream;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 116
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->fileName:Ljava/lang/String;

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v1, "dst":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    const-string v6, "Existed"

    .line 137
    :goto_0
    return-object v6

    .line 121
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v2    # "dstStream":Ljava/io/OutputStream;
    .local v3, "dstStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-static {v6}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;->access$000(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->url:Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/xwalk/core/internal/AndroidProtocolHandler;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 123
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 124
    invoke-direct {p0, v5, v3}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->streamTransfer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :cond_1
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v2, v3

    .line 137
    .end local v3    # "dstStream":Ljava/io/OutputStream;
    .restart local v2    # "dstStream":Ljava/io/OutputStream;
    :cond_4
    :goto_1
    const-string v6, "Finished"

    goto :goto_0

    .line 132
    .end local v2    # "dstStream":Ljava/io/OutputStream;
    .restart local v3    # "dstStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    const-string v6, "Failed"

    move-object v2, v3

    .end local v3    # "dstStream":Ljava/io/OutputStream;
    .restart local v2    # "dstStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 126
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 127
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    if-eqz v5, :cond_5

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_5
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 132
    :catch_2
    move-exception v4

    .line 133
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    const-string v6, "Failed"

    goto :goto_0

    .line 129
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 130
    :goto_3
    if-eqz v5, :cond_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 134
    :cond_7
    throw v6

    .line 132
    :catch_3
    move-exception v4

    .line 133
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    const-string v6, "Failed"

    goto :goto_0

    .line 129
    .end local v2    # "dstStream":Ljava/io/OutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "dstStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "dstStream":Ljava/io/OutputStream;
    .restart local v2    # "dstStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 126
    .end local v2    # "dstStream":Ljava/io/OutputStream;
    .restart local v3    # "dstStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "dstStream":Ljava/io/OutputStream;
    .restart local v2    # "dstStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "Failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;->access$000(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/xwalk/core/internal/R$string;->download_failed_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;->access$100(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, "Existed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;->access$000(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/xwalk/core/internal/R$string;->download_already_exists_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;->access$100(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    const-string v0, "Finished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl$FileTransfer;->this$0:Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;->access$000(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/xwalk/core/internal/R$string;->download_finished_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;->access$100(Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;Ljava/lang/String;)V

    goto :goto_0
.end method
