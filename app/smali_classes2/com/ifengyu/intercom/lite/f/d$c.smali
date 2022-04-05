.class Lcom/ifengyu/intercom/lite/f/d$c;
.super Landroidx/room/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/f/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/f/d;Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->bindString(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->bindLong(IJ)V

    :goto_3
    return-void
.end method

.method public bridge synthetic a(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/f/d$c;->a(La/g/a/f;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `config_file` SET `id` = ?,`name` = ?,`from` = ?,`create_time` = ?,`update_time` = ? WHERE `id` = ?"

    return-object v0
.end method
