.class public interface abstract Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;
.super Ljava/lang/Object;
.source "WebActionModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/WebActionModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionHandler"
.end annotation


# virtual methods
.method public abstract copy()V
.end method

.method public abstract cut()V
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract isInsertion()Z
.end method

.method public abstract isSelectActionModeAllowed(I)Z
.end method

.method public abstract isSelectionEditable()Z
.end method

.method public abstract isSelectionPassword()Z
.end method

.method public abstract onDestroyActionMode()V
.end method

.method public abstract onGetContentRect(Landroid/graphics/Rect;)V
.end method

.method public abstract paste()V
.end method

.method public abstract processText(Landroid/content/Intent;)V
.end method

.method public abstract search()V
.end method

.method public abstract selectAll()V
.end method

.method public abstract share()V
.end method
