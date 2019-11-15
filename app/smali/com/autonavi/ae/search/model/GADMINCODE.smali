.class public Lcom/autonavi/ae/search/model/GADMINCODE;
.super Ljava/lang/Object;
.source "GADMINCODE.java"


# instance fields
.field private euRegionCode:I

.field private nAdCode:I

.field private nCityAdCode:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->euRegionCode:I

    iput p2, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->nCityAdCode:I

    iput p3, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->nAdCode:I

    return-void
.end method


# virtual methods
.method public getAdCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->nAdCode:I

    return v0
.end method

.method public getCityAdCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->nCityAdCode:I

    return v0
.end method

.method public getRegionCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->euRegionCode:I

    return v0
.end method

.method public setAdCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->nAdCode:I

    return-void
.end method

.method public setCityAdCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->nCityAdCode:I

    return-void
.end method

.method public setRegionCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/search/model/GADMINCODE;->euRegionCode:I

    return-void
.end method
