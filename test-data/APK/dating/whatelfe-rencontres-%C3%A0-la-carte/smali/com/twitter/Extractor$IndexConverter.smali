.class final Lcom/twitter/Extractor$IndexConverter;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndexConverter"
.end annotation


# instance fields
.field protected charIndex:I

.field protected codePointIndex:I

.field protected final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput v0, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    .line 515
    iput v0, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    .line 518
    iput-object p1, p0, Lcom/twitter/Extractor$IndexConverter;->text:Ljava/lang/String;

    .line 519
    return-void
.end method


# virtual methods
.method codePointsToCodeUnits(I)I
    .locals 3
    .param p1, "codePointIndex"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/twitter/Extractor$IndexConverter;->text:Ljava/lang/String;

    iget v1, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    iget v2, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    .line 548
    iput p1, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    .line 549
    iget v0, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    return v0
.end method

.method codeUnitsToCodePoints(I)I
    .locals 3
    .param p1, "charIndex"    # I

    .prologue
    .line 526
    iget v0, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    if-ge p1, v0, :cond_1

    .line 527
    iget v0, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    iget-object v1, p0, Lcom/twitter/Extractor$IndexConverter;->text:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    .line 531
    :goto_0
    iput p1, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    .line 535
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/Extractor$IndexConverter;->text:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget v0, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    .line 538
    :cond_0
    iget v0, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    return v0

    .line 529
    :cond_1
    iget v0, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    iget-object v1, p0, Lcom/twitter/Extractor$IndexConverter;->text:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/Extractor$IndexConverter;->charIndex:I

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/Extractor$IndexConverter;->codePointIndex:I

    goto :goto_0
.end method
