.class public interface abstract annotation Lorg/xwalk/core/internal/XWalkAPI;
.super Ljava/lang/Object;
.source "XWalkAPI.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/xwalk/core/internal/XWalkAPI;
        createExternally = false
        createInternally = false
        delegate = false
        disableReflectMethod = false
        extendClass = Ljava/lang/Object;
        impl = Ljava/lang/Object;
        instance = Ljava/lang/Object;
        isConst = false
        noInstance = false
        postBridgeLines = {}
        postWrapperLines = {}
        preWrapperLines = {}
        reservable = false
    .end subannotation
.end annotation


# virtual methods
.method public abstract createExternally()Z
.end method

.method public abstract createInternally()Z
.end method

.method public abstract delegate()Z
.end method

.method public abstract disableReflectMethod()Z
.end method

.method public abstract extendClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract impl()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract instance()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract isConst()Z
.end method

.method public abstract noInstance()Z
.end method

.method public abstract postBridgeLines()[Ljava/lang/String;
.end method

.method public abstract postWrapperLines()[Ljava/lang/String;
.end method

.method public abstract preWrapperLines()[Ljava/lang/String;
.end method

.method public abstract reservable()Z
.end method
