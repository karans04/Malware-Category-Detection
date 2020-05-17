.class final Lorg/chromium/content/browser/input/CursorAnchorInfoController;
.super Ljava/lang/Object;
.source "CursorAnchorInfoController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;,
        Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;
    }
.end annotation


# instance fields
.field private final mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCompositionCharacterBounds:[F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mHasCoordinateInfo:Z

.field private mHasInsertionMarker:Z

.field private mHasPendingImmediateRequest:Z

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInsertionMarkerBottom:F

.field private mInsertionMarkerHorizontal:F

.field private mInsertionMarkerTop:F

.field private mIsEditable:Z

.field private mIsInsertionMarkerVisible:Z

.field private mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMatrix:Landroid/graphics/Matrix;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mMonitorModeEnabled:Z

.field private mScale:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mViewOrigin:[I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V
    .locals 1
    .param p1, "inputMethodManagerWrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .param p2, "composingTextDelegate"    # Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;
    .param p3, "viewDelegate"    # Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    .line 75
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 88
    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 89
    iput-object p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    .line 90
    iput-object p3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

    .line 91
    return-void
.end method

.method public static create(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;
    .locals 2
    .param p0, "inputMethodManagerWrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .param p1, "composingTextDelegate"    # Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    .prologue
    .line 96
    new-instance v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    new-instance v1, Lorg/chromium/content/browser/input/CursorAnchorInfoController$1;

    invoke-direct {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$1;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V

    return-object v0
.end method

.method public static createForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;
    .locals 1
    .param p0, "inputMethodManagerWrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .param p1, "composingTextDelegate"    # Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;
    .param p2, "viewDelegate"    # Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V

    return-object v0
.end method

.method private updateCursorAnchorInfo(Landroid/view/View;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    if-nez v2, :cond_0

    .line 279
    :goto_0
    return-void

    .line 233
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v2, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    .line 238
    .local v21, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getSelectionStart()I

    move-result v20

    .line 239
    .local v20, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getSelectionEnd()I

    move-result v19

    .line 240
    .local v19, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getComposingTextStart()I

    move-result v15

    .line 241
    .local v15, "composingTextStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getComposingTextEnd()I

    move-result v14

    .line 242
    .local v14, "composingTextEnd":I
    if-eqz v21, :cond_1

    if-ltz v15, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v14, v2, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, v21

    invoke-interface {v0, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v15, v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    move-object/from16 v16, v0

    .line 246
    .local v16, "compositionCharacterBounds":[F
    if-eqz v16, :cond_1

    .line 247
    move-object/from16 v0, v16

    array-length v2, v0

    div-int/lit8 v18, v2, 0x4

    .line 248
    .local v18, "numCharacter":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 249
    mul-int/lit8 v2, v17, 0x4

    aget v4, v16, v2

    .line 250
    .local v4, "left":F
    mul-int/lit8 v2, v17, 0x4

    add-int/lit8 v2, v2, 0x1

    aget v5, v16, v2

    .line 251
    .local v5, "top":F
    mul-int/lit8 v2, v17, 0x4

    add-int/lit8 v2, v2, 0x2

    aget v6, v16, v2

    .line 252
    .local v6, "right":F
    mul-int/lit8 v2, v17, 0x4

    add-int/lit8 v2, v2, 0x3

    aget v7, v16, v2

    .line 253
    .local v7, "bottom":F
    add-int v3, v15, v17

    .line 254
    .local v3, "charIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 248
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 259
    .end local v3    # "charIndex":I
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "right":F
    .end local v7    # "bottom":F
    .end local v16    # "compositionCharacterBounds":[F
    .end local v17    # "i":I
    .end local v18    # "numCharacter":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    move-object/from16 v0, p0

    iget v9, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 263
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    if-eqz v2, :cond_2

    .line 264
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    move-object/from16 v0, p0

    iget v10, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    move-object/from16 v0, p0

    iget v11, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 272
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 275
    .end local v14    # "composingTextEnd":I
    .end local v15    # "composingTextStart":I
    .end local v19    # "selectionEnd":I
    .end local v20    # "selectionStart":I
    .end local v21    # "text":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    if-eqz v2, :cond_4

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v8}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 278
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    goto/16 :goto_0

    .line 264
    .restart local v14    # "composingTextEnd":I
    .restart local v15    # "composingTextStart":I
    .restart local v19    # "selectionEnd":I
    .restart local v20    # "selectionStart":I
    .restart local v21    # "text":Ljava/lang/CharSequence;
    :cond_5
    const/4 v13, 0x2

    goto :goto_2
.end method


# virtual methods
.method public focusedNodeChanged(Z)V
    .locals 2
    .param p1, "isEditable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 210
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    .line 211
    iput-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    .line 213
    iput-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 214
    return-void
.end method

.method public invalidateLastCursorAnchorInfo()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    goto :goto_0
.end method

.method public onRequestCursorUpdates(ILandroid/view/View;)Z
    .locals 3
    .param p1, "cursorUpdateMode"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 217
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v2, :cond_0

    .line 224
    :goto_0
    return v0

    .line 219
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    .line 220
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 221
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    .line 222
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfo(Landroid/view/View;)V

    :cond_2
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFFLandroid/view/View;)V
    .locals 6
    .param p1, "renderCoordinates"    # Lorg/chromium/content/browser/RenderCoordinates;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "hasInsertionMarker"    # Z
    .param p3, "isInsertionMarkerVisible"    # Z
    .param p4, "insertionMarkerHorizontal"    # F
    .param p5, "insertionMarkerTop"    # F
    .param p6, "insertionMarkerBottom"    # F
    .param p7, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "FE_FLOATING_POINT_EQUALITY"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 156
    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v3, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

    iget-object v4, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    invoke-interface {v3, p7, v4}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;->getLocationOnScreen(Landroid/view/View;[I)V

    .line 168
    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 169
    .local v0, "scale":F
    iget-object v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v1, v3

    .line 170
    .local v1, "translationX":F
    iget-object v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v4

    add-float v2, v3, v4

    .line 172
    .local v2, "translationY":F
    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    if-ne p2, v3, :cond_2

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    if-ne p3, v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    cmpl-float v3, p4, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    cmpl-float v3, p5, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    cmpl-float v3, p6, v3

    if-eqz v3, :cond_3

    .line 181
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 182
    iput-boolean v5, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    .line 183
    iput v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    .line 184
    iput v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    .line 185
    iput v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    .line 186
    iput-boolean p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    .line 187
    iput-boolean p3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    .line 188
    iput p4, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    .line 189
    iput p5, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    .line 190
    iput p6, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    .line 195
    :cond_3
    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v3, :cond_0

    .line 197
    :cond_4
    invoke-direct {p0, p7}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfo(Landroid/view/View;)V

    goto :goto_0
.end method

.method public resetMonitoringState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    .line 206
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    .line 207
    return-void
.end method

.method public setCompositionCharacterBounds([F)V
    .locals 1
    .param p1, "compositionCharacterBounds"    # [F

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 138
    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    goto :goto_0
.end method

.method public setInputMethodManagerWrapperForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 0
    .param p1, "inputMethodManagerWrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 109
    return-void
.end method
