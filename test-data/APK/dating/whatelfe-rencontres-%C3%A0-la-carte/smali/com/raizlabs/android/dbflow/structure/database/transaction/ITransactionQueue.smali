.class public interface abstract Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;
.super Ljava/lang/Object;
.source "ITransactionQueue.java"


# virtual methods
.method public abstract add(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
.end method

.method public abstract cancel(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
.end method

.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract quit()V
.end method

.method public abstract startIfNotAlive()V
.end method
