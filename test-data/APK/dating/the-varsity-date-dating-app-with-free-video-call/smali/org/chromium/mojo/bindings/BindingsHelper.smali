.class public Lorg/chromium/mojo/bindings/BindingsHelper;
.super Ljava/lang/Object;
.source "BindingsHelper.java"


# static fields
.field public static final ALIGNMENT:I = 0x8

.field public static final ARRAY_NULLABLE:I = 0x1

.field public static final ELEMENT_NULLABLE:I = 0x2

.field public static final MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

.field public static final NOTHING_NULLABLE:I = 0x0

.field public static final POINTER_SIZE:I = 0x8

.field public static final SERIALIZED_HANDLE_SIZE:I = 0x4

.field public static final SERIALIZED_INTERFACE_SIZE:I = 0x8

.field public static final UNION_SIZE:I = 0x10

.field public static final UNSPECIFIED_ARRAY_LENGTH:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static align(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 79
    add-int/lit8 v0, p0, 0x8

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, -0x8

    return v0
.end method

.method public static align(J)J
    .locals 4
    .param p0, "size"    # J

    .prologue
    .line 86
    const-wide/16 v0, 0x8

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, -0x8

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-ne p0, p1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    if-nez p0, :cond_1

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static getDefaultAsyncWaiterForHandle(Lorg/chromium/mojo/system/Handle;)Lorg/chromium/mojo/system/AsyncWaiter;
    .locals 1
    .param p0, "handle"    # Lorg/chromium/mojo/system/Handle;

    .prologue
    .line 193
    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/Core;->getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hashCode(D)I
    .locals 2
    .param p0, "o"    # D

    .prologue
    .line 170
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public static hashCode(F)I
    .locals 1
    .param p0, "o"    # F

    .prologue
    .line 163
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static hashCode(I)I
    .locals 0
    .param p0, "o"    # I

    .prologue
    .line 177
    return p0
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "o"    # J

    .prologue
    .line 156
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Z)I
    .locals 1
    .param p0, "o"    # Z

    .prologue
    .line 149
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static isArrayNullable(I)Z
    .locals 1
    .param p0, "arrayNullability"    # I

    .prologue
    .line 68
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isElementNullable(I)Z
    .locals 1
    .param p0, "arrayNullability"    # I

    .prologue
    .line 72
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSurrogate(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 186
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xe000

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static utf8StringSizeInBytes(Ljava/lang/String;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "res":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 95
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 96
    .local v0, "c":C
    move v2, v0

    .line 97
    .local v2, "codepoint":I
    invoke-static {v0}, Lorg/chromium/mojo/bindings/BindingsHelper;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 100
    .local v1, "c2":C
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 102
    .end local v1    # "c2":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 103
    const/16 v5, 0x7f

    if-le v2, v5, :cond_1

    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 105
    const/16 v5, 0x7ff

    if-le v2, v5, :cond_1

    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 107
    const v5, 0xffff

    if-le v2, v5, :cond_1

    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    const v5, 0x1fffff

    if-le v2, v5, :cond_1

    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 111
    const v5, 0x3ffffff

    if-le v2, v5, :cond_1

    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 94
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "c":C
    .end local v2    # "codepoint":I
    :cond_2
    return v4
.end method
