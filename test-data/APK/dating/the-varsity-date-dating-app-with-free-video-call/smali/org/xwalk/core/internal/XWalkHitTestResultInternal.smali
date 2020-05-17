.class public Lorg/xwalk/core/internal/XWalkHitTestResultInternal;
.super Ljava/lang/Object;
.source "XWalkHitTestResultInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
.end annotation


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->mType:I

    .line 50
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 76
    iget v1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 108
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->UNKNOWN_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 111
    .local v0, "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :goto_0
    return-object v0

    .line 78
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_0
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->UNKNOWN_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 79
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 81
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_1
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 82
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 84
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_2
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->PHONE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 85
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 87
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_3
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->GEO_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 88
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 90
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_4
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->EMAIL_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 91
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 93
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_5
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->IMAGE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 94
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 96
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_6
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 97
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 99
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_7
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->SRC_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 100
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 102
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_8
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->SRC_IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 103
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 105
    .end local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :pswitch_9
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->EDIT_TEXT_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 106
    .restart local v0    # "a":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0

    .line 76
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
    .end packed-switch
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->mExtra:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->mType:I

    .line 57
    return-void
.end method
