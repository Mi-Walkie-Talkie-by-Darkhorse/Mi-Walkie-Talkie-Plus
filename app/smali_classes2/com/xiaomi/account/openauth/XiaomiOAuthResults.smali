.class public Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
.super Ljava/lang/Object;
.source "XiaomiOAuthResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;,
        Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XiaomiOAuthResults"


# instance fields
.field private final contentBundle:Landroid/os/Bundle;

.field private final errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

.field private final successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    .line 7
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "XiaomiOAuthResults"

    const-string p1, "error, return 0 instead:"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1
    aget-object p1, v1, v2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "extra_error_code"

    const-string v1, "error"

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->access$300(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;-><init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->access$400(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;-><init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;)V

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->accessToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorCode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->expiresIn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macAlgorithm:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMacKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getScopes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->scopes:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->state:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->tokenType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not be here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
