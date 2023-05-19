.class Lcom/ifengyu/intercom/database/a/j$c;
.super Landroidx/room/b0;
.source "ShareLocationDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/database/a/j;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b0<",
        "Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/database/a/j;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/b0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `share_location` SET `id` = ?,`user_id` = ?,`name` = ?,`img_url` = ?,`longitude` = ?,`latitude` = ?,`altitude` = ?,`time` = ?,`freq` = ?,`rx_css` = ?,`from_dev_type` = ? WHERE `id` = ?"

    return-object v0
.end method

.method public bridge synthetic g(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/database/a/j$c;->j(La/g/a/f;Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;)V

    return-void
.end method

.method public j(La/g/a/f;Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    :goto_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getUserId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x5

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getLongitude()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getLatitude()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x7

    .line 13
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getAltitude()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getTime()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x9

    .line 15
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getFreq()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0xa

    .line 16
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getRxCss()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0xb

    .line 17
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getFromDevType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 18
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_3

    .line 19
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    :goto_3
    return-void
.end method
