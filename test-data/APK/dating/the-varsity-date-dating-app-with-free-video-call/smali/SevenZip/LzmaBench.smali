.class public LSevenZip/LzmaBench;
.super Ljava/lang/Object;
.source "LzmaBench.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSevenZip/LzmaBench$CProgressInfo;,
        LSevenZip/LzmaBench$MyInputStream;,
        LSevenZip/LzmaBench$MyOutputStream;,
        LSevenZip/LzmaBench$CrcOutStream;,
        LSevenZip/LzmaBench$CBenchRandomGenerator;,
        LSevenZip/LzmaBench$CBitRandomGenerator;,
        LSevenZip/LzmaBench$CRandomGenerator;
    }
.end annotation


# static fields
.field static final kAdditionalSize:I = 0x200000

.field static final kCompressedAdditionalSize:I = 0x400

.field static final kSubBits:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method static GetCompressRating(IJJ)J
    .locals 13
    .param p0, "dictionarySize"    # I
    .param p1, "elapsedTime"    # J
    .param p3, "size"    # J

    .prologue
    .line 238
    invoke-static {p0}, LSevenZip/LzmaBench;->GetLogSize(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x1200

    int-to-long v4, v6

    .line 239
    .local v4, "t":J
    const-wide/16 v6, 0x424

    mul-long v8, v4, v4

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    const/16 v10, 0x10

    shr-long/2addr v8, v10

    add-long v2, v6, v8

    .line 240
    .local v2, "numCommandsForOne":J
    mul-long v0, p3, v2

    .line 241
    .local v0, "numCommands":J
    invoke-static {v0, v1, p1, p2}, LSevenZip/LzmaBench;->MyMultDiv64(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method static GetDecompressRating(JJJ)J
    .locals 6
    .param p0, "elapsedTime"    # J
    .param p2, "outSize"    # J
    .param p4, "inSize"    # J

    .prologue
    .line 246
    const-wide/16 v2, 0xdc

    mul-long/2addr v2, p4

    const-wide/16 v4, 0x14

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 247
    .local v0, "numCommands":J
    invoke-static {v0, v1, p0, p1}, LSevenZip/LzmaBench;->MyMultDiv64(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method static GetLogSize(I)I
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 215
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    .line 216
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    .line 217
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v3, v0, -0x8

    shl-int v3, v1, v3

    add-int/2addr v2, v3

    if-gt p0, v2, :cond_0

    .line 218
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    .line 219
    .end local v1    # "j":I
    :goto_2
    return v2

    .line 216
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "j":I
    :cond_2
    const/16 v2, 0x2000

    goto :goto_2
.end method

.method static GetTotalRating(IJJJJJ)J
    .locals 5
    .param p0, "dictionarySize"    # I
    .param p1, "elapsedTimeEn"    # J
    .param p3, "sizeEn"    # J
    .param p5, "elapsedTimeDe"    # J
    .param p7, "inSizeDe"    # J
    .param p9, "outSizeDe"    # J

    .prologue
    .line 256
    invoke-static {p0, p1, p2, p3, p4}, LSevenZip/LzmaBench;->GetCompressRating(IJJ)J

    move-result-wide v0

    invoke-static/range {p5 .. p10}, LSevenZip/LzmaBench;->GetDecompressRating(JJJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static LzmaBenchmark(II)I
    .locals 56
    .param p0, "numIterations"    # I
    .param p1, "dictionarySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    if-gtz p0, :cond_0

    .line 295
    const/4 v10, 0x0

    .line 390
    :goto_0
    return v10

    .line 296
    :cond_0
    const/high16 v10, 0x40000

    move/from16 v0, p1

    if-ge v0, v10, :cond_1

    .line 298
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\nError: dictionary size for benchmark must be >= 18 (256 KB)"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    const/4 v10, 0x1

    goto :goto_0

    .line 301
    :cond_1
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\n       Compressing                Decompressing\n\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 303
    new-instance v7, LSevenZip/Compression/LZMA/Encoder;

    invoke-direct {v7}, LSevenZip/Compression/LZMA/Encoder;-><init>()V

    .line 304
    .local v7, "encoder":LSevenZip/Compression/LZMA/Encoder;
    new-instance v34, LSevenZip/Compression/LZMA/Decoder;

    invoke-direct/range {v34 .. v34}, LSevenZip/Compression/LZMA/Decoder;-><init>()V

    .line 306
    .local v34, "decoder":LSevenZip/Compression/LZMA/Decoder;
    move/from16 v0, p1

    invoke-virtual {v7, v0}, LSevenZip/Compression/LZMA/Encoder;->SetDictionarySize(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 307
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Incorrect dictionary size"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 309
    :cond_2
    const/high16 v10, 0x200000

    add-int v38, p1, v10

    .line 310
    .local v38, "kBufferSize":I
    div-int/lit8 v10, v38, 0x2

    add-int/lit16 v0, v10, 0x400

    move/from16 v39, v0

    .line 312
    .local v39, "kCompressedBufferSize":I
    new-instance v43, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v43 .. v43}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    .local v43, "propStream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, LSevenZip/Compression/LZMA/Encoder;->WriteCoderProperties(Ljava/io/OutputStream;)V

    .line 314
    invoke-virtual/range {v43 .. v43}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v42

    .line 315
    .local v42, "propArray":[B
    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Decoder;->SetDecoderProperties([B)Z

    .line 317
    new-instance v44, LSevenZip/LzmaBench$CBenchRandomGenerator;

    invoke-direct/range {v44 .. v44}, LSevenZip/LzmaBench$CBenchRandomGenerator;-><init>()V

    .line 319
    .local v44, "rg":LSevenZip/LzmaBench$CBenchRandomGenerator;
    move-object/from16 v0, v44

    move/from16 v1, v38

    invoke-virtual {v0, v1}, LSevenZip/LzmaBench$CBenchRandomGenerator;->Set(I)V

    .line 320
    invoke-virtual/range {v44 .. v44}, LSevenZip/LzmaBench$CBenchRandomGenerator;->Generate()V

    .line 321
    new-instance v30, LSevenZip/CRC;

    invoke-direct/range {v30 .. v30}, LSevenZip/CRC;-><init>()V

    .line 322
    .local v30, "crc":LSevenZip/CRC;
    invoke-virtual/range {v30 .. v30}, LSevenZip/CRC;->Init()V

    .line 323
    move-object/from16 v0, v44

    iget-object v10, v0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Buffer:[B

    const/4 v11, 0x0

    move-object/from16 v0, v44

    iget v12, v0, LSevenZip/LzmaBench$CBenchRandomGenerator;->BufferSize:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11, v12}, LSevenZip/CRC;->Update([BII)V

    .line 325
    new-instance v14, LSevenZip/LzmaBench$CProgressInfo;

    invoke-direct {v14}, LSevenZip/LzmaBench$CProgressInfo;-><init>()V

    .line 326
    .local v14, "progressInfo":LSevenZip/LzmaBench$CProgressInfo;
    move/from16 v0, p1

    int-to-long v10, v0

    iput-wide v10, v14, LSevenZip/LzmaBench$CProgressInfo;->ApprovedStart:J

    .line 328
    const-wide/16 v48, 0x0

    .line 329
    .local v48, "totalBenchSize":J
    const-wide/16 v54, 0x0

    .line 330
    .local v54, "totalEncodeTime":J
    const-wide/16 v52, 0x0

    .line 331
    .local v52, "totalDecodeTime":J
    const-wide/16 v50, 0x0

    .line 333
    .local v50, "totalCompressedSize":J
    new-instance v8, LSevenZip/LzmaBench$MyInputStream;

    move-object/from16 v0, v44

    iget-object v10, v0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Buffer:[B

    move-object/from16 v0, v44

    iget v11, v0, LSevenZip/LzmaBench$CBenchRandomGenerator;->BufferSize:I

    invoke-direct {v8, v10, v11}, LSevenZip/LzmaBench$MyInputStream;-><init>([BI)V

    .line 335
    .local v8, "inStream":LSevenZip/LzmaBench$MyInputStream;
    move/from16 v0, v39

    new-array v6, v0, [B

    .line 336
    .local v6, "compressedBuffer":[B
    new-instance v9, LSevenZip/LzmaBench$MyOutputStream;

    invoke-direct {v9, v6}, LSevenZip/LzmaBench$MyOutputStream;-><init>([B)V

    .line 337
    .local v9, "compressedStream":LSevenZip/LzmaBench$MyOutputStream;
    new-instance v31, LSevenZip/LzmaBench$CrcOutStream;

    invoke-direct/range {v31 .. v31}, LSevenZip/LzmaBench$CrcOutStream;-><init>()V

    .line 338
    .local v31, "crcOutStream":LSevenZip/LzmaBench$CrcOutStream;
    const/16 v36, 0x0

    .line 339
    .local v36, "inputCompressedStream":LSevenZip/LzmaBench$MyInputStream;
    const/16 v29, 0x0

    .line 340
    .local v29, "compressedSize":I
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, p0

    if-ge v0, v1, :cond_9

    .line 342
    invoke-virtual {v14}, LSevenZip/LzmaBench$CProgressInfo;->Init()V

    .line 343
    invoke-virtual {v8}, LSevenZip/LzmaBench$MyInputStream;->reset()V

    .line 344
    invoke-virtual {v9}, LSevenZip/LzmaBench$MyOutputStream;->reset()V

    .line 345
    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    invoke-virtual/range {v7 .. v14}, LSevenZip/Compression/LZMA/Encoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLSevenZip/ICodeProgress;)V

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v14, LSevenZip/LzmaBench$CProgressInfo;->Time:J

    sub-long v16, v10, v12

    .line 348
    .local v16, "encodeTime":J
    if-nez v35, :cond_4

    .line 350
    invoke-virtual {v9}, LSevenZip/LzmaBench$MyOutputStream;->size()I

    move-result v29

    .line 351
    new-instance v36, LSevenZip/LzmaBench$MyInputStream;

    .end local v36    # "inputCompressedStream":LSevenZip/LzmaBench$MyInputStream;
    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-direct {v0, v6, v1}, LSevenZip/LzmaBench$MyInputStream;-><init>([BI)V

    .line 356
    .restart local v36    # "inputCompressedStream":LSevenZip/LzmaBench$MyInputStream;
    :cond_3
    iget-wide v10, v14, LSevenZip/LzmaBench$CProgressInfo;->InSize:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 357
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Internal ERROR 1282"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 353
    :cond_4
    invoke-virtual {v9}, LSevenZip/LzmaBench$MyOutputStream;->size()I

    move-result v10

    move/from16 v0, v29

    if-eq v0, v10, :cond_3

    .line 354
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Encoding error"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 359
    :cond_5
    const-wide/16 v32, 0x0

    .line 360
    .local v32, "decodeTime":J
    const/16 v37, 0x0

    .local v37, "j":I
    :goto_2
    const/4 v10, 0x2

    move/from16 v0, v37

    if-ge v0, v10, :cond_8

    .line 362
    invoke-virtual/range {v36 .. v36}, LSevenZip/LzmaBench$MyInputStream;->reset()V

    .line 363
    invoke-virtual/range {v31 .. v31}, LSevenZip/LzmaBench$CrcOutStream;->Init()V

    .line 365
    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v40, v0

    .line 366
    .local v40, "outSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 367
    .local v46, "startTime":J
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-object/from16 v2, v31

    move-wide/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v4}, LSevenZip/Compression/LZMA/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v10

    if-nez v10, :cond_6

    .line 368
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Decoding Error"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 369
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v32, v10, v46

    .line 370
    invoke-virtual/range {v31 .. v31}, LSevenZip/LzmaBench$CrcOutStream;->GetDigest()I

    move-result v10

    invoke-virtual/range {v30 .. v30}, LSevenZip/CRC;->GetDigest()I

    move-result v11

    if-eq v10, v11, :cond_7

    .line 371
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "CRC Error"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 360
    :cond_7
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .line 373
    .end local v40    # "outSize":J
    .end local v46    # "startTime":J
    :cond_8
    move/from16 v0, v38

    int-to-long v10, v0

    iget-wide v12, v14, LSevenZip/LzmaBench$CProgressInfo;->InSize:J

    sub-long v18, v10, v12

    .line 374
    .local v18, "benchSize":J
    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    move/from16 v15, p1

    invoke-static/range {v15 .. v22}, LSevenZip/LzmaBench;->PrintResults(IJJZJ)V

    .line 375
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "     "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 376
    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v26, 0x1

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move/from16 v21, p1

    move-wide/from16 v22, v32

    invoke-static/range {v21 .. v28}, LSevenZip/LzmaBench;->PrintResults(IJJZJ)V

    .line 377
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 379
    add-long v48, v48, v18

    .line 380
    add-long v54, v54, v16

    .line 381
    add-long v52, v52, v32

    .line 382
    move/from16 v0, v29

    int-to-long v10, v0

    add-long v50, v50, v10

    .line 340
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1

    .line 384
    .end local v16    # "encodeTime":J
    .end local v18    # "benchSize":J
    .end local v32    # "decodeTime":J
    .end local v37    # "j":I
    :cond_9
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "---------------------------------------------------"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    move/from16 v21, p1

    move-wide/from16 v22, v54

    move-wide/from16 v24, v48

    invoke-static/range {v21 .. v28}, LSevenZip/LzmaBench;->PrintResults(IJJZJ)V

    .line 386
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "     "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 387
    move/from16 v0, v38

    int-to-long v10, v0

    move/from16 v0, p0

    int-to-long v12, v0

    mul-long v24, v10, v12

    const/16 v26, 0x1

    move/from16 v21, p1

    move-wide/from16 v22, v52

    move-wide/from16 v27, v50

    invoke-static/range {v21 .. v28}, LSevenZip/LzmaBench;->PrintResults(IJJZJ)V

    .line 389
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "    Average"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method static MyMultDiv64(JJ)J
    .locals 8
    .param p0, "value"    # J
    .param p2, "elapsedTime"    # J

    .prologue
    const/4 v6, 0x1

    .line 224
    const-wide/16 v2, 0x3e8

    .line 225
    .local v2, "freq":J
    move-wide v0, p2

    .line 226
    .local v0, "elTime":J
    :goto_0
    const-wide/32 v4, 0xf4240

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 228
    ushr-long/2addr v2, v6

    .line 229
    ushr-long/2addr v0, v6

    goto :goto_0

    .line 231
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 232
    const-wide/16 v0, 0x1

    .line 233
    :cond_1
    mul-long v4, p0, v2

    div-long/2addr v4, v0

    return-wide v4
.end method

.method static PrintRating(J)V
    .locals 2
    .param p0, "rating"    # J

    .prologue
    .line 271
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    invoke-static {v0, v1}, LSevenZip/LzmaBench;->PrintValue(J)V

    .line 272
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " MIPS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method static PrintResults(IJJZJ)V
    .locals 11
    .param p0, "dictionarySize"    # I
    .param p1, "elapsedTime"    # J
    .param p3, "size"    # J
    .param p5, "decompressMode"    # Z
    .param p6, "secondSize"    # J

    .prologue
    .line 281
    invoke-static {p3, p4, p1, p2}, LSevenZip/LzmaBench;->MyMultDiv64(JJ)J

    move-result-wide v8

    .line 282
    .local v8, "speed":J
    const-wide/16 v0, 0x400

    div-long v0, v8, v0

    invoke-static {v0, v1}, LSevenZip/LzmaBench;->PrintValue(J)V

    .line 283
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " KB/s  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 285
    if-eqz p5, :cond_0

    move-wide v0, p1

    move-wide v2, p3

    move-wide/from16 v4, p6

    .line 286
    invoke-static/range {v0 .. v5}, LSevenZip/LzmaBench;->GetDecompressRating(JJJ)J

    move-result-wide v6

    .line 289
    .local v6, "rating":J
    :goto_0
    invoke-static {v6, v7}, LSevenZip/LzmaBench;->PrintRating(J)V

    .line 290
    return-void

    .line 288
    .end local v6    # "rating":J
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, LSevenZip/LzmaBench;->GetCompressRating(IJJ)J

    move-result-wide v6

    .restart local v6    # "rating":J
    goto :goto_0
.end method

.method static PrintValue(J)V
    .locals 4
    .param p0, "v"    # J

    .prologue
    .line 262
    const-string v1, ""

    .line 263
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 265
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 267
    return-void
.end method
