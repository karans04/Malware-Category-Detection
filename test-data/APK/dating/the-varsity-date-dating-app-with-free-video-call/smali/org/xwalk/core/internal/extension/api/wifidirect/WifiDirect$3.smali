.class Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;
.super Ljava/lang/Object;
.source "WifiDirect.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


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
    .line 154
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iput-object p2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->val$jsonOutput:Lorg/json/JSONObject;

    iput p3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->val$instanceID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 4
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->val$jsonOutput:Lorg/json/JSONObject;

    const-string v2, "data"

    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-static {v3, p1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$300(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iget v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->val$instanceID:I

    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->val$jsonOutput:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->postMessage(ILjava/lang/String;)V

    .line 163
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->printErrorMessage(Lorg/json/JSONException;)V

    goto :goto_0
.end method
