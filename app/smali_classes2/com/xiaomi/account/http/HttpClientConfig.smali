.class public Lcom/xiaomi/account/http/HttpClientConfig;
.super Ljava/lang/Object;
.source "HttpClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/http/HttpClientConfig$Builder;
    }
.end annotation


# static fields
.field private static volatile defaultConnectTimeoutMs:J

.field private static volatile defaultWaitCellularTimeoutMs:J


# instance fields
.field public final connectTimeoutMs:J

.field public final netWorkSlotId:I

.field public final network:Landroid/net/Network;

.field public final readTimeoutMs:J

.field public final waitCellularTimeoutMs:J

.field public final writeTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultConnectTimeoutMs:J

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultWaitCellularTimeoutMs:J

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/account/http/HttpClientConfig$Builder;)V
    .locals 4

    const-wide/16 v2, 0x3a98

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->network:Landroid/net/Network;

    iput-object v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->network:Landroid/net/Network;

    iget v0, p1, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->netWorkSlotId:I

    iput v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->netWorkSlotId:I

    sget-wide v0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultConnectTimeoutMs:J

    iput-wide v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->connectTimeoutMs:J

    sget-wide v0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultWaitCellularTimeoutMs:J

    iput-wide v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->waitCellularTimeoutMs:J

    iput-wide v2, p0, Lcom/xiaomi/account/http/HttpClientConfig;->readTimeoutMs:J

    iput-wide v2, p0, Lcom/xiaomi/account/http/HttpClientConfig;->writeTimeoutMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/http/HttpClientConfig$Builder;Lcom/xiaomi/account/http/HttpClientConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/http/HttpClientConfig;-><init>(Lcom/xiaomi/account/http/HttpClientConfig$Builder;)V

    return-void
.end method

.method public static setDefaultConnectTimeoutMs(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultConnectTimeoutMs:J

    return-void
.end method

.method public static setDefaultWaitCellularTimeoutMs(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultWaitCellularTimeoutMs:J

    return-void
.end method
