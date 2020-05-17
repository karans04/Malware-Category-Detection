.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/provider/ContentUri;
.super Ljava/lang/Object;
.source "ContentUri.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/raizlabs/android/dbflow/annotation/provider/ContentUri;
        deleteEnabled = true
        insertEnabled = true
        queryEnabled = true
        segments = {}
        updateEnabled = true
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/annotation/provider/ContentUri$PathSegment;,
        Lcom/raizlabs/android/dbflow/annotation/provider/ContentUri$ContentType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract deleteEnabled()Z
.end method

.method public abstract insertEnabled()Z
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public abstract queryEnabled()Z
.end method

.method public abstract segments()[Lcom/raizlabs/android/dbflow/annotation/provider/ContentUri$PathSegment;
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method public abstract updateEnabled()Z
.end method
