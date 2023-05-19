.class public abstract Lcom/shanlitech/et/web/b/c/f;
.super Ljava/lang/Object;
.source "LabelMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreator()Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/f;->getCreatorId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCreatorId()J
.end method

.method public abstract getLabelLocation()Lcom/shanlitech/et/web/tob/api/model/LabelLocation;
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x190

    const/16 v1, 0x12c

    const/16 v2, 0x12

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/shanlitech/et/web/b/c/f;->getThumbnailUrl(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl(III)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/f;->getLabelLocation()Lcom/shanlitech/et/web/tob/api/model/LabelLocation;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0}, Lcom/shanlitech/et/web/tob/api/model/LabelLocation;->getLng()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {v0}, Lcom/shanlitech/et/web/tob/api/model/LabelLocation;->getLat()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    invoke-virtual {v0}, Lcom/shanlitech/et/web/tob/api/model/LabelLocation;->getLng()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    invoke-virtual {v0}, Lcom/shanlitech/et/web/tob/api/model/LabelLocation;->getLat()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v1, p2

    const-string p1, "https://api.map.baidu.com/staticimage?width=%s&height=%s&center=%s,%s&zoom=%s&markers=%s,%s&coordtype=gcj02ll"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
