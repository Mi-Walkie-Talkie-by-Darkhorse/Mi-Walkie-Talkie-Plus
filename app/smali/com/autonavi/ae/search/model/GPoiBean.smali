.class public Lcom/autonavi/ae/search/model/GPoiBean;
.super Lcom/autonavi/ae/search/model/GPoiBase;
.source "GPoiBean.java"


# instance fields
.field protected adcode:I

.field protected czAddr:Ljava/lang/String;

.field protected czTel:Ljava/lang/String;

.field protected czTownName:Ljava/lang/String;

.field protected nCatCode:I

.field protected nMatchPos:I

.field protected naviPoint:Landroid/graphics/PointF;

.field protected stLocalPoint:Landroid/graphics/PointF;

.field protected stNaviPoint:Landroid/graphics/PointF;

.field protected stPoiID:Ljava/lang/String;

.field protected strCatName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/ae/search/model/GPoiBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->nCatCode:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/autonavi/ae/search/model/GPoiBean;->adcode:I

    .line 4
    iput v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->nMatchPos:I

    .line 5
    iput-object p1, p0, Lcom/autonavi/ae/search/model/GPoiBean;->stPoiID:Ljava/lang/String;

    .line 6
    iput p6, p0, Lcom/autonavi/ae/search/model/GPoiBean;->nCatCode:I

    .line 7
    iput-object p2, p0, Lcom/autonavi/ae/search/model/GPoiBase;->czName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/autonavi/ae/search/model/GPoiBean;->czAddr:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/autonavi/ae/search/model/GPoiBean;->czTel:Ljava/lang/String;

    .line 10
    iput p5, p0, Lcom/autonavi/ae/search/model/GPoiBean;->adcode:I

    .line 11
    iput p10, p0, Lcom/autonavi/ae/search/model/GPoiBean;->nMatchPos:I

    .line 12
    iput-object p7, p0, Lcom/autonavi/ae/search/model/GPoiBean;->strCatName:Ljava/lang/String;

    .line 13
    iput-object p9, p0, Lcom/autonavi/ae/search/model/GPoiBean;->naviPoint:Landroid/graphics/PointF;

    .line 14
    iput-object p8, p0, Lcom/autonavi/ae/search/model/GPoiBean;->stLocalPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getAdcode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->adcode:I

    return v0
.end method

.method public getAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->czAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getCatCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->nCatCode:I

    return v0
.end method

.method public getCatName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->strCatName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->stLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMatchPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->nMatchPos:I

    return v0
.end method

.method public getNaviPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->naviPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPoiID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->stPoiID:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiBean;->czTel:Ljava/lang/String;

    return-object v0
.end method
