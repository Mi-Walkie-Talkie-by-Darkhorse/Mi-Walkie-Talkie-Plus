.class Lcom/ifengyu/intercom/database/AppDatabase$b;
.super Landroidx/room/v0/a;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/database/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/v0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/b;)V
    .locals 1
    .param p1    # La/g/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "UPDATE `device` SET `device_type` = 9 WHERE `device_type` = 36611"

    .line 1
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `net_device` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `sn` TEXT, `user_id` INTEGER NOT NULL, `account` TEXT, `nickname` TEXT, `avatar` TEXT, `user_type` INTEGER NOT NULL, `online` INTEGER NOT NULL, `battery` INTEGER NOT NULL, `bindTime` INTEGER NOT NULL, `imei` TEXT, `iccid` TEXT, `color` INTEGER NOT NULL, `hw_version` TEXT, `sw_version` TEXT, FOREIGN KEY(`sn`) REFERENCES `device`(`device_id`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 2
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_net_device_sn` ON `net_device` (`sn`)"

    .line 3
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `dolphin_channel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `no` INTEGER NOT NULL, `type` INTEGER NOT NULL, `name` TEXT, `freq` INTEGER NOT NULL, `tone` INTEGER NOT NULL, `freq2` INTEGER NOT NULL, `tone2` INTEGER NOT NULL)"

    .line 4
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_dolphin_channel_id` ON `dolphin_channel` (`id`)"

    .line 5
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `seal_shark_channel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `no` INTEGER NOT NULL, `type` INTEGER NOT NULL, `tx_power` INTEGER NOT NULL, `rx_freq` INTEGER NOT NULL, `tx_freq` INTEGER NOT NULL, `name` TEXT, `sq` INTEGER NOT NULL, `vox` INTEGER NOT NULL, `rx_css` INTEGER NOT NULL, `tx_css` INTEGER NOT NULL, `elim` INTEGER NOT NULL, `band` INTEGER NOT NULL, `polite` INTEGER NOT NULL, `is_st_channel` INTEGER NOT NULL)"

    .line 6
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_seal_shark_channel_id` ON `seal_shark_channel` (`id`)"

    .line 7
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `share_location` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `user_id` INTEGER NOT NULL, `name` TEXT, `img_url` TEXT, `longitude` INTEGER NOT NULL, `latitude` INTEGER NOT NULL, `altitude` INTEGER NOT NULL, `time` INTEGER NOT NULL, `freq` INTEGER NOT NULL, `rx_css` INTEGER NOT NULL, `from_dev_type` INTEGER NOT NULL)"

    .line 8
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_share_location_user_id` ON `share_location` (`user_id`)"

    .line 9
    invoke-interface {p1, v0}, La/g/a/b;->p(Ljava/lang/String;)V

    return-void
.end method
