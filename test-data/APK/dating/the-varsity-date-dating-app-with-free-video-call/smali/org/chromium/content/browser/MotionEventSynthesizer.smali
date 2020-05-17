.class public Lorg/chromium/content/browser/MotionEventSynthesizer;
.super Ljava/lang/Object;
.source "MotionEventSynthesizer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACTION_CANCEL:I = 0x2

.field private static final ACTION_END:I = 0x3

.field private static final ACTION_MOVE:I = 0x1

.field private static final ACTION_SCROLL:I = 0x4

.field private static final ACTION_START:I = 0x0

.field private static final MAX_NUM_POINTERS:I = 0x10


# instance fields
.field private final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mDownTimeInMs:J

.field private final mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private final mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/content/browser/MotionEventSynthesizer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    const/16 v1, 0x10

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 35
    new-array v0, v1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 36
    new-array v0, v1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 37
    return-void
.end method


# virtual methods
.method inject(IIJ)V
    .locals 21
    .param p1, "action"    # I
    .param p2, "pointerCount"    # I
    .param p3, "timeInMs"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    .line 135
    sget-boolean v4, Lorg/chromium/content/browser/MotionEventSynthesizer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Unreached"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 70
    :pswitch_0
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    .line 71
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 75
    .local v20, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 78
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    const/4 v8, 0x5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p2

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 85
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 139
    .end local v20    # "event":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p2

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 94
    .restart local v20    # "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 99
    .end local v20    # "event":Landroid/view/MotionEvent;
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 103
    .restart local v20    # "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 108
    .end local v20    # "event":Landroid/view/MotionEvent;
    :pswitch_3
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    const/4 v8, 0x6

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p2

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 113
    .restart local v20    # "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 114
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 117
    .end local v20    # "event":Landroid/view/MotionEvent;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 121
    .restart local v20    # "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 126
    .end local v20    # "event":Landroid/view/MotionEvent;
    :pswitch_4
    sget-boolean v4, Lorg/chromium/content/browser/MotionEventSynthesizer;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mDownTimeInMs:J

    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p2

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 130
    .restart local v20    # "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/ContentViewCore;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 131
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method setPointer(IIII)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 41
    sget-boolean v3, Lorg/chromium/content/browser/MotionEventSynthesizer;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-ltz p1, :cond_0

    const/16 v3, 0x10

    if-lt p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 44
    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v2

    .line 46
    .local v2, "scaleFactor":F
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 47
    .local v0, "coords":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v3, p2

    mul-float/2addr v3, v2

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 48
    int-to-float v3, p3

    mul-float/2addr v3, v2

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 49
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 50
    iget-object v3, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aput-object v0, v3, p1

    .line 52
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 53
    .local v1, "properties":Landroid/view/MotionEvent$PointerProperties;
    iput p4, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 54
    iget-object v3, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aput-object v1, v3, p1

    .line 55
    return-void
.end method

.method setScrollDeltas(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0, v4, p1, p2, v4}, Lorg/chromium/content/browser/MotionEventSynthesizer;->setPointer(IIII)V

    .line 61
    iget-object v1, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 62
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v4

    const/16 v2, 0xa

    int-to-float v3, p3

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 63
    iget-object v1, p0, Lorg/chromium/content/browser/MotionEventSynthesizer;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v4

    const/16 v2, 0x9

    int-to-float v3, p4

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 64
    return-void
.end method
