.class Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->callOpenApi(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$appId:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$macAlgorithm:Ljava/lang/String;

.field final synthetic val$macKey:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$path:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$appId:J

    iput-object p6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$accessToken:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$macKey:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$macAlgorithm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$path:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$appId:J

    iget-object v4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$accessToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$macKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$macAlgorithm:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/account/auth/AuthorizeApi;->doHttpGet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
