.class Lcom/xiaomi/mipush/sdk/MiPushClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$appID:Ljava/lang/String;

.field final synthetic val$appToken:Ljava/lang/String;

.field final synthetic val$iCallbackResult:Lcom/xiaomi/mipush/sdk/MiPushClient$ICallbackResult;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$ICallbackResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appID:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$alias:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$iCallbackResult:Lcom/xiaomi/mipush/sdk/MiPushClient$ICallbackResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appID:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$alias:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$iCallbackResult:Lcom/xiaomi/mipush/sdk/MiPushClient$ICallbackResult;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$ICallbackResult;)V

    return-void
.end method
