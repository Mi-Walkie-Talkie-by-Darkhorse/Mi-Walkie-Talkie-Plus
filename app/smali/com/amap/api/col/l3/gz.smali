.class public final Lcom/amap/api/col/l3/gz;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/col/l3/gy;",
            ">;",
            "Lcom/amap/api/col/l3/gy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/col/l3/hc;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/amap/api/col/l3/gy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3/gz;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/gy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/hc;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2}, Lcom/amap/api/col/l3/gy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/amap/api/col/l3/gy;->c()I

    move-result v2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/amap/api/col/l3/hc;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/amap/api/col/l3/gy;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/gz;->a:Lcom/amap/api/col/l3/hc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-object p2, p0, Lcom/amap/api/col/l3/gz;->c:Lcom/amap/api/col/l3/gy;

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/amap/api/col/l3/ha;)Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1}, Lcom/amap/api/col/l3/ha;->b()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v4, Lcom/amap/api/col/l3/hb;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Lcom/amap/api/col/l3/hb;

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->b()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->a:Lcom/amap/api/col/l3/hc;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "dbs"

    const-string v2, "gwd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->a:Lcom/amap/api/col/l3/hc;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-nez p1, :cond_0

    const-string p1, "dbs"

    const-string v1, "grd"

    invoke-static {v0, p1, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public static declared-synchronized a(Ljava/lang/Class;)Lcom/amap/api/col/l3/gy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/col/l3/gy;",
            ">;)",
            "Lcom/amap/api/col/l3/gy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-class v0, Lcom/amap/api/col/l3/gz;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/gz;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amap/api/col/l3/gz;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/amap/api/col/l3/gz;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3/gy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/col/l3/ha;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amap/api/col/l3/ha;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/amap/api/col/l3/ha;->b()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v4, Lcom/amap/api/col/l3/hb;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Lcom/amap/api/col/l3/hb;

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->b()I

    move-result v5

    invoke-interface {v4}, Lcom/amap/api/col/l3/hb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/amap/api/col/l3/ha;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/col/l3/ha;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/amap/api/col/l3/ha;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\'"

    const-string v5, " = \'"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v6, " and "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/Class;)Lcom/amap/api/col/l3/ha;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/gz;->a(Lcom/amap/api/col/l3/ha;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Lcom/amap/api/col/l3/ha;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Class;)Lcom/amap/api/col/l3/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amap/api/col/l3/ha;"
        }
    .end annotation

    const-class v0, Lcom/amap/api/col/l3/ha;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    check-cast p0, Lcom/amap/api/col/l3/ha;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->c:Lcom/amap/api/col/l3/gy;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/Class;)Lcom/amap/api/col/l3/ha;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/gz;->a(Lcom/amap/api/col/l3/ha;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3/gz;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v3, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-nez v3, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_b

    :cond_1
    const/4 v11, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez p1, :cond_4

    :try_start_2
    iget-object p2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v11, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz p1, :cond_2

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-nez p3, :cond_2

    :try_start_4
    const-string p2, "dbs"

    const-string v2, "sld"

    invoke-static {p1, p2, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :cond_2
    :goto_0
    :try_start_5
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v11, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-nez p3, :cond_3

    :try_start_6
    const-string p2, "dbs"

    const-string p3, "sld"

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    return-object v1

    :cond_4
    :goto_2
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1, p2, v2}, Lcom/amap/api/col/l3/gz;->a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/col/l3/ha;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    if-nez p3, :cond_6

    :try_start_9
    const-string p2, "dbs"

    const-string v2, "sld"

    invoke-static {p1, p2, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    :cond_6
    :goto_3
    :try_start_a
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v11, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_a

    :catchall_3
    move-exception p1

    if-nez p3, :cond_b

    :try_start_b
    const-string p2, "dbs"

    const-string p3, "sld"

    :goto_4
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_a

    :catchall_4
    move-exception p2

    goto :goto_5

    :catchall_5
    move-exception p2

    move-object p1, v11

    :goto_5
    if-nez p3, :cond_9

    :try_start_c
    const-string v2, "dbs"

    const-string v3, "sld"

    invoke-static {p2, v2, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p2

    if-eqz p1, :cond_7

    :try_start_d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p1

    if-nez p3, :cond_7

    :try_start_e
    const-string v1, "dbs"

    const-string v2, "sld"

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :cond_7
    :goto_6
    :try_start_f
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v11, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception p1

    if-nez p3, :cond_8

    :try_start_10
    const-string p3, "dbs"

    const-string v1, "sld"

    invoke-static {p1, p3, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_7
    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :cond_9
    :goto_8
    if-eqz p1, :cond_a

    :try_start_11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception p1

    if-nez p3, :cond_a

    :try_start_12
    const-string p2, "dbs"

    const-string v2, "sld"

    invoke-static {p1, p2, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :cond_a
    :goto_9
    :try_start_13
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v11, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception p1

    if-nez p3, :cond_b

    :try_start_14
    const-string p2, "dbs"

    const-string p3, "sld"

    goto :goto_4

    :cond_b
    :goto_a
    monitor-exit v0

    return-object v1

    :cond_c
    :goto_b
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    return-object v1

    :catchall_b
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->c:Lcom/amap/api/col/l3/gy;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/gz;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, p1}, Lcom/amap/api/col/l3/gz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    iput-object v2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, "dbs"

    const-string v3, "itd"

    invoke-static {p1, v1, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->c:Lcom/amap/api/col/l3/gy;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->c:Lcom/amap/api/col/l3/gy;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/Class;)Lcom/amap/api/col/l3/ha;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/api/col/l3/gz;->a(Lcom/amap/api/col/l3/ha;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/gz;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p2, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    iput-object v2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "dbs"

    const-string v1, "dld"

    invoke-static {p1, p2, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->c:Lcom/amap/api/col/l3/gy;

    monitor-enter v0

    if-nez p2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/Class;)Lcom/amap/api/col/l3/ha;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3/gz;->a(Lcom/amap/api/col/l3/ha;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {p2, v1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Lcom/amap/api/col/l3/ha;)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/gz;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, p2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    iput-object v3, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "dbs"

    const-string v1, "udd"

    invoke-static {p1, p2, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v3, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_5
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/gz;->c:Lcom/amap/api/col/l3/gy;

    monitor-enter v0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/gz;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v1}, Lcom/amap/api/col/l3/gz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, "dbs"

    const-string v3, "ild"

    invoke-static {p1, v1, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :cond_3
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_5
    const-string v1, "dbs"

    const-string v2, "ild"

    :goto_2
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_6
    const-string v1, "dbs"

    const-string v3, "ild"

    invoke-static {p1, v1, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    const-string v1, "dbs"

    const-string v3, "ild"

    invoke-static {p1, v1, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :cond_4
    :goto_3
    :try_start_9
    iget-object p1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    :try_start_a
    const-string v1, "dbs"

    const-string v2, "ild"

    goto :goto_2

    :goto_4
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    return-void

    :catchall_5
    move-exception p1

    :try_start_b
    iget-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v1

    :try_start_c
    const-string v3, "dbs"

    const-string v4, "ild"

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :cond_5
    :goto_5
    :try_start_d
    iget-object v1, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v2, p0, Lcom/amap/api/col/l3/gz;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v1

    :try_start_e
    const-string v2, "dbs"

    const-string v3, "ild"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    throw p1

    :cond_6
    :goto_7
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    return-void

    :catchall_8
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
