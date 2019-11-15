.class Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
.super Ljava/lang/Object;
.source "XiaomiOAuthResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Success"
.end annotation


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final code:Ljava/lang/String;

.field public final expiresIn:Ljava/lang/String;

.field public final macAlgorithm:Ljava/lang/String;

.field public final macKey:Ljava/lang/String;

.field public final scopes:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->expiresIn:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->scopes:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->state:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->tokenType:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macAlgorithm:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->code:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    move-result-object v0

    return-object v0
.end method

.method private static parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
    .locals 9

    const-string v0, "access_token"

    const-string v1, "extra_access_token"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "mac_key"

    const-string v2, "extra_mac_key"

    invoke-static {p0, v0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "mac_algorithm"

    const-string v2, "extra_mac_algorithm"

    invoke-static {p0, v0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "expires_in"

    const-string v2, "extra_expires_in"

    invoke-static {p0, v0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$100(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "scope"

    const-string v3, "extra_scope"

    invoke-static {p0, v0, v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "state"

    const-string v4, "extra_state"

    invoke-static {p0, v0, v4}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "token_type"

    const-string v5, "extra_token_type"

    invoke-static {p0, v0, v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "code"

    const-string v8, "extra_code"

    invoke-static {p0, v0, v8}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->expiresIn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->scopes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",macKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",macAlogorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
