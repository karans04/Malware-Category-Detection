.class public interface abstract Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;
.super Ljava/lang/Object;
.source "OpenHelper.java"


# virtual methods
.method public abstract backupDB()V
.end method

.method public abstract closeDB()V
.end method

.method public abstract getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
.end method

.method public abstract getDelegate()Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;
.end method

.method public abstract isDatabaseIntegrityOk()Z
.end method

.method public abstract performRestoreFromBackup()V
.end method

.method public abstract setDatabaseListener(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)V
.end method
