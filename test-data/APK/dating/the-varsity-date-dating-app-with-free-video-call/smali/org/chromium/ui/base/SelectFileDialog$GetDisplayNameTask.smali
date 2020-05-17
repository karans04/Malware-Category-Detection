.class Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
.super Landroid/os/AsyncTask;
.source "SelectFileDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/SelectFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDisplayNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final mContentResolver:Landroid/content/ContentResolver;

.field mFilePaths:[Ljava/lang/String;

.field final mIsMultiple:Z

.field final synthetic this$0:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;Z)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "isMultiple"    # Z

    .prologue
    .line 407
    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 408
    iput-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 409
    iput-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mIsMultiple:Z

    .line 410
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->doInBackground([Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)[Ljava/lang/String;
    .locals 6
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 414
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    .line 415
    array-length v3, p1

    new-array v0, v3, [Ljava/lang/String;

    .line 417
    .local v0, "displayNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 418
    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 419
    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "_display_name"

    invoke-static {v3, v4, v5}, Lorg/chromium/base/ContentUriUtils;->getDisplayName(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "SelectFileDialog"

    const-string v4, "Unable to extract results from the content provider"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    .line 433
    .end local v0    # "displayNames":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 402
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 438
    if-nez p1, :cond_0

    .line 439
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->access$500(Lorg/chromium/ui/base/SelectFileDialog;)V

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mIsMultiple:Z

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v1}, Lorg/chromium/ui/base/SelectFileDialog;->access$700(Lorg/chromium/ui/base/SelectFileDialog;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, p1}, Lorg/chromium/ui/base/SelectFileDialog;->access$800(Lorg/chromium/ui/base/SelectFileDialog;J[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v1}, Lorg/chromium/ui/base/SelectFileDialog;->access$700(Lorg/chromium/ui/base/SelectFileDialog;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    aget-object v1, v1, v4

    aget-object v4, p1, v4

    invoke-static {v0, v2, v3, v1, v4}, Lorg/chromium/ui/base/SelectFileDialog;->access$900(Lorg/chromium/ui/base/SelectFileDialog;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
