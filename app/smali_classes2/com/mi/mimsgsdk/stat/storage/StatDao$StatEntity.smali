.class public Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;
.super Ljava/lang/Object;
.source "StatDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/stat/storage/StatDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatEntity"
.end annotation


# instance fields
.field private id:I

.field private jsonData:Ljava/lang/String;

.field private lastSendTime:J

.field private retryTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->id:I

    return p1
.end method

.method static synthetic access$102(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->jsonData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->retryTimes:I

    return p1
.end method

.method static synthetic access$302(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->lastSendTime:J

    return-wide p1
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->id:I

    return v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->jsonData:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSendTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->lastSendTime:J

    return-wide v0
.end method

.method public getRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->retryTimes:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->id:I

    return-void
.end method

.method public setJsonData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->jsonData:Ljava/lang/String;

    return-void
.end method

.method public setLastSendTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->lastSendTime:J

    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->retryTimes:I

    return-void
.end method
