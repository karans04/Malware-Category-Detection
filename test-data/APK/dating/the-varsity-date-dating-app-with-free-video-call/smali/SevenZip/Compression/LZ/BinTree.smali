.class public LSevenZip/Compression/LZ/BinTree;
.super LSevenZip/Compression/LZ/InWindow;
.source "BinTree.java"


# static fields
.field private static final CrcTable:[I

.field static final kBT2HashSize:I = 0x10000

.field static final kEmptyHashValue:I = 0x0

.field static final kHash2Size:I = 0x400

.field static final kHash3Offset:I = 0x400

.field static final kHash3Size:I = 0x10000

.field static final kMaxValForNormalize:I = 0x3fffffff

.field static final kStartMaxLen:I = 0x1


# instance fields
.field HASH_ARRAY:Z

.field _cutValue:I

.field _cyclicBufferPos:I

.field _cyclicBufferSize:I

.field _hash:[I

.field _hashMask:I

.field _hashSizeSum:I

.field _matchMaxLen:I

.field _son:[I

.field kFixHashSize:I

.field kMinMatchCheck:I

.field kNumHashDirectBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 367
    new-array v3, v5, [I

    sput-object v3, LSevenZip/Compression/LZ/BinTree;->CrcTable:[I

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 373
    move v2, v0

    .line 374
    .local v2, "r":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 375
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 376
    ushr-int/lit8 v3, v2, 0x1

    const v4, -0x12477ce0

    xor-int v2, v3, v4

    .line 374
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 379
    :cond_1
    sget-object v3, LSevenZip/Compression/LZ/BinTree;->CrcTable:[I

    aput v2, v3, v0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "j":I
    .end local v2    # "r":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, LSevenZip/Compression/LZ/InWindow;-><init>()V

    .line 10
    iput v1, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    .line 16
    const/16 v0, 0xff

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->_cutValue:I

    .line 18
    iput v1, p0, LSevenZip/Compression/LZ/BinTree;->_hashSizeSum:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, LSevenZip/Compression/LZ/BinTree;->HASH_ARRAY:Z

    .line 30
    iput v1, p0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->kMinMatchCheck:I

    .line 32
    const v0, 0x10400

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    return-void
.end method


# virtual methods
.method public Create(IIII)Z
    .locals 5
    .param p1, "historySize"    # I
    .param p2, "keepAddBufferBefore"    # I
    .param p3, "matchMaxLen"    # I
    .param p4, "keepAddBufferAfter"    # I

    .prologue
    .line 82
    const v3, 0x3ffffeff    # 1.9999694f

    if-le p1, v3, :cond_0

    .line 83
    const/4 v3, 0x0

    .line 116
    :goto_0
    return v3

    .line 84
    :cond_0
    shr-int/lit8 v3, p3, 0x1

    add-int/lit8 v3, v3, 0x10

    iput v3, p0, LSevenZip/Compression/LZ/BinTree;->_cutValue:I

    .line 86
    add-int v3, p1, p2

    add-int/2addr v3, p3

    add-int/2addr v3, p4

    div-int/lit8 v3, v3, 0x2

    add-int/lit16 v2, v3, 0x100

    .line 89
    .local v2, "windowReservSize":I
    add-int v3, p1, p2

    add-int v4, p3, p4

    invoke-super {p0, v3, v4, v2}, LSevenZip/Compression/LZ/InWindow;->Create(III)V

    .line 91
    iput p3, p0, LSevenZip/Compression/LZ/BinTree;->_matchMaxLen:I

    .line 93
    add-int/lit8 v0, p1, 0x1

    .line 94
    .local v0, "cyclicBufferSize":I
    iget v3, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    if-eq v3, v0, :cond_1

    .line 95
    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    .line 97
    :cond_1
    const/high16 v1, 0x10000

    .line 99
    .local v1, "hs":I
    iget-boolean v3, p0, LSevenZip/Compression/LZ/BinTree;->HASH_ARRAY:Z

    if-eqz v3, :cond_3

    .line 101
    add-int/lit8 v1, p1, -0x1

    .line 102
    shr-int/lit8 v3, v1, 0x1

    or-int/2addr v1, v3

    .line 103
    shr-int/lit8 v3, v1, 0x2

    or-int/2addr v1, v3

    .line 104
    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v1, v3

    .line 105
    shr-int/lit8 v3, v1, 0x8

    or-int/2addr v1, v3

    .line 106
    shr-int/lit8 v1, v1, 0x1

    .line 107
    const v3, 0xffff

    or-int/2addr v1, v3

    .line 108
    const/high16 v3, 0x1000000

    if-le v1, v3, :cond_2

    .line 109
    shr-int/lit8 v1, v1, 0x1

    .line 110
    :cond_2
    iput v1, p0, LSevenZip/Compression/LZ/BinTree;->_hashMask:I

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    iget v3, p0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    add-int/2addr v1, v3

    .line 114
    :cond_3
    iget v3, p0, LSevenZip/Compression/LZ/BinTree;->_hashSizeSum:I

    if-eq v1, v3, :cond_4

    .line 115
    iput v1, p0, LSevenZip/Compression/LZ/BinTree;->_hashSizeSum:I

    new-array v3, v1, [I

    iput-object v3, p0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    .line 116
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public GetMatches([I)I
    .locals 28
    .param p1, "distances"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_matchMaxLen:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_streamPos:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_6

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_matchMaxLen:I

    move/from16 v16, v0

    .line 133
    .local v16, "lenLimit":I
    :cond_0
    const/16 v19, 0x0

    .line 134
    .local v19, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    move/from16 v26, v0

    sub-int v17, v25, v26

    .line 135
    .local v17, "matchMinPos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferOffset:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v26, v0

    add-int v4, v25, v26

    .line 136
    .local v4, "cur":I
    const/16 v18, 0x1

    .line 137
    .local v18, "maxLen":I
    const/4 v10, 0x0

    .local v10, "hash2Value":I
    const/4 v11, 0x0

    .line 139
    .local v11, "hash3Value":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, LSevenZip/Compression/LZ/BinTree;->HASH_ARRAY:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 141
    sget-object v25, LSevenZip/Compression/LZ/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, 0x1

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    xor-int v24, v25, v26

    .line 142
    .local v24, "temp":I
    move/from16 v0, v24

    and-int/lit16 v10, v0, 0x3ff

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v4, 0x2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    xor-int v24, v24, v25

    .line 144
    const v25, 0xffff

    and-int v11, v24, v25

    .line 145
    sget-object v25, LSevenZip/Compression/LZ/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, 0x3

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    aget v25, v25, v26

    shl-int/lit8 v25, v25, 0x5

    xor-int v25, v25, v24

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_hashMask:I

    move/from16 v26, v0

    and-int v12, v25, v26

    .line 150
    .end local v24    # "temp":I
    .local v12, "hashValue":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    move/from16 v26, v0

    add-int v26, v26, v12

    aget v5, v25, v26

    .line 151
    .local v5, "curMatch":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, LSevenZip/Compression/LZ/BinTree;->HASH_ARRAY:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v25, v0

    aget v6, v25, v10

    .line 154
    .local v6, "curMatch2":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v25, v0

    add-int/lit16 v0, v11, 0x400

    move/from16 v26, v0

    aget v7, v25, v26

    .line 155
    .local v7, "curMatch3":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v26, v0

    aput v26, v25, v10

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v25, v0

    add-int/lit16 v0, v11, 0x400

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v27, v0

    aput v27, v25, v26

    .line 157
    move/from16 v0, v17

    if-le v6, v0, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferOffset:I

    move/from16 v26, v0

    add-int v26, v26, v6

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 160
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .local v20, "offset":I
    const/16 v18, 0x2

    aput v18, p1, v19

    .line 161
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v25, v25, v6

    add-int/lit8 v25, v25, -0x1

    aput v25, p1, v20

    .line 163
    :cond_1
    move/from16 v0, v17

    if-le v7, v0, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferOffset:I

    move/from16 v26, v0

    add-int v26, v26, v7

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 166
    if-ne v7, v6, :cond_2

    .line 167
    add-int/lit8 v19, v19, -0x2

    .line 168
    :cond_2
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    const/16 v18, 0x3

    aput v18, p1, v19

    .line 169
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v25, v25, v7

    add-int/lit8 v25, v25, -0x1

    aput v25, p1, v20

    .line 170
    move v6, v7

    .line 172
    :cond_3
    if-eqz v19, :cond_4

    if-ne v6, v5, :cond_4

    .line 174
    add-int/lit8 v19, v19, -0x2

    .line 175
    const/16 v18, 0x1

    .line 179
    .end local v6    # "curMatch2":I
    .end local v7    # "curMatch3":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    move/from16 v26, v0

    add-int v26, v26, v12

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v27, v0

    aput v27, v25, v26

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x1

    add-int/lit8 v22, v25, 0x1

    .line 182
    .local v22, "ptr0":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    shl-int/lit8 v23, v25, 0x1

    .line 185
    .local v23, "ptr1":I
    move-object/from16 v0, p0

    iget v15, v0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    .local v15, "len1":I
    move v14, v15

    .line 187
    .local v14, "len0":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 189
    move/from16 v0, v17

    if-le v5, v0, :cond_5

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferOffset:I

    move/from16 v26, v0

    add-int v26, v26, v5

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    move/from16 v27, v0

    add-int v26, v26, v27

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    move/from16 v27, v0

    add-int v27, v27, v4

    aget-byte v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 194
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    move/from16 v18, v0

    aput v18, p1, v19

    .line 195
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v25, v25, v5

    add-int/lit8 v25, v25, -0x1

    aput v25, p1, v20

    .line 200
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, LSevenZip/Compression/LZ/BinTree;->_cutValue:I

    .local v2, "count":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    move/from16 v20, v19

    .line 204
    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    :goto_2
    move/from16 v0, v17

    if-le v5, v0, :cond_f

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    if-nez v3, :cond_9

    .line 206
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v23

    aput v27, v25, v22

    move/from16 v19, v20

    .line 248
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZ/BinTree;->MovePos()V

    .line 249
    .end local v2    # "count":I
    .end local v4    # "cur":I
    .end local v5    # "curMatch":I
    .end local v10    # "hash2Value":I
    .end local v11    # "hash3Value":I
    .end local v12    # "hashValue":I
    .end local v14    # "len0":I
    .end local v15    # "len1":I
    .end local v17    # "matchMinPos":I
    .end local v18    # "maxLen":I
    .end local v19    # "offset":I
    .end local v22    # "ptr0":I
    .end local v23    # "ptr1":I
    :goto_5
    return v19

    .line 125
    .end local v16    # "lenLimit":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_streamPos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v26, v0

    sub-int v16, v25, v26

    .line 126
    .restart local v16    # "lenLimit":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kMinMatchCheck:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZ/BinTree;->MovePos()V

    .line 129
    const/16 v19, 0x0

    goto :goto_5

    .line 134
    .restart local v19    # "offset":I
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v4    # "cur":I
    .restart local v10    # "hash2Value":I
    .restart local v11    # "hash3Value":I
    .restart local v17    # "matchMinPos":I
    .restart local v18    # "maxLen":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    aget-byte v25, v25, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, 0x1

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    xor-int v12, v25, v26

    .restart local v12    # "hashValue":I
    goto/16 :goto_1

    .line 209
    .end local v19    # "offset":I
    .restart local v2    # "count":I
    .restart local v5    # "curMatch":I
    .restart local v14    # "len0":I
    .restart local v15    # "len1":I
    .restart local v20    # "offset":I
    .restart local v22    # "ptr0":I
    .restart local v23    # "ptr1":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v9, v25, v5

    .line 210
    .local v9, "delta":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v9, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    sub-int v25, v25, v9

    :goto_6
    shl-int/lit8 v8, v25, 0x1

    .line 214
    .local v8, "cyclicPos":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferOffset:I

    move/from16 v25, v0

    add-int v21, v25, v5

    .line 215
    .local v21, "pby1":I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 216
    .local v13, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int v26, v21, v13

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int v27, v4, v13

    aget-byte v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 218
    :cond_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_b

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int v26, v21, v13

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int v27, v4, v13

    aget-byte v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 221
    :cond_b
    move/from16 v0, v18

    if-ge v0, v13, :cond_d

    .line 223
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move/from16 v18, v13

    aput v13, p1, v20

    .line 224
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    add-int/lit8 v25, v9, -0x1

    aput v25, p1, v19

    .line 225
    move/from16 v0, v16

    if-ne v13, v0, :cond_d

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v26, v0

    aget v26, v26, v8

    aput v26, v25, v23

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v26, v0

    add-int/lit8 v27, v8, 0x1

    aget v26, v26, v27

    aput v26, v25, v22

    move/from16 v19, v20

    .line 229
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    goto/16 :goto_4

    .line 210
    .end local v8    # "cyclicPos":I
    .end local v13    # "len":I
    .end local v19    # "offset":I
    .end local v21    # "pby1":I
    .restart local v20    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    sub-int v25, v25, v9

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    goto/16 :goto_6

    .restart local v8    # "cyclicPos":I
    .restart local v13    # "len":I
    .restart local v21    # "pby1":I
    :cond_d
    move/from16 v19, v20

    .line 233
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int v26, v21, v13

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int v27, v4, v13

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v25, v0

    aput v5, v25, v23

    .line 236
    add-int/lit8 v23, v8, 0x1

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v25, v0

    aget v5, v25, v23

    .line 238
    move v15, v13

    :goto_7
    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    move/from16 v20, v19

    .line 247
    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    goto/16 :goto_2

    .line 242
    .end local v3    # "count":I
    .end local v20    # "offset":I
    .restart local v2    # "count":I
    .restart local v19    # "offset":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v25, v0

    aput v5, v25, v22

    .line 243
    move/from16 v22, v8

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v25, v0

    aget v5, v25, v22

    .line 245
    move v14, v13

    goto :goto_7

    .end local v2    # "count":I
    .end local v8    # "cyclicPos":I
    .end local v9    # "delta":I
    .end local v13    # "len":I
    .end local v19    # "offset":I
    .end local v21    # "pby1":I
    .restart local v3    # "count":I
    .restart local v20    # "offset":I
    :cond_f
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_3
.end method

.method public Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0}, LSevenZip/Compression/LZ/InWindow;->Init()V

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, LSevenZip/Compression/LZ/BinTree;->_hashSizeSum:I

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iput v2, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    .line 60
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, LSevenZip/Compression/LZ/BinTree;->ReduceOffsets(I)V

    .line 61
    return-void
.end method

.method public MovePos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    iget v1, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    if-lt v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    .line 67
    :cond_0
    invoke-super {p0}, LSevenZip/Compression/LZ/InWindow;->MovePos()V

    .line 68
    iget v0, p0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1

    .line 69
    invoke-virtual {p0}, LSevenZip/Compression/LZ/BinTree;->Normalize()V

    .line 70
    :cond_1
    return-void
.end method

.method Normalize()V
    .locals 3

    .prologue
    .line 359
    iget v1, p0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    iget v2, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    sub-int v0, v1, v2

    .line 360
    .local v0, "subValue":I
    iget-object v1, p0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    iget v2, p0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, LSevenZip/Compression/LZ/BinTree;->NormalizeLinks([III)V

    .line 361
    iget-object v1, p0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    iget v2, p0, LSevenZip/Compression/LZ/BinTree;->_hashSizeSum:I

    invoke-virtual {p0, v1, v2, v0}, LSevenZip/Compression/LZ/BinTree;->NormalizeLinks([III)V

    .line 362
    invoke-virtual {p0, v0}, LSevenZip/Compression/LZ/BinTree;->ReduceOffsets(I)V

    .line 363
    return-void
.end method

.method NormalizeLinks([III)V
    .locals 2
    .param p1, "items"    # [I
    .param p2, "numItems"    # I
    .param p3, "subValue"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 348
    aget v1, p1, v0

    .line 349
    .local v1, "value":I
    if-gt v1, p3, :cond_0

    .line 350
    const/4 v1, 0x0

    .line 353
    :goto_1
    aput v1, p1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    sub-int/2addr v1, p3

    goto :goto_1

    .line 355
    .end local v1    # "value":I
    :cond_1
    return-void
.end method

.method public SetCutValue(I)V
    .locals 0
    .param p1, "cutValue"    # I

    .prologue
    .line 365
    iput p1, p0, LSevenZip/Compression/LZ/BinTree;->_cutValue:I

    return-void
.end method

.method public SetType(I)V
    .locals 3
    .param p1, "numHashBytes"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 36
    if-le p1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, LSevenZip/Compression/LZ/BinTree;->HASH_ARRAY:Z

    .line 37
    iget-boolean v0, p0, LSevenZip/Compression/LZ/BinTree;->HASH_ARRAY:Z

    if-eqz v0, :cond_1

    .line 39
    iput v1, p0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    .line 40
    const/4 v0, 0x4

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->kMinMatchCheck:I

    .line 41
    const v0, 0x10400

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    .line 49
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0

    .line 45
    :cond_1
    iput v2, p0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LSevenZip/Compression/LZ/BinTree;->kMinMatchCheck:I

    .line 47
    iput v1, p0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    goto :goto_1
.end method

.method public Skip(I)V
    .locals 23
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_matchMaxLen:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_streamPos:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget v14, v0, LSevenZip/Compression/LZ/BinTree;->_matchMaxLen:I

    .line 269
    .local v14, "lenLimit":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    move/from16 v21, v0

    sub-int v15, v20, v21

    .line 270
    .local v15, "matchMinPos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferOffset:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v21, v0

    add-int v4, v20, v21

    .line 274
    .local v4, "cur":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, LSevenZip/Compression/LZ/BinTree;->HASH_ARRAY:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 276
    sget-object v20, LSevenZip/Compression/LZ/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v4

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v4, 0x1

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    xor-int v19, v20, v21

    .line 277
    .local v19, "temp":I
    move/from16 v0, v19

    and-int/lit16 v8, v0, 0x3ff

    .line 278
    .local v8, "hash2Value":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v21, v0

    aput v21, v20, v8

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x2

    aget-byte v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    xor-int v19, v19, v20

    .line 280
    const v20, 0xffff

    and-int v9, v19, v20

    .line 281
    .local v9, "hash3Value":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v20, v0

    add-int/lit16 v0, v9, 0x400

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v22, v0

    aput v22, v20, v21

    .line 282
    sget-object v20, LSevenZip/Compression/LZ/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v4, 0x3

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    shl-int/lit8 v20, v20, 0x5

    xor-int v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_hashMask:I

    move/from16 v21, v0

    and-int v10, v20, v21

    .line 287
    .end local v8    # "hash2Value":I
    .end local v9    # "hash3Value":I
    .end local v19    # "temp":I
    .local v10, "hashValue":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    move/from16 v21, v0

    add-int v21, v21, v10

    aget v5, v20, v21

    .line 288
    .local v5, "curMatch":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_hash:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kFixHashSize:I

    move/from16 v21, v0

    add-int v21, v21, v10

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v22, v0

    aput v22, v20, v21

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x1

    add-int/lit8 v17, v20, 0x1

    .line 291
    .local v17, "ptr0":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    shl-int/lit8 v18, v20, 0x1

    .line 294
    .local v18, "ptr1":I
    move-object/from16 v0, p0

    iget v13, v0, LSevenZip/Compression/LZ/BinTree;->kNumHashDirectBytes:I

    .local v13, "len1":I
    move v12, v13

    .line 296
    .local v12, "len0":I
    move-object/from16 v0, p0

    iget v2, v0, LSevenZip/Compression/LZ/BinTree;->_cutValue:I

    .local v2, "count":I
    move v3, v2

    .line 299
    .end local v2    # "count":I
    .local v3, "count":I
    :goto_2
    if-le v5, v15, :cond_b

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    if-nez v3, :cond_5

    .line 301
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v22, v21, v18

    aput v22, v20, v17

    .line 339
    :goto_4
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZ/BinTree;->MovePos()V

    .line 341
    .end local v2    # "count":I
    .end local v4    # "cur":I
    .end local v5    # "curMatch":I
    .end local v10    # "hashValue":I
    .end local v12    # "len0":I
    .end local v13    # "len1":I
    .end local v15    # "matchMinPos":I
    .end local v17    # "ptr0":I
    .end local v18    # "ptr1":I
    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 342
    return-void

    .line 261
    .end local v14    # "lenLimit":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_streamPos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 262
    .restart local v14    # "lenLimit":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->kMinMatchCheck:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_1

    .line 264
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZ/BinTree;->MovePos()V

    goto :goto_5

    .line 269
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 285
    .restart local v4    # "cur":I
    .restart local v15    # "matchMinPos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v4

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v4, 0x1

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    xor-int v10, v20, v21

    .restart local v10    # "hashValue":I
    goto/16 :goto_1

    .line 305
    .restart local v2    # "count":I
    .restart local v5    # "curMatch":I
    .restart local v12    # "len0":I
    .restart local v13    # "len1":I
    .restart local v17    # "ptr0":I
    .restart local v18    # "ptr1":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_pos:I

    move/from16 v20, v0

    sub-int v7, v20, v5

    .line 306
    .local v7, "delta":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v7, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    sub-int v20, v20, v7

    :goto_6
    shl-int/lit8 v6, v20, 0x1

    .line 310
    .local v6, "cyclicPos":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferOffset:I

    move/from16 v20, v0

    add-int v16, v20, v5

    .line 311
    .local v16, "pby1":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 312
    .local v11, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int v21, v16, v11

    aget-byte v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int v22, v4, v11

    aget-byte v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 314
    :cond_6
    add-int/lit8 v11, v11, 0x1

    if-eq v11, v14, :cond_7

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int v21, v16, v11

    aget-byte v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int v22, v4, v11

    aget-byte v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 317
    :cond_7
    if-ne v11, v14, :cond_9

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    aput v21, v20, v18

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v6, 0x1

    aget v21, v21, v22

    aput v21, v20, v17

    goto/16 :goto_4

    .line 306
    .end local v6    # "cyclicPos":I
    .end local v11    # "len":I
    .end local v16    # "pby1":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    sub-int v20, v20, v7

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZ/BinTree;->_cyclicBufferSize:I

    move/from16 v21, v0

    add-int v20, v20, v21

    goto :goto_6

    .line 324
    .restart local v6    # "cyclicPos":I
    .restart local v11    # "len":I
    .restart local v16    # "pby1":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int v21, v16, v11

    aget-byte v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int v22, v4, v11

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v20, v0

    aput v5, v20, v18

    .line 327
    add-int/lit8 v18, v6, 0x1

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v20, v0

    aget v5, v20, v18

    .line 329
    move v13, v11

    :goto_7
    move v3, v2

    .line 338
    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 333
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v20, v0

    aput v5, v20, v17

    .line 334
    move/from16 v17, v6

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZ/BinTree;->_son:[I

    move-object/from16 v20, v0

    aget v5, v20, v17

    .line 336
    move v12, v11

    goto :goto_7

    .end local v2    # "count":I
    .end local v6    # "cyclicPos":I
    .end local v7    # "delta":I
    .end local v11    # "len":I
    .end local v16    # "pby1":I
    .restart local v3    # "count":I
    :cond_b
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_3
.end method
