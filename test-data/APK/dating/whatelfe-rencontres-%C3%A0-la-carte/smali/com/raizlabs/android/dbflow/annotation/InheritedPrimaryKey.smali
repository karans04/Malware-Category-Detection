.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/InheritedPrimaryKey;
.super Ljava/lang/Object;
.source "InheritedPrimaryKey.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract column()Lcom/raizlabs/android/dbflow/annotation/Column;
.end method

.method public abstract fieldName()Ljava/lang/String;
.end method

.method public abstract primaryKey()Lcom/raizlabs/android/dbflow/annotation/PrimaryKey;
.end method
