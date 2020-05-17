.class public Lcom/digits/sdk/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field public static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/nickname"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "vnd.android.cursor.item/contact_event"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "vnd.android.cursor.item/relation"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/digits/sdk/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcardType"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/digits/sdk/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "vcardType"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    .line 119
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "vCard"

    const-string v3, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 125
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 126
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 127
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 128
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 129
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 130
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 131
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 137
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 140
    invoke-static {p1}, Lcom/digits/sdk/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 145
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 153
    :goto_1
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 166
    :goto_2
    invoke-virtual {p0}, Lcom/digits/sdk/vcard/VCardBuilder;->clear()V

    .line 167
    return-void

    :cond_4
    move v0, v1

    .line 124
    goto :goto_0

    .line 148
    :cond_5
    iput-object p2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_6
    iput-object p2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    const-string v0, "vCard"

    const-string v1, "Use the charset \"UTF-8\" for export."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 160
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2

    .line 162
    :cond_8
    iput-object p2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/digits/sdk/vcard/VCardBuilder;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/digits/sdk/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v2, :cond_1

    .line 257
    :cond_0
    const-string v2, "vCard"

    const-string v21, "Invalid flag is used in vCard 4.0 construction. Ignored."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    :cond_2
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    return-object p0

    .line 270
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/digits/sdk/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 272
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "familyName":Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "middleName":Ljava/lang/String;
    const-string v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "givenName":Ljava/lang/String;
    const-string v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "prefix":Ljava/lang/String;
    const-string v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "suffix":Ljava/lang/String;
    const-string v2, "data1"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 278
    .local v16, "formattedName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_4
    move-object/from16 v3, v16

    .line 290
    :cond_5
    const-string v2, "data9"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 292
    .local v17, "phoneticFamilyName":Ljava/lang/String;
    const-string v2, "data8"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 294
    .local v19, "phoneticMiddleName":Ljava/lang/String;
    const-string v2, "data7"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 296
    .local v18, "phoneticGivenName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, "escapedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 298
    .local v12, "escapedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 299
    .local v13, "escapedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 300
    .local v14, "escapedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 302
    .local v15, "escapedSuffix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "N"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 307
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 311
    .local v20, "sortAs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "SORT-AS="

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Lcom/digits/sdk/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .end local v20    # "sortAs":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 332
    const-string v2, "vCard"

    const-string v21, "DISPLAY_NAME is empty."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v2

    invoke-static/range {v2 .. v7}, Lcom/digits/sdk/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 337
    .local v9, "escaped":Ljava/lang/String;
    const-string v2, "FN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v9    # "escaped":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/digits/sdk/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 339
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 340
    .local v11, "escapedFormatted":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "FN"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 14
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 541
    const-string v12, "data9"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 543
    .local v9, "tmpPhoneticFamilyName":Ljava/lang/String;
    const-string v12, "data8"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 545
    .local v11, "tmpPhoneticMiddleName":Ljava/lang/String;
    const-string v12, "data7"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 547
    .local v10, "tmpPhoneticGivenName":Ljava/lang/String;
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v12, :cond_1

    .line 548
    invoke-static {v9}, Lcom/digits/sdk/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "phoneticFamilyName":Ljava/lang/String;
    invoke-static {v11}, Lcom/digits/sdk/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "phoneticMiddleName":Ljava/lang/String;
    invoke-static {v10}, Lcom/digits/sdk/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, "phoneticGivenName":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 561
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_0

    .line 562
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_0
    :goto_1
    return-void

    .line 552
    .end local v4    # "phoneticFamilyName":Ljava/lang/String;
    .end local v5    # "phoneticGivenName":Ljava/lang/String;
    .end local v6    # "phoneticMiddleName":Ljava/lang/String;
    :cond_1
    move-object v4, v9

    .line 553
    .restart local v4    # "phoneticFamilyName":Ljava/lang/String;
    move-object v6, v11

    .line 554
    .restart local v6    # "phoneticMiddleName":Ljava/lang/String;
    move-object v5, v10

    .restart local v5    # "phoneticGivenName":Ljava/lang/String;
    goto :goto_0

    .line 575
    :cond_2
    iget v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 667
    :cond_3
    :goto_2
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v12, :cond_0

    .line 668
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 669
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    const/4 v7, 0x1

    .line 673
    .local v7, "reallyUseQuotedPrintable":Z
    :goto_3
    if-eqz v7, :cond_19

    .line 674
    invoke-direct {p0, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "encodedPhoneticGivenName":Ljava/lang/String;
    :goto_4
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-direct {p0, v12}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 680
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_4
    if-eqz v7, :cond_5

    .line 684
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_5
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 692
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v7, 0x1

    .line 696
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_5
    if-eqz v7, :cond_1b

    .line 697
    invoke-direct {p0, v6}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "encodedPhoneticMiddleName":Ljava/lang/String;
    :goto_6
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {p0, v12}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 703
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :cond_7
    if-eqz v7, :cond_8

    .line 707
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_8
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 715
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v7, 0x1

    .line 719
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_7
    if-eqz v7, :cond_1d

    .line 720
    invoke-direct {p0, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "encodedPhoneticFamilyName":Ljava/lang/String;
    :goto_8
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-direct {p0, v12}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 726
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_a
    if-eqz v7, :cond_b

    .line 730
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_b
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 577
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_c
    iget v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 578
    iget v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12, v4, v6, v5}, Lcom/digits/sdk/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, "sortString":Ljava/lang/String;
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SORT-STRING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-direct {p0, v12}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 587
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_d
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 593
    .end local v8    # "sortString":Ljava/lang/String;
    :cond_e
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v12, :cond_3

    .line 607
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v12, :cond_15

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    :cond_f
    const/4 v7, 0x1

    .line 623
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_9
    if-eqz v7, :cond_16

    .line 624
    invoke-direct {p0, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 626
    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    :goto_a
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v12}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 635
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_10
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const/4 v3, 0x1

    .line 641
    .local v3, "first":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 642
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const/4 v3, 0x0

    .line 645
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 646
    if-eqz v3, :cond_17

    .line 647
    const/4 v3, 0x0

    .line 651
    :goto_b
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 654
    if-nez v3, :cond_13

    .line 655
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    :cond_13
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_14
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 611
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 628
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_16
    invoke-direct {p0, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    goto/16 :goto_a

    .line 649
    .restart local v3    # "first":Z
    :cond_17
    iget-object v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 669
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 676
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_19
    invoke-direct {p0, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    goto/16 :goto_4

    .line 692
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 699
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_1b
    invoke-direct {p0, v6}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    goto/16 :goto_6

    .line 715
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 722
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_1d
    invoke-direct {p0, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    goto/16 :goto_8
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1220
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1227
    iget v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_2

    .line 1229
    :cond_1
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1186
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1187
    .local v3, "typeValue":Ljava/lang/String;
    iget v4, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1188
    :cond_1
    iget v4, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/digits/sdk/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "encoded":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1195
    if-eqz v1, :cond_3

    .line 1196
    const/4 v1, 0x0

    .line 1200
    :goto_2
    invoke-direct {p0, v0}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/digits/sdk/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1198
    .restart local v0    # "encoded":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1202
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/digits/sdk/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1205
    if-eqz v1, :cond_5

    .line 1206
    const/4 v1, 0x0

    .line 1210
    :goto_3
    invoke-direct {p0, v3}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    :cond_5
    iget-object v4, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1213
    .end local v3    # "typeValue":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/Integer;

    .prologue
    .line 1112
    iget-boolean v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1115
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :goto_0
    return-void

    .line 1117
    :cond_0
    invoke-static {p2}, Lcom/digits/sdk/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "phoneType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1119
    invoke-direct {p0, v0}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :cond_1
    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 509
    iget-boolean v4, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v4, :cond_2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p2, v4, v3

    invoke-static {v4}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 512
    .local v1, "reallyUseQuotedPrintable":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "encodedPart":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-direct {p0, v2}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_0
    if-eqz v1, :cond_1

    .line 526
    iget-object v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    return-void

    .end local v0    # "encodedPart":Ljava/lang/String;
    .end local v1    # "reallyUseQuotedPrintable":Z
    :cond_2
    move v1, v3

    .line 509
    goto :goto_0

    .line 512
    .restart local v1    # "reallyUseQuotedPrintable":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 10
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 186
    const-string v9, "data3"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "familyName":Ljava/lang/String;
    const-string v9, "data5"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "middleName":Ljava/lang/String;
    const-string v9, "data2"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "givenName":Ljava/lang/String;
    const-string v9, "data4"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "prefix":Ljava/lang/String;
    const-string v9, "data6"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "suffix":Ljava/lang/String;
    const-string v9, "data9"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "phoneticFamilyName":Ljava/lang/String;
    const-string v9, "data8"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "phoneticMiddleName":Ljava/lang/String;
    const-string v9, "data7"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "phoneticGivenName":Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1261
    const-string v5, ""

    .line 1294
    :goto_0
    return-object v5

    .line 1264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1265
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1266
    .local v2, "index":I
    const/4 v3, 0x0

    .line 1267
    .local v3, "lineCount":I
    const/4 v4, 0x0

    .line 1270
    .local v4, "strArray":[B
    :try_start_0
    iget-object v5, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1276
    :cond_1
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 1277
    const-string v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    add-int/lit8 v2, v2, 0x1

    .line 1279
    add-int/lit8 v3, v3, 0x3

    .line 1281
    const/16 v5, 0x43

    if-lt v3, v5, :cond_1

    .line 1289
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const/4 v3, 0x0

    goto :goto_1

    .line 1271
    :catch_0
    move-exception v1

    .line 1272
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Charset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be used. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Try default charset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_1

    .line 1294
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "unescaped"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    .line 1305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1306
    const-string v5, ""

    .line 1369
    :goto_0
    return-object v5

    .line 1309
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    .local v4, "tmpBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1311
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1312
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1313
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 1364
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1311
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1315
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1316
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1320
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 1321
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1322
    .local v3, "nextChar":C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 1334
    .end local v3    # "nextChar":C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1338
    :sswitch_3
    iget-boolean v5, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_3

    .line 1339
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1347
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 1348
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1351
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1356
    :sswitch_5
    iget-boolean v5, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_5

    .line 1357
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1359
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1369
    .end local v0    # "ch":C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1313
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 208
    .local v4, "primaryContentValues":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 209
    .local v5, "subprimaryContentValues":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 210
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 213
    const-string v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 214
    .local v3, "isSuperPrimary":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 216
    move-object v4, v0

    .line 234
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_1
    if-nez v4, :cond_2

    .line 235
    if-eqz v5, :cond_5

    .line 237
    move-object v4, v5

    .line 244
    :cond_2
    :goto_1
    return-object v4

    .line 218
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_0

    .line 221
    const-string v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 222
    .local v2, "isPrimary":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, v0}, Lcom/digits/sdk/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 224
    move-object v4, v0

    goto :goto_0

    .line 227
    :cond_4
    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/digits/sdk/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    move-object v5, v0

    goto :goto_0

    .line 240
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "isPrimary":Ljava/lang/Integer;
    .end local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_5
    new-instance v4, Landroid/content/ContentValues;

    .end local v4    # "primaryContentValues":Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "primaryContentValues":Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 7
    .param p1, "propertyValueList"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1248
    iget-boolean v6, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v6, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return v4

    .line 1251
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1252
    .local v3, "propertyValue":Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 1253
    goto :goto_0

    .line 1251
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v4, "phoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 869
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 870
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 871
    .local v1, "ch":C
    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 872
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 875
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 878
    .end local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_2
    return-object v4
.end method


# virtual methods
.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 921
    packed-switch p1, :pswitch_data_0

    .line 950
    const-string v2, "vCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v1, 0x0

    .line 956
    .local v1, "typeAsString":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v0, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 958
    const-string v2, "PREF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 961
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p0, v2, v0, p3}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 966
    return-void

    .line 923
    .end local v0    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Lcom/digits/sdk/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 924
    const-string v1, "CELL"

    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 925
    .end local v1    # "typeAsString":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 929
    .end local v1    # "typeAsString":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 931
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 934
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 935
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 938
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 939
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 942
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 943
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 946
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 947
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Lcom/digits/sdk/vcard/VCardBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/digits/sdk/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 885
    const/4 v3, 0x0

    .line 886
    .local v3, "emailAddressExists":Z
    if-eqz p1, :cond_5

    .line 887
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 888
    .local v0, "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 889
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v12, "data1"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "emailAddress":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 891
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 893
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 896
    const-string v12, "data2"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 897
    .local v9, "typeAsObject":Ljava/lang/Integer;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 899
    .local v8, "type":I
    :goto_1
    const-string v12, "data3"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 900
    .local v7, "label":Ljava/lang/String;
    const-string v12, "is_primary"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 901
    .local v6, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_3

    move v5, v10

    .line 903
    .local v5, "isPrimary":Z
    :goto_2
    const/4 v3, 0x1

    .line 904
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 905
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual {p0, v8, v7, v2, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 897
    .end local v5    # "isPrimary":Z
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_2
    const/4 v8, 0x3

    goto :goto_1

    .restart local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .restart local v7    # "label":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_3
    move v5, v11

    .line 901
    goto :goto_2

    :cond_4
    move v5, v11

    goto :goto_2

    .line 911
    .end local v0    # "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "emailAddress":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "typeAsObject":Ljava/lang/Integer;
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v12, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_6

    .line 912
    const-string v12, ""

    const-string v13, ""

    invoke-virtual {p0, v10, v12, v13, v11}, Lcom/digits/sdk/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 915
    :cond_6
    return-object p0
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1141
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1142
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;
    .param p3, "needCharset"    # Z
    .param p4, "reallyUseQuotedPrintable"    # Z

    .prologue
    .line 1147
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1148
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .param p4, "needCharset"    # Z
    .param p5, "reallyUseQuotedPrintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1153
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-direct {p0, p2}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1158
    :cond_0
    if-eqz p4, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    :cond_1
    if-eqz p5, :cond_2

    .line 1165
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-direct {p0, p3}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "encodedValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    iget-object v1, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    return-void

    .line 1171
    .end local v0    # "encodedValue":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p3}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1128
    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v0

    .line 1130
    .local v4, "needCharset":Z
    :goto_0
    iget-boolean v2, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    .local v5, "reallyUseQuotedPrintable":Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1133
    invoke-virtual/range {v0 .. v5}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1135
    return-void

    .end local v4    # "needCharset":Z
    .end local v5    # "reallyUseQuotedPrintable":Z
    :cond_0
    move v4, v1

    .line 1128
    goto :goto_0

    .restart local v4    # "needCharset":Z
    :cond_1
    move v5, v1

    .line 1130
    goto :goto_1
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/digits/sdk/vcard/VCardBuilder;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/digits/sdk/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    invoke-direct/range {p0 .. p1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/digits/sdk/vcard/VCardBuilder;

    move-result-object p0

    .line 505
    .end local p0    # "this":Lcom/digits/sdk/vcard/VCardBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 361
    .restart local p0    # "this":Lcom/digits/sdk/vcard/VCardBuilder;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/digits/sdk/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 376
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "familyName":Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "middleName":Ljava/lang/String;
    const-string v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "givenName":Ljava/lang/String;
    const-string v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "prefix":Ljava/lang/String;
    const-string v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "suffix":Ljava/lang/String;
    const-string v2, "data1"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, "displayName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 384
    :cond_5
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v3, v2, v21

    const/16 v21, 0x1

    aput-object v5, v2, v21

    const/16 v21, 0x2

    aput-object v4, v2, v21

    const/16 v21, 0x3

    aput-object v6, v2, v21

    const/16 v21, 0x4

    aput-object v7, v2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v18

    .line 386
    .local v18, "reallyAppendCharsetParameterToName":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v3, v2, v21

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v5, v2, v21

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v2, v21

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v6, v2, v21

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v7, v2, v21

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_6
    const/16 v20, 0x1

    .line 395
    .local v20, "reallyUseQuotedPrintableToName":Z
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 396
    move-object/from16 v16, v9

    .line 402
    .local v16, "formattedName":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v16, v2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/digits/sdk/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v17

    .line 404
    .local v17, "reallyAppendCharsetParameterToFN":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v16, v2, v21

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v19, 0x1

    .line 413
    .local v19, "reallyUseQuotedPrintableToFN":Z
    :goto_3
    if-eqz v20, :cond_f

    .line 414
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 415
    .local v10, "encodedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 416
    .local v12, "encodedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 417
    .local v13, "encodedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 418
    .local v14, "encodedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 427
    .local v15, "encodedSuffix":Ljava/lang/String;
    :goto_4
    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 431
    .local v11, "encodedFormattedname":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "N"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_11

    .line 433
    if-eqz v18, :cond_7

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_7
    if-eqz v20, :cond_8

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "FN"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    if-eqz v17, :cond_9

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_9
    if-eqz v19, :cond_a

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .end local v10    # "encodedFamily":Ljava/lang/String;
    .end local v11    # "encodedFormattedname":Ljava/lang/String;
    .end local v12    # "encodedGiven":Ljava/lang/String;
    .end local v13    # "encodedMiddle":Ljava/lang/String;
    .end local v14    # "encodedPrefix":Ljava/lang/String;
    .end local v15    # "encodedSuffix":Ljava/lang/String;
    .end local v16    # "formattedName":Ljava/lang/String;
    .end local v17    # "reallyAppendCharsetParameterToFN":Z
    .end local v18    # "reallyAppendCharsetParameterToName":Z
    .end local v19    # "reallyUseQuotedPrintableToFN":Z
    .end local v20    # "reallyUseQuotedPrintableToName":Z
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/digits/sdk/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 386
    .restart local v18    # "reallyAppendCharsetParameterToName":Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 398
    .restart local v20    # "reallyUseQuotedPrintableToName":Z
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v2

    invoke-static/range {v2 .. v7}, Lcom/digits/sdk/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "formattedName":Ljava/lang/String;
    goto/16 :goto_2

    .line 404
    .restart local v17    # "reallyAppendCharsetParameterToFN":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 420
    .restart local v19    # "reallyUseQuotedPrintableToFN":Z
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 421
    .restart local v10    # "encodedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 422
    .restart local v12    # "encodedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 423
    .restart local v13    # "encodedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 424
    .restart local v14    # "encodedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "encodedSuffix":Ljava/lang/String;
    goto/16 :goto_4

    .line 427
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 449
    .restart local v11    # "encodedFormattedname":Ljava/lang/String;
    :cond_11
    if-eqz v18, :cond_12

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_12
    if-eqz v20, :cond_13

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 483
    .end local v10    # "encodedFamily":Ljava/lang/String;
    .end local v11    # "encodedFormattedname":Ljava/lang/String;
    .end local v12    # "encodedGiven":Ljava/lang/String;
    .end local v13    # "encodedMiddle":Ljava/lang/String;
    .end local v14    # "encodedPrefix":Ljava/lang/String;
    .end local v15    # "encodedSuffix":Ljava/lang/String;
    .end local v16    # "formattedName":Ljava/lang/String;
    .end local v17    # "reallyAppendCharsetParameterToFN":Z
    .end local v18    # "reallyAppendCharsetParameterToName":Z
    .end local v19    # "reallyUseQuotedPrintableToFN":Z
    .end local v20    # "reallyUseQuotedPrintableToName":Z
    :cond_14
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 486
    const-string v2, "N"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/digits/sdk/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v2, "FN"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/digits/sdk/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 497
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 498
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 500
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_b

    .line 501
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public appendPhones(Ljava/util/List;Lcom/digits/sdk/vcard/VCardPhoneNumberTranslationCallback;)Lcom/digits/sdk/vcard/VCardBuilder;
    .locals 29
    .param p2, "translationCallback"    # Lcom/digits/sdk/vcard/VCardPhoneNumberTranslationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/digits/sdk/vcard/VCardPhoneNumberTranslationCallback;",
            ")",
            "Lcom/digits/sdk/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v19, 0x0

    .line 743
    .local v19, "phoneLineExists":Z
    if-eqz p1, :cond_e

    .line 744
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 745
    .local v22, "phoneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 746
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v25, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 747
    .local v24, "typeAsObject":Ljava/lang/Integer;
    const-string v25, "data3"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 748
    .local v15, "label":Ljava/lang/String;
    const-string v25, "is_primary"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 749
    .local v14, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-lez v25, :cond_2

    const/4 v13, 0x1

    .line 751
    .local v13, "isPrimary":Z
    :goto_1
    const-string v25, "data1"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 752
    .local v20, "phoneNumber":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 753
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 755
    :cond_1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 759
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 763
    .local v23, "type":I
    :goto_2
    if-eqz p2, :cond_5

    .line 764
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-interface {v0, v1, v2, v15, v13}, Lcom/digits/sdk/vcard/VCardPhoneNumberTranslationCallback;->onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    .line 766
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 767
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2, v13}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 749
    .end local v13    # "isPrimary":Z
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v23    # "type":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 759
    .restart local v13    # "isPrimary":Z
    .restart local v20    # "phoneNumber":Ljava/lang/String;
    :cond_4
    const/16 v23, 0x1

    goto :goto_2

    .line 770
    .restart local v23    # "type":I
    :cond_5
    const/16 v25, 0x6

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/digits/sdk/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 773
    :cond_6
    const/16 v19, 0x1

    .line 774
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 775
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2, v13}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 779
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 780
    .local v21, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 783
    const/16 v19, 0x1

    .line 784
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 785
    .local v5, "actualPhoneNumber":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 789
    const/16 v25, 0x2c

    const/16 v26, 0x70

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3b

    const/16 v27, 0x77

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 795
    .local v17, "numberWithControlSequence":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .local v8, "digitsOnlyBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    .line 798
    .local v16, "length":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 799
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 800
    .local v6, "ch":C
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v25

    if-nez v25, :cond_9

    const/16 v25, 0x2b

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 801
    :cond_9
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 804
    .end local v6    # "ch":C
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/digits/sdk/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v18

    .line 806
    .local v18, "phoneFormat":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/digits/sdk/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 815
    .end local v8    # "digitsOnlyBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "length":I
    .end local v18    # "phoneFormat":I
    .local v9, "formatted":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_c

    const-string v25, "tel:"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 818
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "tel:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 822
    :cond_c
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15, v9, v13}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 810
    .end local v9    # "formatted":Ljava/lang/String;
    :cond_d
    move-object/from16 v9, v17

    .restart local v9    # "formatted":Ljava/lang/String;
    goto :goto_5

    .line 832
    .end local v5    # "actualPhoneNumber":Ljava/lang/String;
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "formatted":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isPrimary":Z
    .end local v14    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v15    # "label":Ljava/lang/String;
    .end local v17    # "numberWithControlSequence":Ljava/lang/String;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v21    # "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "phoneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "type":I
    .end local v24    # "typeAsObject":Ljava/lang/Integer;
    :cond_e
    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 833
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-string v26, ""

    const-string v27, ""

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 836
    :cond_f
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "typeAsInteger"    # Ljava/lang/Integer;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "encodedValue"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 970
    iget-object v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-object v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    if-nez p1, :cond_2

    .line 975
    const/4 v1, 0x7

    .line 980
    .local v1, "type":I
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v0, "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_0

    .line 1093
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    .line 1094
    const-string v3, "PREF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1098
    iget-object v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/digits/sdk/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1103
    :goto_2
    iget-object v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    iget-object v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    iget-object v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    return-void

    .line 977
    .end local v0    # "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "type":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "type":I
    goto :goto_0

    .line 983
    .restart local v0    # "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 988
    :pswitch_2
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 993
    :pswitch_3
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 998
    :pswitch_4
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1003
    :pswitch_5
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1007
    :pswitch_6
    iget-boolean v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_3

    .line 1010
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1012
    :cond_3
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1017
    :pswitch_7
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1021
    :pswitch_8
    const-string v3, "CAR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1026
    :pswitch_9
    const-string v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    const/4 p4, 0x1

    .line 1028
    goto/16 :goto_1

    .line 1031
    :pswitch_a
    const-string v3, "ISDN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1035
    :pswitch_b
    const/4 p4, 0x1

    .line 1036
    goto/16 :goto_1

    .line 1039
    :pswitch_c
    const-string v3, "FAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1043
    :pswitch_d
    const-string v3, "TLX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1047
    :pswitch_e
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "CELL"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1052
    :pswitch_f
    const-string v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-boolean v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_4

    .line 1055
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1057
    :cond_4
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1062
    :pswitch_10
    const-string v3, "MSG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1066
    :pswitch_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1068
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1069
    :cond_5
    invoke-static {p2}, Lcom/digits/sdk/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1070
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1071
    :cond_6
    iget-boolean v3, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v3, :cond_7

    .line 1073
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1075
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "upperLabel":Ljava/lang/String;
    invoke-static {v2}, Lcom/digits/sdk/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1077
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1078
    :cond_8
    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/digits/sdk/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1100
    .end local v2    # "upperLabel":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v0}, Lcom/digits/sdk/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto/16 :goto_2

    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mEndAppended:Z

    .line 172
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "VERSION"

    const-string v1, "4.0"

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    iget v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "VERSION"

    const-string v1, "3.0"

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    iget v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/digits/sdk/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    const-string v0, "vCard"

    const-string v1, "Unknown vCard version detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    const-string v0, "VERSION"

    const-string v1, "2.1"

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 1375
    iget-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 1376
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v0, "X-NO"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v0, "X-DCM-HMN-MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mEndAppended:Z

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/digits/sdk/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
