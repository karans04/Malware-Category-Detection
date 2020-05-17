.class LSevenZip/LzmaBench$MyInputStream;
.super Ljava/io/InputStream;
.source "LzmaBench.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/LzmaBench;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyInputStream"
.end annotation


# instance fields
.field _buffer:[B

.field _pos:I

.field _size:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 178
    iput-object p1, p0, LSevenZip/LzmaBench$MyInputStream;->_buffer:[B

    .line 179
    iput p2, p0, LSevenZip/LzmaBench$MyInputStream;->_size:I

    .line 180
    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    .prologue
    .line 189
    iget v0, p0, LSevenZip/LzmaBench$MyInputStream;->_pos:I

    iget v1, p0, LSevenZip/LzmaBench$MyInputStream;->_size:I

    if-lt v0, v1, :cond_0

    .line 190
    const/4 v0, -0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LSevenZip/LzmaBench$MyInputStream;->_buffer:[B

    iget v1, p0, LSevenZip/LzmaBench$MyInputStream;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LSevenZip/LzmaBench$MyInputStream;->_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput v0, p0, LSevenZip/LzmaBench$MyInputStream;->_pos:I

    .line 185
    return-void
.end method
