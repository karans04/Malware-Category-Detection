.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/Unique;
.super Ljava/lang/Object;
.source "Unique.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/raizlabs/android/dbflow/annotation/Unique;
        onUniqueConflict = .enum Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
        unique = true
        uniqueGroups = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract onUniqueConflict()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
.end method

.method public abstract unique()Z
.end method

.method public abstract uniqueGroups()[I
.end method
