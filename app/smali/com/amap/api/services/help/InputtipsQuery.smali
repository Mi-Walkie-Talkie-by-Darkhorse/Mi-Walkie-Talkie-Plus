.class public Lcom/amap/api/services/help/InputtipsQuery;
.super Ljava/lang/Object;
.source "InputtipsQuery.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/services/core/LatLonPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/services/help/InputtipsQuery;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/services/help/InputtipsQuery;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->c:Z

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->e:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCityLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/services/help/InputtipsQuery;->c:Z

    return-void
.end method

.method public setLocation(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/help/InputtipsQuery;->e:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/help/InputtipsQuery;->d:Ljava/lang/String;

    return-void
.end method
