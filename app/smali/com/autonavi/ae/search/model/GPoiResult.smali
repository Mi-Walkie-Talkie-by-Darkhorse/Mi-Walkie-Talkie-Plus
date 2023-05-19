.class public Lcom/autonavi/ae/search/model/GPoiResult;
.super Ljava/lang/Object;
.source "GPoiResult.java"


# static fields
.field private static TAG:Ljava/lang/String; = "wmh"


# instance fields
.field private pPoi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/ae/search/model/GPoiBase;",
            ">;"
        }
    .end annotation
.end field

.field private sNumberOfItemGet:I

.field private uFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->pPoi:Ljava/util/List;

    .line 3
    iput p1, p0, Lcom/autonavi/ae/search/model/GPoiResult;->sNumberOfItemGet:I

    .line 4
    iput p2, p0, Lcom/autonavi/ae/search/model/GPoiResult;->uFlag:I

    .line 5
    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/autonavi/ae/search/model/GPoiResult;->TAG:Ljava/lang/String;

    const-string p2, "new GPoiResult(int sNumberOfTotalItem, int sIndex, int sNumberOfItemGet,int uFlag)"

    invoke-static {p1, p2}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addPoiObj(Lcom/autonavi/ae/search/model/GPoiBase;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->pPoi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getNumberOfItemGet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->sNumberOfItemGet:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/ae/search/model/GPoiBase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiResult;->pPoi:Ljava/util/List;

    return-object v0
.end method
