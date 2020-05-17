.class public LSevenZip/Compression/LZMA/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;,
        LSevenZip/Compression/LZMA/Decoder$LenDecoder;
    }
.end annotation


# instance fields
.field m_DictionarySize:I

.field m_DictionarySizeCheck:I

.field m_IsMatchDecoders:[S

.field m_IsRep0LongDecoders:[S

.field m_IsRepDecoders:[S

.field m_IsRepG0Decoders:[S

.field m_IsRepG1Decoders:[S

.field m_IsRepG2Decoders:[S

.field m_LenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

.field m_LiteralDecoder:LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;

.field m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

.field m_PosAlignDecoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

.field m_PosDecoders:[S

.field m_PosSlotDecoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

.field m_PosStateMask:I

.field m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

.field m_RepLenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/16 v2, 0xc

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, LSevenZip/Compression/LZ/OutWindow;

    invoke-direct {v1}, LSevenZip/Compression/LZ/OutWindow;-><init>()V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    .line 124
    new-instance v1, LSevenZip/Compression/RangeCoder/Decoder;

    invoke-direct {v1}, LSevenZip/Compression/RangeCoder/Decoder;-><init>()V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    .line 126
    new-array v1, v5, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsMatchDecoders:[S

    .line 127
    new-array v1, v2, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepDecoders:[S

    .line 128
    new-array v1, v2, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG0Decoders:[S

    .line 129
    new-array v1, v2, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG1Decoders:[S

    .line 130
    new-array v1, v2, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG2Decoders:[S

    .line 131
    new-array v1, v5, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRep0LongDecoders:[S

    .line 133
    new-array v1, v4, [LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosSlotDecoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    .line 134
    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosDecoders:[S

    .line 136
    new-instance v1, LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    invoke-direct {v1, v4}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;-><init>(I)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosAlignDecoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    .line 138
    new-instance v1, LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    invoke-direct {v1, p0}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;-><init>(LSevenZip/Compression/LZMA/Decoder;)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_LenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    .line 139
    new-instance v1, LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    invoke-direct {v1, p0}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;-><init>(LSevenZip/Compression/LZMA/Decoder;)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_RepLenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    .line 141
    new-instance v1, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;

    invoke-direct {v1, p0}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;-><init>(LSevenZip/Compression/LZMA/Decoder;)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_LiteralDecoder:LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;

    .line 143
    iput v3, p0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySize:I

    .line 144
    iput v3, p0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySizeCheck:I

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 151
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosSlotDecoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    new-instance v2, LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 21
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "outSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, LSevenZip/Compression/RangeCoder/Decoder;->SetStream(Ljava/io/InputStream;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZ/OutWindow;->SetStream(Ljava/io/OutputStream;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZMA/Decoder;->Init()V

    .line 208
    invoke-static {}, LSevenZip/Compression/LZMA/Base;->StateInit()I

    move-result v17

    .line 209
    .local v17, "state":I
    const/4 v13, 0x0

    .local v13, "rep0":I
    const/4 v14, 0x0

    .local v14, "rep1":I
    const/4 v15, 0x0

    .local v15, "rep2":I
    const/16 v16, 0x0

    .line 211
    .local v16, "rep3":I
    const-wide/16 v8, 0x0

    .line 212
    .local v8, "nowPos64":J
    const/4 v12, 0x0

    .line 213
    .local v12, "prevByte":B
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, p3, v18

    if-ltz v18, :cond_0

    cmp-long v18, v8, p3

    if-gez v18, :cond_b

    .line 215
    :cond_0
    long-to-int v0, v8

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_PosStateMask:I

    move/from16 v19, v0

    and-int v11, v18, v19

    .line 216
    .local v11, "posState":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_IsMatchDecoders:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v17, 0x4

    add-int v20, v20, v11

    invoke-virtual/range {v18 .. v20}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_LiteralDecoder:LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;

    move-object/from16 v18, v0

    long-to-int v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->GetDecoder(IB)LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    move-result-object v4

    .line 219
    .local v4, "decoder2":LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;
    invoke-static/range {v17 .. v17}, LSevenZip/Compression/LZMA/Base;->StateIsCharState(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, LSevenZip/Compression/LZ/OutWindow;->GetByte(I)B

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;->DecodeWithMatchByte(LSevenZip/Compression/RangeCoder/Decoder;B)B

    move-result v12

    .line 223
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, LSevenZip/Compression/LZ/OutWindow;->PutByte(B)V

    .line 224
    invoke-static/range {v17 .. v17}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v17

    .line 225
    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    .line 226
    goto :goto_0

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;->DecodeNormal(LSevenZip/Compression/RangeCoder/Decoder;)B

    move-result v12

    goto :goto_1

    .line 230
    .end local v4    # "decoder2":LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepDecoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 232
    const/4 v6, 0x0

    .line 233
    .local v6, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG0Decoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_IsRep0LongDecoders:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v17, 0x4

    add-int v20, v20, v11

    invoke-virtual/range {v18 .. v20}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_3

    .line 237
    invoke-static/range {v17 .. v17}, LSevenZip/Compression/LZMA/Base;->StateUpdateShortRep(I)I

    move-result v17

    .line 238
    const/4 v6, 0x1

    .line 260
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RepLenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->Decode(LSevenZip/Compression/RangeCoder/Decoder;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 263
    invoke-static/range {v17 .. v17}, LSevenZip/Compression/LZMA/Base;->StateUpdateRep(I)I

    move-result v17

    .line 297
    :cond_4
    :goto_3
    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v18, v18, v8

    if-gez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySizeCheck:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v13, v0, :cond_e

    .line 300
    :cond_5
    const/16 v18, 0x0

    .line 310
    .end local v6    # "len":I
    .end local v11    # "posState":I
    :goto_4
    return v18

    .line 244
    .restart local v6    # "len":I
    .restart local v11    # "posState":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG1Decoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_7

    .line 245
    move v5, v14

    .line 257
    .local v5, "distance":I
    :goto_5
    move v14, v13

    .line 258
    move v13, v5

    goto :goto_2

    .line 248
    .end local v5    # "distance":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG2Decoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_8

    .line 249
    move v5, v15

    .line 255
    .restart local v5    # "distance":I
    :goto_6
    move v15, v14

    goto :goto_5

    .line 252
    .end local v5    # "distance":I
    :cond_8
    move/from16 v5, v16

    .line 253
    .restart local v5    # "distance":I
    move/from16 v16, v15

    goto :goto_6

    .line 268
    .end local v5    # "distance":I
    .end local v6    # "len":I
    :cond_9
    move/from16 v16, v15

    .line 269
    move v15, v14

    .line 270
    move v14, v13

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_LenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->Decode(LSevenZip/Compression/RangeCoder/Decoder;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 272
    .restart local v6    # "len":I
    invoke-static/range {v17 .. v17}, LSevenZip/Compression/LZMA/Base;->StateUpdateMatch(I)I

    move-result v17

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_PosSlotDecoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    move-object/from16 v18, v0

    invoke-static {v6}, LSevenZip/Compression/LZMA/Base;->GetLenToPosState(I)I

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Decode(LSevenZip/Compression/RangeCoder/Decoder;)I

    move-result v10

    .line 274
    .local v10, "posSlot":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v10, v0, :cond_d

    .line 276
    shr-int/lit8 v18, v10, 0x1

    add-int/lit8 v7, v18, -0x1

    .line 277
    .local v7, "numDirectBits":I
    and-int/lit8 v18, v10, 0x1

    or-int/lit8 v18, v18, 0x2

    shl-int v13, v18, v7

    .line 278
    const/16 v18, 0xe

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_PosDecoders:[S

    move-object/from16 v18, v0

    sub-int v19, v13, v10

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v7}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->ReverseDecode([SILSevenZip/Compression/RangeCoder/Decoder;I)I

    move-result v18

    add-int v13, v13, v18

    goto/16 :goto_3

    .line 283
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, -0x4

    invoke-virtual/range {v18 .. v19}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeDirectBits(I)I

    move-result v18

    shl-int/lit8 v18, v18, 0x4

    add-int v13, v13, v18

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_PosAlignDecoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->ReverseDecode(LSevenZip/Compression/RangeCoder/Decoder;)I

    move-result v18

    add-int v13, v13, v18

    .line 286
    if-gez v13, :cond_4

    .line 288
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    .line 307
    .end local v6    # "len":I
    .end local v7    # "numDirectBits":I
    .end local v10    # "posSlot":I
    .end local v11    # "posState":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, LSevenZip/Compression/LZ/OutWindow;->Flush()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, LSevenZip/Compression/LZ/OutWindow;->ReleaseStream()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, LSevenZip/Compression/RangeCoder/Decoder;->ReleaseStream()V

    .line 310
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 290
    .restart local v6    # "len":I
    .restart local v7    # "numDirectBits":I
    .restart local v10    # "posSlot":I
    .restart local v11    # "posState":I
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 295
    .end local v7    # "numDirectBits":I
    :cond_d
    move v13, v10

    goto/16 :goto_3

    .line 302
    .end local v10    # "posSlot":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v6}, LSevenZip/Compression/LZ/OutWindow;->CopyBlock(II)V

    .line 303
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, LSevenZip/Compression/LZ/OutWindow;->GetByte(I)B

    move-result v12

    goto/16 :goto_0
.end method

.method Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LSevenZip/Compression/LZ/OutWindow;->Init(Z)V

    .line 183
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsMatchDecoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 184
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRep0LongDecoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 185
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepDecoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 186
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG0Decoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 187
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG1Decoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 188
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_IsRepG2Decoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 189
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosDecoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 191
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_LiteralDecoder:LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;

    invoke-virtual {v1}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->Init()V

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosSlotDecoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Init()V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_LenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    invoke-virtual {v1}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->Init()V

    .line 196
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_RepLenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    invoke-virtual {v1}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->Init()V

    .line 197
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosAlignDecoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Init()V

    .line 198
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_RangeDecoder:LSevenZip/Compression/RangeCoder/Decoder;

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/Decoder;->Init()V

    .line 199
    return-void
.end method

.method public SetDecoderProperties([B)Z
    .locals 10
    .param p1, "properties"    # [B

    .prologue
    const/4 v7, 0x0

    .line 315
    array-length v8, p1

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v7

    .line 317
    :cond_1
    aget-byte v8, p1, v7

    and-int/lit16 v6, v8, 0xff

    .line 318
    .local v6, "val":I
    rem-int/lit8 v2, v6, 0x9

    .line 319
    .local v2, "lc":I
    div-int/lit8 v5, v6, 0x9

    .line 320
    .local v5, "remainder":I
    rem-int/lit8 v3, v5, 0x5

    .line 321
    .local v3, "lp":I
    div-int/lit8 v4, v5, 0x5

    .line 322
    .local v4, "pb":I
    const/4 v0, 0x0

    .line 323
    .local v0, "dictionarySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v8, 0x4

    if-ge v1, v8, :cond_2

    .line 324
    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    mul-int/lit8 v9, v1, 0x8

    shl-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p0, v2, v3, v4}, LSevenZip/Compression/LZMA/Decoder;->SetLcLpPb(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    invoke-virtual {p0, v0}, LSevenZip/Compression/LZMA/Decoder;->SetDictionarySize(I)Z

    move-result v7

    goto :goto_0
.end method

.method SetDictionarySize(I)Z
    .locals 4
    .param p1, "dictionarySize"    # I

    .prologue
    const/4 v0, 0x1

    .line 156
    if-gez p1, :cond_1

    .line 157
    const/4 v0, 0x0

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySize:I

    if-eq v1, p1, :cond_0

    .line 160
    iput p1, p0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySize:I

    .line 161
    iget v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySizeCheck:I

    .line 162
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder;->m_OutWindow:LSevenZip/Compression/LZ/OutWindow;

    iget v2, p0, LSevenZip/Compression/LZMA/Decoder;->m_DictionarySizeCheck:I

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, LSevenZip/Compression/LZ/OutWindow;->Create(I)V

    goto :goto_0
.end method

.method SetLcLpPb(III)Z
    .locals 4
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 169
    const/16 v2, 0x8

    if-gt p1, v2, :cond_0

    if-gt p2, v3, :cond_0

    if-le p3, v3, :cond_1

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 176
    :goto_0
    return v1

    .line 171
    :cond_1
    iget-object v2, p0, LSevenZip/Compression/LZMA/Decoder;->m_LiteralDecoder:LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;

    invoke-virtual {v2, p2, p1}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->Create(II)V

    .line 172
    shl-int v0, v1, p3

    .line 173
    .local v0, "numPosStates":I
    iget-object v2, p0, LSevenZip/Compression/LZMA/Decoder;->m_LenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    invoke-virtual {v2, v0}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->Create(I)V

    .line 174
    iget-object v2, p0, LSevenZip/Compression/LZMA/Decoder;->m_RepLenDecoder:LSevenZip/Compression/LZMA/Decoder$LenDecoder;

    invoke-virtual {v2, v0}, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->Create(I)V

    .line 175
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, LSevenZip/Compression/LZMA/Decoder;->m_PosStateMask:I

    goto :goto_0
.end method
