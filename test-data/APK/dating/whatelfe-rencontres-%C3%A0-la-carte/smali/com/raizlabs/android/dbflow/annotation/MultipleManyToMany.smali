.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/MultipleManyToMany;
.super Ljava/lang/Object;
.source "MultipleManyToMany.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()[Lcom/raizlabs/android/dbflow/annotation/ManyToMany;
.end method
