.class public Lcom/ifengyu/intercom/ui/map/MapDataProvider;
.super Ljava/lang/Object;
.source "MapDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;,
        Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;,
        Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "[",
            "Lcom/ifengyu/intercom/ui/map/TilePoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:I

    return p1
.end method

.method public static a(I)Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->b:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mitalki/map/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/ifengyu/intercom/ui/map/d/a/h;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png.tile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mitalki/map/offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/ifengyu/intercom/ui/map/d/a/h;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/d/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            "Ljava/util/ArrayList",
            "<[",
            "Lcom/ifengyu/intercom/ui/map/TilePoint;",
            ">;",
            "Lcom/ifengyu/intercom/greendao/dao/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    invoke-direct {v2, p0, p1, p3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V
    .locals 7

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    if-eqz p5, :cond_1

    aget-object v1, v0, v1

    aget-object v2, v0, v3

    aget-object v0, v0, v4

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v2, v0, v1

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x800

    new-array v2, v2, [B

    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MapDataProvider"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:I

    return v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:I

    return v0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V
    .locals 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const-string v0, "MapDataProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v3, :cond_1

    const-string v0, "MapDataProvider"

    const-string v3, "\u5df2\u5728\u4e0b\u8f7d\u961f\u5217\uff0c\uff0c\u6682\u505c\u4e0b\u8f7d"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p2, v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    const/16 v2, 0xc

    if-lt v0, v2, :cond_5

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(Lcom/ifengyu/intercom/greendao/bean/a;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(Lcom/ifengyu/intercom/greendao/bean/a;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V

    goto :goto_2

    :cond_6
    move v1, v3

    goto/16 :goto_1
.end method

.method public a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 6

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-int/lit8 v0, p1, 0x2d

    int-to-double v0, v0

    div-double v2, v0, v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    div-double/2addr v2, v4

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v0, "G"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "M"

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:Ljava/util/List;

    return-object v0
.end method

.method public b(Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
