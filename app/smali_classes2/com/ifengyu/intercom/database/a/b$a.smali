.class Lcom/ifengyu/intercom/database/a/b$a;
.super Landroidx/room/c0;
.source "ChannelDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/database/a/b;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c0<",
        "Lcom/ifengyu/intercom/models/ChannelModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/database/a/b;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `channel` (`id`,`config_id`,`channel_seq`,`receive_freq`,`send_freq`,`receive_tone_type`,`receive_tone_value`,`send_tone_type`,`send_tone_value`,`channel_type`,`channel_name`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/database/a/b$a;->k(La/g/a/f;Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method public k(La/g/a/f;Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getConfigId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getConfigId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    :goto_1
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendFreq()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x6

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/4 v0, 0x7

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0x9

    .line 13
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    const/16 v0, 0xa

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 15
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_2

    .line 16
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
