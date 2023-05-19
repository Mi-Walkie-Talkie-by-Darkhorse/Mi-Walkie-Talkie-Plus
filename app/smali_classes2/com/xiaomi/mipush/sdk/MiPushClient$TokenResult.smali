.class public Lcom/xiaomi/mipush/sdk/MiPushClient$TokenResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiPushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenResult"
.end annotation


# instance fields
.field private resultCode:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$TokenResult;->token:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$TokenResult;->resultCode:J

    return-void
.end method


# virtual methods
.method public getResultCode()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$TokenResult;->resultCode:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$TokenResult;->token:Ljava/lang/String;

    return-object v0
.end method

.method protected setResultCode(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$TokenResult;->resultCode:J

    return-void
.end method

.method protected setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$TokenResult;->token:Ljava/lang/String;

    return-void
.end method
