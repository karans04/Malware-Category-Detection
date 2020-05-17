.class Lcom/facebook/stetho/inspector/elements/Document$3;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/facebook/stetho/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/elements/Document;->applyDocumentUpdate(Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/stetho/common/Accumulator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/elements/Document;

.field final synthetic val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/elements/Document;Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/elements/Document;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    iput-object p2, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/Object;)V
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 348
    iget-object v4, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v4}, Lcom/facebook/stetho/inspector/elements/Document;->access$500(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->containsObject(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 352
    :cond_0
    iget-object v4, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;

    invoke-virtual {v4, p1}, Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/facebook/stetho/inspector/elements/ElementInfo;

    move-result-object v0

    .line 356
    .local v0, "newElementInfo":Lcom/facebook/stetho/inspector/elements/ElementInfo;
    iget-object v4, v0, Lcom/facebook/stetho/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 357
    iget-object v4, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v4}, Lcom/facebook/stetho/inspector/elements/Document;->access$100(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/elements/ShadowDocument;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/facebook/stetho/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/facebook/stetho/inspector/elements/ElementInfo;

    move-result-object v2

    .line 358
    .local v2, "oldElementInfo":Lcom/facebook/stetho/inspector/elements/ElementInfo;
    iget-object v4, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v4}, Lcom/facebook/stetho/inspector/elements/Document;->access$500(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    move-result-object v4

    iget-object v5, v2, Lcom/facebook/stetho/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 359
    .local v3, "parentNodeId":I
    iget-object v4, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v4}, Lcom/facebook/stetho/inspector/elements/Document;->access$500(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 360
    .local v1, "nodeId":I
    iget-object v4, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v4}, Lcom/facebook/stetho/inspector/elements/Document;->access$700(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;->onChildNodeRemoved(II)V

    .line 364
    .end local v1    # "nodeId":I
    .end local v2    # "oldElementInfo":Lcom/facebook/stetho/inspector/elements/ElementInfo;
    .end local v3    # "parentNodeId":I
    :cond_1
    iget-object v4, p0, Lcom/facebook/stetho/inspector/elements/Document$3;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v4}, Lcom/facebook/stetho/inspector/elements/Document;->access$500(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->removeObject(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 365
    return-void
.end method
