.class public Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/PushConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushConfigurationBuilder"
.end annotation


# instance fields
.field private mGeoEnable:Z

.field private mOpenCOSPush:Z

.field private mOpenFCMPush:Z

.field private mOpenFTOSPush:Z

.field private mOpenHmsPush:Z

.field private mRegion:Lcom/xiaomi/push/service/module/PushChannelRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;)Lcom/xiaomi/push/service/module/PushChannelRegion;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mRegion:Lcom/xiaomi/push/service/module/PushChannelRegion;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenHmsPush:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenFCMPush:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenCOSPush:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenFTOSPush:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/mipush/sdk/PushConfiguration;
    .locals 2

    new-instance v0, Lcom/xiaomi/mipush/sdk/PushConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mipush/sdk/PushConfiguration;-><init>(Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;Lcom/xiaomi/mipush/sdk/ah;)V

    return-object v0
.end method

.method public openCOSPush(Z)Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenCOSPush:Z

    return-object p0
.end method

.method public openFCMPush(Z)Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenFCMPush:Z

    return-object p0
.end method

.method public openFTOSPush(Z)Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenFTOSPush:Z

    return-object p0
.end method

.method public openHmsPush(Z)Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mOpenHmsPush:Z

    return-object p0
.end method

.method public region(Lcom/xiaomi/push/service/module/PushChannelRegion;)Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration$PushConfigurationBuilder;->mRegion:Lcom/xiaomi/push/service/module/PushChannelRegion;

    return-object p0
.end method
