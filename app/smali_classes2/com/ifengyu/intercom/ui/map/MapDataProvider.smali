.class public Lcom/ifengyu/intercom/ui/map/MapDataProvider;
.super Ljava/lang/Object;
.source "MapDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;,
        Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;,
        Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/ifengyu/intercom/ui/map/MapDataProvider;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "[",
            "Lcom/ifengyu/intercom/ui/map/TilePoint;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:I

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/map/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p4}, Lcom/ifengyu/intercom/ui/map/f/a/h;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".png.tile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/map/offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p5}, Lcom/ifengyu/intercom/ui/map/f/a/h;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/f/a/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/ifengyu/intercom/ui/map/TilePoint;",
            ">;",
            "Lcom/ifengyu/intercom/greendao/dao/b;",
            ")V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-direct {v2, p0, p1, p3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V
    .locals 10

    const-string v0, "_"

    .line 6
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 7
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p5, :cond_0

    aget-object p1, p3, v2

    aget-object p5, p3, v1

    aget-object p3, p3, v3

    invoke-direct {p0, p1, p5, p3, p2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    aget-object v6, p3, v2

    aget-object v7, p3, v1

    aget-object v8, p3, v3

    move-object v4, p0

    move-object v5, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v4 .. v9}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 10
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x800

    new-array p3, p3, [B

    .line 13
    :goto_1
    invoke-virtual {p1, p3}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_3

    .line 14
    invoke-virtual {p2, p3, v3, p4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 16
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 17
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MapDataProvider"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 25
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 29
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:I

    return p0
.end method

.method public static b(I)Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->b:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object p0
.end method

.method public static b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;
    .locals 2

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    if-nez v0, :cond_1

    .line 7
    const-class v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->f:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e:I

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    mul-int/lit8 p1, p1, 0x2d

    int-to-double v0, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    div-double/2addr v0, v2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "G"

    goto :goto_1

    :cond_2
    const-string p1, "M"

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V
    .locals 5

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 34
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MapDataProvider"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_2

    const-string p1, "\u5df2\u5728\u4e0b\u8f7d\u961f\u5217\uff0c\uff0c\u6682\u505c\u4e0b\u8f7d"

    .line 35
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/greendao/bean/a;

    .line 37
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    .line 39
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    .line 41
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    return-void

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    .line 46
    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 48
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    goto :goto_2

    .line 49
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(Lcom/ifengyu/intercom/greendao/bean/a;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    const/16 v1, 0xc

    if-lt v0, v1, :cond_6

    .line 54
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(Lcom/ifengyu/intercom/greendao/bean/a;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 55
    :cond_6
    invoke-direct {p0, p1, v2, p2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 0

    .line 58
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
