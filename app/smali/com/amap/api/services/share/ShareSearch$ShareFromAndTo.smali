.class public Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/share/ShareSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareFromAndTo"
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u8d77\u70b9"

    iput-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->c:Ljava/lang/String;

    const-string v0, "\u7ec8\u70b9"

    iput-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    iput-object p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getFromName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getToName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setFromName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->c:Ljava/lang/String;

    return-void
.end method

.method public setToName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->d:Ljava/lang/String;

    return-void
.end method
