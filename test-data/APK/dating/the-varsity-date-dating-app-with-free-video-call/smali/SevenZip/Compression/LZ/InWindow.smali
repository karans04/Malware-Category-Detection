.class public LSevenZip/Compression/LZ/InWindow;
.super Ljava/lang/Object;
.source "InWindow.java"


# instance fields
.field public _blockSize:I

.field public _bufferBase:[B

.field public _bufferOffset:I

.field _keepSizeAfter:I

.field _keepSizeBefore:I

.field _pointerToLastSafePosition:I

.field public _pos:I

.field _posLimit:I

.field _stream:Ljava/io/InputStream;

.field _streamEndWasReached:Z

.field public _streamPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Create(III)V
    .locals 2
    .param p1, "keepSizeBefore"    # I
    .param p2, "keepSizeAfter"    # I
    .param p3, "keepSizeReserv"    # I

    .prologue
    .line 69
    iput p1, p0, LSevenZip/Compression/LZ/InWindow;->_keepSizeBefore:I

    .line 70
    iput p2, p0, LSevenZip/Compression/LZ/InWindow;->_keepSizeAfter:I

    .line 71
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 72
    .local v0, "blockSize":I
    iget-object v1, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    if-eqz v1, :cond_0

    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_blockSize:I

    if-eq v1, v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, LSevenZip/Compression/LZ/InWindow;->Free()V

    .line 75
    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_blockSize:I

    .line 76
    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_blockSize:I

    new-array v1, v1, [B

    iput-object v1, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    .line 78
    :cond_1
    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_blockSize:I

    sub-int/2addr v1, p2

    iput v1, p0, LSevenZip/Compression/LZ/InWindow;->_pointerToLastSafePosition:I

    .line 79
    return-void
.end method

.method Free()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    return-void
.end method

.method public GetIndexByte(I)B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 105
    iget-object v0, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    iget v2, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public GetMatchLen(III)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "distance"    # I
    .param p3, "limit"    # I

    .prologue
    .line 110
    iget-boolean v2, p0, LSevenZip/Compression/LZ/InWindow;->_streamEndWasReached:Z

    if-eqz v2, :cond_0

    .line 111
    iget v2, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    add-int/2addr v2, p1

    add-int/2addr v2, p3

    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    if-le v2, v3, :cond_0

    .line 112
    iget v2, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    add-int/2addr v3, p1

    sub-int p3, v2, v3

    .line 113
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 115
    iget v2, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    add-int/2addr v2, v3

    add-int v1, v2, p1

    .line 118
    .local v1, "pby":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v2, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    add-int v3, v1, v0

    aget-byte v2, v2, v3

    iget-object v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    add-int v4, v1, v0

    sub-int/2addr v4, p2

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v0
.end method

.method public GetNumAvailableBytes()I
    .locals 2

    .prologue
    .line 122
    iget v0, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public Init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    .line 87
    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    .line 88
    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    .line 89
    iput-boolean v0, p0, LSevenZip/Compression/LZ/InWindow;->_streamEndWasReached:Z

    .line 90
    invoke-virtual {p0}, LSevenZip/Compression/LZ/InWindow;->ReadBlock()V

    .line 91
    return-void
.end method

.method public MoveBlock()V
    .locals 6

    .prologue
    .line 26
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    add-int/2addr v3, v4

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_keepSizeBefore:I

    sub-int v2, v3, v4

    .line 28
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 31
    :cond_0
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    add-int/2addr v3, v4

    sub-int v1, v3, v2

    .line 34
    .local v1, "numBytes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 35
    iget-object v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    iget-object v4, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    sub-int/2addr v3, v2

    iput v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    .line 37
    return-void
.end method

.method public MovePos()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    .line 96
    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    iget v2, p0, LSevenZip/Compression/LZ/InWindow;->_posLimit:I

    if-le v1, v2, :cond_1

    .line 98
    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    iget v2, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    add-int v0, v1, v2

    .line 99
    .local v0, "pointerToPostion":I
    iget v1, p0, LSevenZip/Compression/LZ/InWindow;->_pointerToLastSafePosition:I

    if-le v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, LSevenZip/Compression/LZ/InWindow;->MoveBlock()V

    .line 101
    :cond_0
    invoke-virtual {p0}, LSevenZip/Compression/LZ/InWindow;->ReadBlock()V

    .line 103
    .end local v0    # "pointerToPostion":I
    :cond_1
    return-void
.end method

.method public ReadBlock()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-boolean v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamEndWasReached:Z

    if-eqz v3, :cond_2

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 59
    .local v0, "numReadBytes":I
    .local v2, "size":I
    :cond_1
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    add-int/2addr v3, v0

    iput v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    .line 60
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    iget v5, p0, LSevenZip/Compression/LZ/InWindow;->_keepSizeAfter:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    .line 61
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_keepSizeAfter:I

    sub-int/2addr v3, v4

    iput v3, p0, LSevenZip/Compression/LZ/InWindow;->_posLimit:I

    .line 45
    .end local v0    # "numReadBytes":I
    .end local v2    # "size":I
    :cond_2
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_blockSize:I

    add-int/2addr v3, v4

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    sub-int v2, v3, v4

    .line 46
    .restart local v2    # "size":I
    if-eqz v2, :cond_0

    .line 48
    iget-object v3, p0, LSevenZip/Compression/LZ/InWindow;->_stream:Ljava/io/InputStream;

    iget-object v4, p0, LSevenZip/Compression/LZ/InWindow;->_bufferBase:[B

    iget v5, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    iget v6, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 49
    .restart local v0    # "numReadBytes":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 51
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    iput v3, p0, LSevenZip/Compression/LZ/InWindow;->_posLimit:I

    .line 52
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_posLimit:I

    add-int v1, v3, v4

    .line 53
    .local v1, "pointerToPostion":I
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_pointerToLastSafePosition:I

    if-le v1, v3, :cond_3

    .line 54
    iget v3, p0, LSevenZip/Compression/LZ/InWindow;->_pointerToLastSafePosition:I

    iget v4, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, LSevenZip/Compression/LZ/InWindow;->_posLimit:I

    .line 56
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, LSevenZip/Compression/LZ/InWindow;->_streamEndWasReached:Z

    goto :goto_0
.end method

.method public ReduceOffsets(I)V
    .locals 1
    .param p1, "subValue"    # I

    .prologue
    .line 126
    iget v0, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    add-int/2addr v0, p1

    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_bufferOffset:I

    .line 127
    iget v0, p0, LSevenZip/Compression/LZ/InWindow;->_posLimit:I

    sub-int/2addr v0, p1

    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_posLimit:I

    .line 128
    iget v0, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    sub-int/2addr v0, p1

    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_pos:I

    .line 129
    iget v0, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    sub-int/2addr v0, p1

    iput v0, p0, LSevenZip/Compression/LZ/InWindow;->_streamPos:I

    .line 130
    return-void
.end method

.method public ReleaseStream()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, LSevenZip/Compression/LZ/InWindow;->_stream:Ljava/io/InputStream;

    return-void
.end method

.method public SetStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 81
    iput-object p1, p0, LSevenZip/Compression/LZ/InWindow;->_stream:Ljava/io/InputStream;

    return-void
.end method
