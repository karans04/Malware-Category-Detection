.class final Lorg/chromium/content/browser/input/CursorAnchorInfoController$1;
.super Ljava/lang/Object;
.source "CursorAnchorInfoController.java"

# interfaces
.implements Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/CursorAnchorInfoController;->create(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationOnScreen(Landroid/view/View;[I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "location"    # [I

    .prologue
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 101
    return-void
.end method
