.class Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;
.super Ljava/lang/Object;
.source "WifiDirect.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->handleMessage(ILjava/lang/String;)V
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
    .line 169
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iput-object p2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->val$jsonOutput:Lorg/json/JSONObject;

    iput p3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->val$instanceID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 173
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->val$jsonOutput:Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v2, "groupFormed"

    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 176
    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "isServer"

    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 178
    const-string v3, "serverIP"

    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iget v3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->val$instanceID:I

    iget-object v4, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->val$jsonOutput:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->postMessage(ILjava/lang/String;)V

    .line 184
    .end local v0    # "data":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 178
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 181
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-virtual {v2, v1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->printErrorMessage(Lorg/json/JSONException;)V

    goto :goto_1
.end method
