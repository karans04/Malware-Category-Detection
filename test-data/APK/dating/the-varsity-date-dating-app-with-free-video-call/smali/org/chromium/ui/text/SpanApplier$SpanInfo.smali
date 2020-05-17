.class public final Lorg/chromium/ui/text/SpanApplier$SpanInfo;
.super Ljava/lang/Object;
.source "SpanApplier.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/text/SpanApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/chromium/ui/text/SpanApplier$SpanInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mEndTag:Ljava/lang/String;

.field mEndTagIndex:I

.field final mSpan:Ljava/lang/Object;

.field final mStartTag:Ljava/lang/String;

.field mStartTagIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "startTag"    # Ljava/lang/String;
    .param p2, "endTag"    # Ljava/lang/String;
    .param p3, "span"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mSpan:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I
    .locals 2
    .param p1, "other"    # Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    .prologue
    .line 48
    iget v0, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget v1, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget v1, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 54
    instance-of v1, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    if-nez v1, :cond_1

    .line 56
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
