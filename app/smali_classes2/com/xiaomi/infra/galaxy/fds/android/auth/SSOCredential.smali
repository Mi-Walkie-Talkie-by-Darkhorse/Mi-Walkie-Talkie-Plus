.class public Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;
.super Ljava/lang/Object;
.source "SSOCredential.java"

# interfaces
.implements Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field private final HEADER_VALUE:Ljava/lang/String;

.field private final SERVICE_TOKEN_PARAM:Ljava/lang/String;

.field private final appId:Ljava/lang/String;

.field private final serviceToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSO"

    .line 2
    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->HEADER_VALUE:Ljava/lang/String;

    const-string v0, "serviceToken"

    .line 3
    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->SERVICE_TOKEN_PARAM:Ljava/lang/String;

    const-string v0, "APP_ID"

    .line 4
    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->APP_ID:Ljava/lang/String;

    const-string v0, "Service token"

    .line 5
    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 7
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->serviceToken:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->appId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSO"

    .line 10
    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->HEADER_VALUE:Ljava/lang/String;

    const-string v0, "serviceToken"

    .line 11
    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->SERVICE_TOKEN_PARAM:Ljava/lang/String;

    const-string v0, "APP_ID"

    .line 12
    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->APP_ID:Ljava/lang/String;

    const-string v0, "Service token"

    .line 13
    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "App id"

    .line 15
    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 17
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->serviceToken:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->appId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2

    const-string v0, "Authorization"

    const-string v1, "SSO"

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3f

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/16 v2, 0x26

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "serviceToken"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->serviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->appId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "APP_ID"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
