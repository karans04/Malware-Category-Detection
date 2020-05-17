.class public final Lcom/facebook/stetho/common/android/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static hitTest(Landroid/view/View;FF)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/stetho/common/android/ViewUtil;->hitTest(Landroid/view/View;FFLcom/facebook/stetho/common/Predicate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static hitTest(Landroid/view/View;FFLcom/facebook/stetho/common/Predicate;)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3    # Lcom/facebook/stetho/common/Predicate;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FF",
            "Lcom/facebook/stetho/common/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    .local p3, "viewSelector":Lcom/facebook/stetho/common/Predicate;, "Lcom/facebook/stetho/common/Predicate<Landroid/view/View;>;"
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/facebook/stetho/common/android/ViewUtil;->hitTestImpl(Landroid/view/View;FFLcom/facebook/stetho/common/Predicate;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_0

    .line 57
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/facebook/stetho/common/android/ViewUtil;->hitTestImpl(Landroid/view/View;FFLcom/facebook/stetho/common/Predicate;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    :cond_0
    return-object v0
.end method

.method private static hitTestImpl(Landroid/view/View;FFLcom/facebook/stetho/common/Predicate;Z)Landroid/view/View;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3    # Lcom/facebook/stetho/common/Predicate;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "allowViewGroupResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FF",
            "Lcom/facebook/stetho/common/Predicate",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p3, "viewSelector":Lcom/facebook/stetho/common/Predicate;, "Lcom/facebook/stetho/common/Predicate<Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 68
    invoke-static {p0}, Lcom/facebook/stetho/common/android/ViewUtil;->isHittable(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 72
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/facebook/stetho/common/android/ViewUtil;->pointInView(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    if-eqz p3, :cond_2

    invoke-interface {p3, p0}, Lcom/facebook/stetho/common/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    :cond_2
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-nez v6, :cond_3

    move-object v5, p0

    .line 81
    goto :goto_0

    :cond_3
    move-object v4, p0

    .line 84
    check-cast v4, Landroid/view/ViewGroup;

    .line 87
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 88
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 90
    .local v3, "localPoint":Landroid/graphics/PointF;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 91
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "child":Landroid/view/View;
    invoke-static {v4, v0, p1, p2, v3}, Lcom/facebook/stetho/common/android/ViewUtil;->isTransformedPointInView(Landroid/view/ViewGroup;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v6, v7, p3, p4}, Lcom/facebook/stetho/common/android/ViewUtil;->hitTestImpl(Landroid/view/View;FFLcom/facebook/stetho/common/Predicate;Z)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "childResult":Landroid/view/View;
    if-eqz v1, :cond_4

    move-object v5, v1

    .line 102
    goto :goto_0

    .line 90
    .end local v1    # "childResult":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 108
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "localPoint":Landroid/graphics/PointF;
    :cond_5
    if-eqz p4, :cond_6

    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :goto_2
    move-object v5, v4

    goto :goto_0

    .restart local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    move-object v4, v5

    goto :goto_2
.end method

.method private static isHittable(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-static {}, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;->getInstance()Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 40
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTransformedPointInView(Landroid/view/ViewGroup;Landroid/view/View;FFLandroid/graphics/PointF;)Z
    .locals 5
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-static {p0}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 126
    .local v1, "localX":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 137
    .local v2, "localY":F
    invoke-static {p1, v1, v2}, Lcom/facebook/stetho/common/android/ViewUtil;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    .line 138
    .local v0, "isInView":Z
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 139
    invoke-virtual {p4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 142
    :cond_0
    return v0
.end method

.method public static pointInView(Landroid/view/View;FF)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 112
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static tryGetActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    :goto_0
    if-eqz p0, :cond_2

    .line 170
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 171
    check-cast p0, Landroid/app/Activity;

    .line 179
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    return-object p0

    .line 172
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 173
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 175
    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 179
    goto :goto_1
.end method

.method public static tryGetActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 147
    if-nez p0, :cond_1

    move-object v0, v4

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/stetho/common/android/ViewUtil;->tryGetActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, "activityFromContext":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 159
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v3, v2

    .line 160
    check-cast v3, Landroid/view/View;

    .line 161
    .local v3, "parentView":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/stetho/common/android/ViewUtil;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .end local v3    # "parentView":Landroid/view/View;
    :cond_2
    move-object v0, v4

    .line 164
    goto :goto_0
.end method
