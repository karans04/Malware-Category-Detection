.class LSevenZip/LzmaBench$MyOutputStream;
.super Ljava/io/OutputStream;
.source "LzmaBench.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/LzmaBench;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyOutputStream"
.end annotation


# instance fields
.field _buffer:[B

.field _pos:I

.field _size:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 148
    iput-object p1, p0, LSevenZip/LzmaBench$MyOutputStream;->_buffer:[B

    .line 149
    iget-object v0, p0, LSevenZip/LzmaBench$MyOutputStream;->_buffer:[B

    array-length v0, v0

    iput v0, p0, LSevenZip/LzmaBench$MyOutputStream;->_size:I

    .line 150
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput v0, p0, LSevenZip/LzmaBench$MyOutputStream;->_pos:I

    .line 155
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, LSevenZip/LzmaBench$MyOutputStream;->_pos:I

    return v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget v0, p0, LSevenZip/LzmaBench$MyOutputStream;->_pos:I

    iget v1, p0, LSevenZip/LzmaBench$MyOutputStream;->_size:I

    if-lt v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, LSevenZip/LzmaBench$MyOutputStream;->_buffer:[B

    iget v1, p0, LSevenZip/LzmaBench$MyOutputStream;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LSevenZip/LzmaBench$MyOutputStream;->_pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 162
    return-void
.end method
