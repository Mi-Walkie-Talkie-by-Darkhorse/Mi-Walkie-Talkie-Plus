.class Lcom/ifengyu/intercom/lite/f/b$a;
.super Landroidx/room/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/f/b;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/f/b;Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getConfigId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getConfigId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendFreq()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic a(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/f/b$a;->a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `channel` (`id`,`config_id`,`channel_seq`,`receive_freq`,`send_freq`,`receive_tone_type`,`receive_tone_value`,`send_tone_type`,`send_tone_value`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
