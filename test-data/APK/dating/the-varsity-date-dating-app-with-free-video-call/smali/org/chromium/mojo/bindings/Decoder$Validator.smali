.class final Lorg/chromium/mojo/bindings/Decoder$Validator;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Validator"
.end annotation


# instance fields
.field private final mMaxMemory:J

.field private mMinNextClaimedHandle:I

.field private mMinNextMemory:J

.field private final mNumberOfHandles:J


# direct methods
.method constructor <init>(JI)V
    .locals 3
    .param p1, "maxMemory"    # J
    .param p3, "numberOfHandles"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextClaimedHandle:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    .line 52
    iput-wide p1, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMaxMemory:J

    .line 53
    int-to-long v0, p3

    iput-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mNumberOfHandles:J

    .line 54
    return-void
.end method


# virtual methods
.method public claimHandle(I)V
    .locals 4
    .param p1, "handle"    # I

    .prologue
    .line 57
    iget v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextClaimedHandle:I

    if-ge p1, v0, :cond_0

    .line 58
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Trying to access handle out of order."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mNumberOfHandles:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 62
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Trying to access non present handle."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextClaimedHandle:I

    .line 65
    return-void
.end method

.method public claimMemory(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 68
    const-wide/16 v0, 0x8

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect starting alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 72
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Trying to access memory out of order."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    cmp-long v0, p3, p1

    if-gez v0, :cond_2

    .line 75
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Incorrect memory range."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    iget-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMaxMemory:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    .line 78
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Trying to access out of range memory."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    invoke-static {p3, p4}, Lorg/chromium/mojo/bindings/BindingsHelper;->align(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    .line 81
    return-void
.end method
