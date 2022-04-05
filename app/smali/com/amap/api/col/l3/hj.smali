.class public final Lcom/amap/api/col/l3/hj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/gy;


# static fields
.field private static a:Lcom/amap/api/col/l3/hj;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/col/l3/hj;
    .locals 2

    const-class v0, Lcom/amap/api/col/l3/hj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/hj;->a:Lcom/amap/api/col/l3/hj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3/hj;

    invoke-direct {v1}, Lcom/amap/api/col/l3/hj;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3/hj;->a:Lcom/amap/api/col/l3/hj;

    :cond_0
    sget-object v1, Lcom/amap/api/col/l3/hj;->a:Lcom/amap/api/col/l3/hj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sname  varchar(20), fname varchar(100),md varchar(20),version varchar(20),dversion varchar(20),status varchar(20),reservedfield varchar(20));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DynamicFileDBCreator"

    const-string v1, "onCreate"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "dafile.db"

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
