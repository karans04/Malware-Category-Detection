.class Lorg/chromium/base/ObserverList$ObserverListIterator;
.super Ljava/lang/Object;
.source "ObserverList.java"

# interfaces
.implements Lorg/chromium/base/ObserverList$RewindableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ObserverList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/ObserverList$RewindableIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mIsExhausted:Z

.field private mListEndMarker:I

.field final synthetic this$0:Lorg/chromium/base/ObserverList;


# direct methods
.method private constructor <init>(Lorg/chromium/base/ObserverList;)V
    .locals 1

    .prologue
    .local p0, "this":Lorg/chromium/base/ObserverList$ObserverListIterator;, "Lorg/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    const/4 v0, 0x0

    .line 196
    iput-object p1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->this$0:Lorg/chromium/base/ObserverList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    .line 194
    iput-boolean v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIsExhausted:Z

    .line 197
    invoke-static {p1}, Lorg/chromium/base/ObserverList;->access$100(Lorg/chromium/base/ObserverList;)V

    .line 198
    invoke-static {p1}, Lorg/chromium/base/ObserverList;->access$200(Lorg/chromium/base/ObserverList;)I

    move-result v0

    iput v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/ObserverList;Lorg/chromium/base/ObserverList$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/base/ObserverList;
    .param p2, "x1"    # Lorg/chromium/base/ObserverList$1;

    .prologue
    .line 191
    .local p0, "this":Lorg/chromium/base/ObserverList$ObserverListIterator;, "Lorg/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    invoke-direct {p0, p1}, Lorg/chromium/base/ObserverList$ObserverListIterator;-><init>(Lorg/chromium/base/ObserverList;)V

    return-void
.end method

.method private compactListIfNeeded()V
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lorg/chromium/base/ObserverList$ObserverListIterator;, "Lorg/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    iget-boolean v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIsExhausted:Z

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIsExhausted:Z

    .line 245
    iget-object v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->this$0:Lorg/chromium/base/ObserverList;

    invoke-static {v0}, Lorg/chromium/base/ObserverList;->access$400(Lorg/chromium/base/ObserverList;)V

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 212
    .local p0, "this":Lorg/chromium/base/ObserverList$ObserverListIterator;, "Lorg/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    iget v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    .line 214
    .local v0, "lookupIndex":I
    :goto_0
    iget v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->this$0:Lorg/chromium/base/ObserverList;

    invoke-static {v1, v0}, Lorg/chromium/base/ObserverList;->access$300(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    .line 221
    :goto_1
    return v1

    .line 220
    :cond_1
    invoke-direct {p0}, Lorg/chromium/base/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    .line 221
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/chromium/base/ObserverList$ObserverListIterator;, "Lorg/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    :goto_0
    iget v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    iget v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->this$0:Lorg/chromium/base/ObserverList;

    iget v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    invoke-static {v0, v1}, Lorg/chromium/base/ObserverList;->access$300(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    iget v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    goto :goto_0

    .line 230
    :cond_0
    iget v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    iget v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->this$0:Lorg/chromium/base/ObserverList;

    iget v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    invoke-static {v0, v1}, Lorg/chromium/base/ObserverList;->access$300(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 233
    :cond_1
    invoke-direct {p0}, Lorg/chromium/base/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    .line 234
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lorg/chromium/base/ObserverList$ObserverListIterator;, "Lorg/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public rewind()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/chromium/base/ObserverList$ObserverListIterator;, "Lorg/chromium/base/ObserverList<TE;>.ObserverListIterator;"
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Lorg/chromium/base/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    .line 204
    iget-object v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->this$0:Lorg/chromium/base/ObserverList;

    invoke-static {v0}, Lorg/chromium/base/ObserverList;->access$100(Lorg/chromium/base/ObserverList;)V

    .line 205
    iget-object v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->this$0:Lorg/chromium/base/ObserverList;

    invoke-static {v0}, Lorg/chromium/base/ObserverList;->access$200(Lorg/chromium/base/ObserverList;)I

    move-result v0

    iput v0, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mListEndMarker:I

    .line 206
    iput-boolean v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIsExhausted:Z

    .line 207
    iput v1, p0, Lorg/chromium/base/ObserverList$ObserverListIterator;->mIndex:I

    .line 208
    return-void
.end method
