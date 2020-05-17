.class public LSevenZip/LzmaAlone;
.super Ljava/lang/Object;
.source "LzmaAlone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSevenZip/LzmaAlone$CommandLine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method

.method static PrintHelp()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nUsage:  LZMA <e|d> [<switches>...] inputFile outputFile\n  e: encode file\n  d: decode file\n  b: Benchmark\n<Switches>\n  -d{N}:  set dictionary - [0,28], default: 23 (8MB)\n  -fb{N}: set number of fast bytes - [5, 273], default: 128\n  -lc{N}: set number of literal context bits - [0, 8], default: 3\n  -lp{N}: set number of literal pos bits - [0, 4], default: 0\n  -pb{N}: set number of pos bits - [0, 4], default: 2\n  -mf{MF_ID}: set Match Finder: [bt2, bt4], default: bt4\n  -eos:   write End Of Stream marker\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 24
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\nLZMA (Java) 4.61  2008-11-23\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    array-length v6, v0

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 170
    invoke-static {}, LSevenZip/LzmaAlone;->PrintHelp()V

    .line 251
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v20, LSevenZip/LzmaAlone$CommandLine;

    invoke-direct/range {v20 .. v20}, LSevenZip/LzmaAlone$CommandLine;-><init>()V

    .line 175
    .local v20, "params":LSevenZip/LzmaAlone$CommandLine;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, LSevenZip/LzmaAlone$CommandLine;->Parse([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 177
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\nIncorrect command"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->Command:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 183
    const/high16 v11, 0x200000

    .line 184
    .local v11, "dictionary":I
    move-object/from16 v0, v20

    iget-boolean v6, v0, LSevenZip/LzmaAlone$CommandLine;->DictionarySizeIsDefined:Z

    if-eqz v6, :cond_2

    .line 185
    move-object/from16 v0, v20

    iget v11, v0, LSevenZip/LzmaAlone$CommandLine;->DictionarySize:I

    .line 186
    :cond_2
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->MatchFinder:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 187
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Unsupported match finder"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    :cond_3
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->NumBenchmarkPasses:I

    invoke-static {v6, v11}, LSevenZip/LzmaBench;->LzmaBenchmark(II)I

    goto :goto_0

    .line 190
    .end local v11    # "dictionary":I
    :cond_4
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->Command:I

    if-eqz v6, :cond_5

    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->Command:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    .line 192
    :cond_5
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v20

    iget-object v6, v0, LSevenZip/LzmaAlone$CommandLine;->InFile:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v16, "inFile":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v20

    iget-object v6, v0, LSevenZip/LzmaAlone$CommandLine;->OutFile:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v17, "outFile":Ljava/io/File;
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 196
    .local v4, "inStream":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    .local v5, "outStream":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 199
    .local v12, "eos":Z
    move-object/from16 v0, v20

    iget-boolean v6, v0, LSevenZip/LzmaAlone$CommandLine;->Eos:Z

    if-eqz v6, :cond_6

    .line 200
    const/4 v12, 0x1

    .line 201
    :cond_6
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->Command:I

    if-nez v6, :cond_f

    .line 203
    new-instance v3, LSevenZip/Compression/LZMA/Encoder;

    invoke-direct {v3}, LSevenZip/Compression/LZMA/Encoder;-><init>()V

    .line 204
    .local v3, "encoder":LSevenZip/Compression/LZMA/Encoder;
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->Algorithm:I

    invoke-virtual {v3, v6}, LSevenZip/Compression/LZMA/Encoder;->SetAlgorithm(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 205
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Incorrect compression mode"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_7
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->DictionarySize:I

    invoke-virtual {v3, v6}, LSevenZip/Compression/LZMA/Encoder;->SetDictionarySize(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 207
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Incorrect dictionary size"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    :cond_8
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->Fb:I

    invoke-virtual {v3, v6}, LSevenZip/Compression/LZMA/Encoder;->SetNumFastBytes(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 209
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Incorrect -fb value"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    :cond_9
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->MatchFinder:I

    invoke-virtual {v3, v6}, LSevenZip/Compression/LZMA/Encoder;->SetMatchFinder(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 211
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Incorrect -mf value"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 212
    :cond_a
    move-object/from16 v0, v20

    iget v6, v0, LSevenZip/LzmaAlone$CommandLine;->Lc:I

    move-object/from16 v0, v20

    iget v7, v0, LSevenZip/LzmaAlone$CommandLine;->Lp:I

    move-object/from16 v0, v20

    iget v8, v0, LSevenZip/LzmaAlone$CommandLine;->Pb:I

    invoke-virtual {v3, v6, v7, v8}, LSevenZip/Compression/LZMA/Encoder;->SetLcLpPb(III)Z

    move-result v6

    if-nez v6, :cond_b

    .line 213
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Incorrect -lc or -lp or -pb value"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_b
    invoke-virtual {v3, v12}, LSevenZip/Compression/LZMA/Encoder;->SetEndMarkerMode(Z)V

    .line 215
    invoke-virtual {v3, v5}, LSevenZip/Compression/LZMA/Encoder;->WriteCoderProperties(Ljava/io/OutputStream;)V

    .line 217
    if-eqz v12, :cond_c

    .line 218
    const-wide/16 v14, -0x1

    .line 221
    .local v14, "fileSize":J
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/16 v6, 0x8

    if-ge v13, v6, :cond_d

    .line 222
    mul-int/lit8 v6, v13, 0x8

    ushr-long v6, v14, v6

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 221
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 220
    .end local v13    # "i":I
    .end local v14    # "fileSize":J
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v14

    .restart local v14    # "fileSize":J
    goto :goto_1

    .line 223
    .restart local v13    # "i":I
    :cond_d
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, LSevenZip/Compression/LZMA/Encoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLSevenZip/ICodeProgress;)V

    .line 245
    .end local v3    # "encoder":LSevenZip/Compression/LZMA/Encoder;
    .end local v14    # "fileSize":J
    :cond_e
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 246
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 247
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_0

    .line 227
    .end local v13    # "i":I
    :cond_f
    const/16 v22, 0x5

    .line 228
    .local v22, "propertiesSize":I
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 229
    .local v21, "properties":[B
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    move/from16 v0, v22

    if-eq v6, v0, :cond_10

    .line 230
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "input .lzma file is too short"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 231
    :cond_10
    new-instance v2, LSevenZip/Compression/LZMA/Decoder;

    invoke-direct {v2}, LSevenZip/Compression/LZMA/Decoder;-><init>()V

    .line 232
    .local v2, "decoder":LSevenZip/Compression/LZMA/Decoder;
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, LSevenZip/Compression/LZMA/Decoder;->SetDecoderProperties([B)Z

    move-result v6

    if-nez v6, :cond_11

    .line 233
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Incorrect stream properties"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 234
    :cond_11
    const-wide/16 v18, 0x0

    .line 235
    .local v18, "outSize":J
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    const/16 v6, 0x8

    if-ge v13, v6, :cond_13

    .line 237
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v23

    .line 238
    .local v23, "v":I
    if-gez v23, :cond_12

    .line 239
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Can\'t read stream size"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 240
    :cond_12
    move/from16 v0, v23

    int-to-long v6, v0

    mul-int/lit8 v8, v13, 0x8

    shl-long/2addr v6, v8

    or-long v18, v18, v6

    .line 235
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 242
    .end local v23    # "v":I
    :cond_13
    move-wide/from16 v0, v18

    invoke-virtual {v2, v4, v5, v0, v1}, LSevenZip/Compression/LZMA/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v6

    if-nez v6, :cond_e

    .line 243
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Error in data stream"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 250
    .end local v2    # "decoder":LSevenZip/Compression/LZMA/Decoder;
    .end local v4    # "inStream":Ljava/io/BufferedInputStream;
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v12    # "eos":Z
    .end local v13    # "i":I
    .end local v16    # "inFile":Ljava/io/File;
    .end local v17    # "outFile":Ljava/io/File;
    .end local v18    # "outSize":J
    .end local v21    # "properties":[B
    .end local v22    # "propertiesSize":I
    :cond_14
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Incorrect command"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method
