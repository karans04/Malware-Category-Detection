.class public Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
.super Ljava/lang/Object;
.source "AccessibilitySnapshotNode.java"


# annotations
.annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
    value = {
        "URF_UNREAD_PUBLIC_OR_PROTECTED_FIELD"
    }
.end annotation


# instance fields
.field public bgcolor:I

.field public bold:Z

.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;",
            ">;"
        }
    .end annotation
.end field

.field public className:Ljava/lang/String;

.field public color:I

.field public endSelection:I

.field public hasSelection:Z

.field public hasStyle:Z

.field public height:I

.field public isRootNode:Z

.field public italic:Z

.field public lineThrough:Z

.field public startSelection:I

.field public text:Ljava/lang/String;

.field public textSize:F

.field public underline:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->text:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->className:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public addChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 1
    .param p1, "node"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public setLocationInfo(IIIIZ)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isRootNode"    # Z

    .prologue
    .line 61
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->x:I

    .line 62
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->y:I

    .line 63
    iput p3, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->width:I

    .line 64
    iput p4, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->height:I

    .line 65
    iput-boolean p5, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->isRootNode:Z

    .line 66
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasSelection:Z

    .line 56
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->startSelection:I

    .line 57
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->endSelection:I

    .line 58
    return-void
.end method

.method public setStyle(IIFZZZZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "bgcolor"    # I
    .param p3, "textSize"    # F
    .param p4, "bold"    # Z
    .param p5, "italic"    # Z
    .param p6, "underline"    # Z
    .param p7, "lineThrough"    # Z

    .prologue
    .line 44
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->color:I

    .line 45
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bgcolor:I

    .line 46
    iput p3, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->textSize:F

    .line 47
    iput-boolean p4, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bold:Z

    .line 48
    iput-boolean p5, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->italic:Z

    .line 49
    iput-boolean p6, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->underline:Z

    .line 50
    iput-boolean p7, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->lineThrough:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasStyle:Z

    .line 52
    return-void
.end method
