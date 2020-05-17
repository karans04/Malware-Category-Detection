.class public interface abstract Lorg/chromium/mojo/bindings/HandleOwner;
.super Ljava/lang/Object;
.source "HandleOwner.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lorg/chromium/mojo/system/Handle;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract passHandle()Lorg/chromium/mojo/system/Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation
.end method
