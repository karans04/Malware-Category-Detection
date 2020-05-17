.class public Lorg/chromium/ui/text/SpanApplier;
.super Ljava/lang/Object;
.source "SpanApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static varargs applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;
    .locals 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "spans"    # [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 75
    move-object v0, p1

    .local v0, "arr$":[Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 76
    .local v6, "span":Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    iget-object v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    .line 77
    iget-object v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    iget v9, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget-object v10, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v6    # "span":Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, "inputIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v5, "output":Ljava/lang/StringBuilder;
    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 92
    .restart local v6    # "span":Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-eq v8, v11, :cond_1

    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    if-eq v8, v11, :cond_1

    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-ge v8, v3, :cond_2

    .line 94
    :cond_1
    iput v11, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    .line 95
    const-string v8, "Input string is missing tags %s%s: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    aput-object v10, v9, v12

    const/4 v10, 0x1

    iget-object v11, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "error":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 100
    .end local v1    # "error":Ljava/lang/String;
    :cond_2
    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    invoke-virtual {v5, p0, v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 101
    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget-object v9, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v3, v8, v9

    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iput v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    .line 104
    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    invoke-virtual {v5, p0, v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 105
    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    iget-object v9, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v3, v8, v9

    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iput v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v6    # "span":Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, p0, v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 110
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .local v7, "spannableString":Landroid/text/SpannableString;
    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v6, v0, v2

    .line 112
    .restart local v6    # "span":Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    iget v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-eq v8, v11, :cond_4

    .line 113
    iget-object v8, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mSpan:Ljava/lang/Object;

    iget v9, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget v10, v6, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    invoke-virtual {v7, v8, v9, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 117
    .end local v6    # "span":Lorg/chromium/ui/text/SpanApplier$SpanInfo;
    :cond_5
    return-object v7
.end method
