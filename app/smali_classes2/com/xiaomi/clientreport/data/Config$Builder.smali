.class public Lcom/xiaomi/clientreport/data/Config$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/clientreport/data/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAESKey:Ljava/lang/String;

.field private mEventEncrypted:I

.field private mEventUploadFrequency:J

.field private mEventUploadSwitchOpen:I

.field private mMaxFileLength:J

.field private mPerfUploadFrequency:J

.field private mPerfUploadSwitchOpen:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventEncrypted:I

    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadSwitchOpen:I

    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadSwitchOpen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mAESKey:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mMaxFileLength:J

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadFrequency:J

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadFrequency:J

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/clientreport/data/Config$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventEncrypted:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/clientreport/data/Config$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mAESKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/clientreport/data/Config$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mMaxFileLength:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/xiaomi/clientreport/data/Config$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadFrequency:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/xiaomi/clientreport/data/Config$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadFrequency:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/xiaomi/clientreport/data/Config$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadSwitchOpen:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/clientreport/data/Config$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadSwitchOpen:I

    return p0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;
    .locals 2

    new-instance v0, Lcom/xiaomi/clientreport/data/Config;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/xiaomi/clientreport/data/Config;-><init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config$Builder;Lcom/xiaomi/clientreport/data/b;)V

    return-object v0
.end method

.method public setAESKey(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mAESKey:Ljava/lang/String;

    return-object p0
.end method

.method public setEventEncrypted(Z)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventEncrypted:I

    return-object p0
.end method

.method public setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadFrequency:J

    return-object p0
.end method

.method public setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadSwitchOpen:I

    return-object p0
.end method

.method public setMaxFileLength(J)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mMaxFileLength:J

    return-object p0
.end method

.method public setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadFrequency:J

    return-object p0
.end method

.method public setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadSwitchOpen:I

    return-object p0
.end method
