.class public Lcom/autonavi/ae/search/model/GPoiResult;
.super Ljava/lang/Object;
.source "GPoiResult.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private pPoi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/search/model/GPoiBase;",
            ">;"
        }
    .end annotation
.end field

.field private sNumberOfItemGet:I

.field private uFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "wmh"

    sput-object v0, Lcom/autonavi/ae/search/model/GPoiResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->pPoi:Ljava/util/List;

    iput p1, p0, Lcom/autonavi/ae/search/model/GPoiResult;->sNumberOfItemGet:I

    iput p2, p0, Lcom/autonavi/ae/search/model/GPoiResult;->uFlag:I

    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/ae/search/model/GPoiResult;->TAG:Ljava/lang/String;

    const-string v1, "new GPoiResult(int sNumberOfTotalItem, int sIndex, int sNumberOfItemGet,int uFlag)"

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addPoiObj(Lcom/autonavi/ae/search/model/GPoiBase;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->pPoi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getNumberOfItemGet()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->sNumberOfItemGet:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/search/model/GPoiBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->pPoi:Ljava/util/List;

    return-object v0
.end method
