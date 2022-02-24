.class public Lcom/xiaomi/mipush/sdk/MiPushClient$CodeResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiPushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeResult"
.end annotation


# instance fields
.field private resultCode:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$CodeResult;->resultCode:J

    return-void
.end method


# virtual methods
.method public getResultCode()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$CodeResult;->resultCode:J

    return-wide v0
.end method

.method protected setResultCode(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$CodeResult;->resultCode:J

    return-void
.end method
