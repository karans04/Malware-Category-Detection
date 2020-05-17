.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/IndexGroup;
.super Ljava/lang/Object;
.source "IndexGroup.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/raizlabs/android/dbflow/annotation/IndexGroup;
        number = -0x1
        unique = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final GENERIC:I = -0x1


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract number()I
.end method

.method public abstract unique()Z
.end method
