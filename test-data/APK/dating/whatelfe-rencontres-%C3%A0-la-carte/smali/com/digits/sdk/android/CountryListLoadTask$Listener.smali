.class public interface abstract Lcom/digits/sdk/android/CountryListLoadTask$Listener;
.super Ljava/lang/Object;
.source "CountryListLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digits/sdk/android/CountryListLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onLoadComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/CountryInfo;",
            ">;)V"
        }
    .end annotation
.end method
