.class Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;
.super Ljava/lang/Object;
.source "WifiDirect.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->createCallActionListener(ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

.field final synthetic val$instanceID:I

.field final synthetic val$jsonOutput:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;I)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iput-object p2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$jsonOutput:Lorg/json/JSONObject;

    iput p3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$instanceID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reasonCode"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$jsonOutput:Lorg/json/JSONObject;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->setError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 125
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iget v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$instanceID:I

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$jsonOutput:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->postMessage(ILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$jsonOutput:Lorg/json/JSONObject;

    const-string v2, "data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iget v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$instanceID:I

    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->val$jsonOutput:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->postMessage(ILjava/lang/String;)V

    .line 120
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->printErrorMessage(Lorg/json/JSONException;)V

    goto :goto_0
.end method
