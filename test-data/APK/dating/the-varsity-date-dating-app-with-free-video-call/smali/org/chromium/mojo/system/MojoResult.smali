.class public final Lorg/chromium/mojo/system/MojoResult;
.super Ljava/lang/Object;
.source "MojoResult.java"


# static fields
.field public static final ABORTED:I = 0xa

.field public static final ALREADY_EXISTS:I = 0x6

.field public static final BUSY:I = 0x10

.field public static final CANCELLED:I = 0x1

.field public static final DATA_LOSS:I = 0xf

.field public static final DEADLINE_EXCEEDED:I = 0x4

.field public static final FAILED_PRECONDITION:I = 0x9

.field public static final INTERNAL:I = 0xd

.field public static final INVALID_ARGUMENT:I = 0x3

.field public static final NOT_FOUND:I = 0x5

.field public static final OK:I = 0x0

.field public static final OUT_OF_RANGE:I = 0xb

.field public static final PERMISSION_DENIED:I = 0x7

.field public static final RESOURCE_EXHAUSTED:I = 0x8

.field public static final SHOULD_WAIT:I = 0x11

.field public static final UNAVAILABLE:I = 0xe

.field public static final UNIMPLEMENTED:I = 0xc

.field public static final UNKNOWN:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static describe(I)Ljava/lang/String;
    .locals 1
    .param p0, "mCode"    # I

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    const-string v0, "OK"

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "CANCELLED"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "INVALID_ARGUMENT"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string v0, "DEADLINE_EXCEEDED"

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "NOT_FOUND"

    goto :goto_0

    .line 54
    :pswitch_6
    const-string v0, "ALREADY_EXISTS"

    goto :goto_0

    .line 56
    :pswitch_7
    const-string v0, "PERMISSION_DENIED"

    goto :goto_0

    .line 58
    :pswitch_8
    const-string v0, "RESOURCE_EXHAUSTED"

    goto :goto_0

    .line 60
    :pswitch_9
    const-string v0, "FAILED_PRECONDITION"

    goto :goto_0

    .line 62
    :pswitch_a
    const-string v0, "ABORTED"

    goto :goto_0

    .line 64
    :pswitch_b
    const-string v0, "OUT_OF_RANGE"

    goto :goto_0

    .line 66
    :pswitch_c
    const-string v0, "UNIMPLEMENTED"

    goto :goto_0

    .line 68
    :pswitch_d
    const-string v0, "INTERNAL"

    goto :goto_0

    .line 70
    :pswitch_e
    const-string v0, "UNAVAILABLE"

    goto :goto_0

    .line 72
    :pswitch_f
    const-string v0, "DATA_LOSS"

    goto :goto_0

    .line 74
    :pswitch_10
    const-string v0, "BUSY"

    goto :goto_0

    .line 76
    :pswitch_11
    const-string v0, "SHOULD_WAIT"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
