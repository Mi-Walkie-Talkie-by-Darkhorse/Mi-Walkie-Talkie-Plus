.class Lcom/ifengyu/intercom/lite/f/f$a;
.super Landroidx/room/c;
.source "DeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/f/f;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/f/f;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/DeviceModel;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->bindString(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->bindString(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x5

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 15
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceColor()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 16
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionSoft()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 17
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionHw()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionVoice()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    .line 19
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isConnected()Z

    move-result v0

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 20
    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 21
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 22
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    .line 23
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isEnabled()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 24
    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    .line 25
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_4

    .line 26
    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_4

    .line 27
    :cond_4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La/g/a/d;->bindString(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic a(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/f/f$a;->a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `device` (`id`,`name`,`address`,`device_id`,`device_type`,`device_color`,`version_soft`,`version_hw`,`version_voice`,`connected`,`create_time`,`update_time`,`enabled`,`token`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
