.class public interface abstract Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;
.super Ljava/lang/Object;
.source "SchemeHandler.java"


# virtual methods
.method public abstract getContentType(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract getLength(Landroid/content/Context;)J
.end method

.method public abstract getName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract init(Ljava/lang/String;)V
.end method
