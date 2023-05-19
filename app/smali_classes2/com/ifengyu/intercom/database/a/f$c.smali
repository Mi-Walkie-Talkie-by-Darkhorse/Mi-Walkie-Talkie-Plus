.class Lcom/ifengyu/intercom/database/a/f$c;
.super Landroidx/room/b0;
.source "DeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/database/a/f;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b0<",
        "Lcom/ifengyu/intercom/models/DeviceModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/database/a/f;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/b0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `device` SET `id` = ?,`name` = ?,`address` = ?,`device_id` = ?,`device_type` = ?,`device_color` = ?,`version_soft` = ?,`version_hw` = ?,`version_voice` = ?,`connected` = ?,`create_time` = ?,`update_time` = ?,`enabled` = ?,`token` = ?,`agreed_protocol_version` = ? WHERE `id` = ?"

    return-object v0
.end method

.method public bridge synthetic g(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/database/a/f$c;->j(La/g/a/f;Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public j(La/g/a/f;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 7
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 8
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 10
    :goto_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 11
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x5

    .line 13
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x6

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceColor()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x7

    .line 15
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionSoft()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionHw()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x9

    .line 17
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionVoice()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 18
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->isConnected()Z

    move-result v0

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 19
    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    const/16 v0, 0xb

    .line 20
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0xc

    .line 21
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 22
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->isEnabled()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 23
    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    .line 24
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_4

    .line 25
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_4

    .line 26
    :cond_4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_4
    const/16 v0, 0xf

    .line 27
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getAgreedProtocolVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 28
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_5

    .line 29
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_5

    .line 30
    :cond_5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    :goto_5
    return-void
.end method
