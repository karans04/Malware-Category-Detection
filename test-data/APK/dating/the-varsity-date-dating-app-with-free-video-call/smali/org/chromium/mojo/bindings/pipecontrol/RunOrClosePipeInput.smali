.class public final Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;
.super Lorg/chromium/mojo/bindings/Union;
.source "RunOrClosePipeInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput$Tag;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

.field private mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

.field private mTag_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;
    .param p1, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 117
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v3, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 155
    :goto_0
    return-object v2

    .line 120
    :cond_0
    new-instance v2, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    invoke-direct {v2}, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;-><init>()V

    .line 121
    .local v2, "result":Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;
    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    add-int/lit8 v3, p1, 0x8

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 129
    .local v1, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v1}, Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    .line 133
    iput v4, v2, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    goto :goto_0

    .line 141
    .end local v1    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :pswitch_1
    add-int/lit8 v3, p1, 0x8

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 143
    .restart local v1    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v1}, Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    .line 147
    const/4 v3, 0x1

    iput v3, v2, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;
    .locals 2
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 112
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->decoderForSerializedUnion()Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 3
    .param p1, "encoder0"    # Lorg/chromium/mojo/bindings/Encoder;
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 81
    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 82
    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 83
    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 163
    if-ne p1, p0, :cond_1

    .line 164
    const/4 v1, 0x1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 169
    check-cast v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    .line 170
    .local v0, "other":Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;
    iget v2, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    iget v3, v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    if-ne v2, v3, :cond_0

    .line 172
    iget v2, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    iget-object v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    iget-object v2, v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    invoke-static {v1, v2}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    iget-object v2, v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    invoke-static {v1, v2}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAssociatedEndpointClosedBeforeSentEvent()Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .prologue
    .line 73
    sget-boolean v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    return-object v0
.end method

.method public getPeerAssociatedEndpointClosedEvent()Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .prologue
    .line 56
    sget-boolean v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 191
    const/16 v0, 0x1f

    .line 192
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 193
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 194
    iget v2, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    packed-switch v2, :pswitch_data_0

    .line 210
    :goto_0
    return v1

    .line 197
    :pswitch_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 198
    goto :goto_0

    .line 202
    :pswitch_1
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 203
    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isUnknown()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAssociatedEndpointClosedBeforeSentEvent(Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;)V
    .locals 1
    .param p1, "associatedEndpointClosedBeforeSentEvent"    # Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    .line 66
    iput-object p1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    .line 67
    return-void
.end method

.method public setPeerAssociatedEndpointClosedEvent(Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;)V
    .locals 1
    .param p1, "peerAssociatedEndpointClosedEvent"    # Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    .line 49
    iput-object p1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    .line 50
    return-void
.end method

.method public which()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    return v0
.end method
