.class public interface abstract Lnet/gotev/uploadservice/http/BodyWriter$OnStreamWriteListener;
.super Ljava/lang/Object;
.source "BodyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/http/BodyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStreamWriteListener"
.end annotation


# virtual methods
.method public abstract onBytesWritten(I)V
.end method

.method public abstract shouldContinueWriting()Z
.end method
