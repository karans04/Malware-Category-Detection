.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/PrimaryKey;
.super Ljava/lang/Object;
.source "PrimaryKey.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/raizlabs/android/dbflow/annotation/PrimaryKey;
        autoincrement = false
        quickCheckAutoIncrement = false
        rowID = false
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
.method public abstract autoincrement()Z
.end method

.method public abstract quickCheckAutoIncrement()Z
.end method

.method public abstract rowID()Z
.end method
