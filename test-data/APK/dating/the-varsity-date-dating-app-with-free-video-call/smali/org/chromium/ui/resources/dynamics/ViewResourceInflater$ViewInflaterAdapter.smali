.class Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;
.super Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
.source "ViewResourceInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewInflaterAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 395
    iput-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;->this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    .line 396
    invoke-direct {p0, p2}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;-><init>(Landroid/view/View;)V

    .line 397
    return-void
.end method


# virtual methods
.method protected onCaptureEnd()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;->this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    invoke-virtual {v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->onCaptureEnd()V

    .line 402
    return-void
.end method
