.class public interface abstract Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionManagerCreator"
.end annotation


# virtual methods
.method public abstract createManager(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;
.end method
