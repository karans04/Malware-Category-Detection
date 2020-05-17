.class Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;
.super Ljava/lang/Object;
.source "WifiDirect.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->disconnect(ILorg/json/JSONObject;)V
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
.method constructor <init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;ILorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iput p2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->val$instanceID:I

    iput-object p3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->val$jsonOutput:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$200(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-static {v1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$000(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iget v3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->val$instanceID:I

    iget-object v4, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;->val$jsonOutput:Lorg/json/JSONObject;

    invoke-static {v2, v3, v4}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$100(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 138
    :cond_0
    return-void
.end method
