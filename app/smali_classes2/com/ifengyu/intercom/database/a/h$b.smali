.class Lcom/ifengyu/intercom/database/a/h$b;
.super Landroidx/room/b0;
.source "NetDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/database/a/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b0<",
        "Lcom/ifengyu/intercom/models/NetDeviceModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/database/a/h;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/b0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `net_device` SET `id` = ?,`sn` = ?,`user_id` = ?,`account` = ?,`nickname` = ?,`avatar` = ?,`user_type` = ?,`online` = ?,`battery` = ?,`bindTime` = ?,`imei` = ?,`iccid` = ?,`color` = ?,`hw_version` = ?,`sw_version` = ?,`fw_version` = ? WHERE `id` = ?"

    return-object v0
.end method

.method public bridge synthetic g(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/models/NetDeviceModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/database/a/h$b;->j(La/g/a/f;Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    return-void
.end method

.method public j(La/g/a/f;Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 8
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAccount()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_4
    const/4 v0, 0x7

    .line 17
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getUserType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x8

    .line 18
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getOnline()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x9

    .line 19
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getBattery()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getBindTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 21
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getImei()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 24
    :goto_5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getIccid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    .line 25
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_6

    .line 26
    :cond_6
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getIccid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_6
    const/16 v0, 0xd

    .line 27
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getColor()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 28
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getHwVersion()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_7

    .line 29
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_7

    .line 30
    :cond_7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getHwVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 31
    :goto_7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSwVersion()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_8

    .line 32
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_8

    .line 33
    :cond_8
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSwVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 34
    :goto_8
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getFwVersion()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_9

    .line 35
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_9

    .line 36
    :cond_9
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getFwVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 37
    :goto_9
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_a

    .line 38
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_a

    .line 39
    :cond_a
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    :goto_a
    return-void
.end method
