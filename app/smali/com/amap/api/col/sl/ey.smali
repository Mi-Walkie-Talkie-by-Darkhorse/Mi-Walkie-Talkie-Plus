.class public final Lcom/amap/api/col/sl/ey;
.super Ljava/lang/Object;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/ey$a;
    }
.end annotation


# instance fields
.field a:Landroid/bluetooth/BluetoothAdapter;

.field b:Z

.field c:Lcom/amap/api/col/sl/ey$a;

.field d:Ljava/lang/Object;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/sl/ex;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/sl/ex;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->f:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/ey;->b:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/ey;->c:Lcom/amap/api/col/sl/ey$a;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/ey;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->h:Ljava/util/Map;

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/ey;->g:Z

    :cond_0
    invoke-static {}, Lcom/amap/api/col/sl/fy;->c()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/ey;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/amap/api/col/sl/ex;
    .locals 16

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/ey;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0000000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    const/16 v2, 0x1d

    aget-byte v10, p3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x6

    new-array v6, v2, [B

    const/4 v3, 0x0

    array-length v11, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_4

    aget-object v14, v5, v2

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v6, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00000000000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    new-array v2, v2, [B

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/amap/api/col/sl/fy;->b([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/16 v3, 0x1a

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    add-int v8, v2, v3

    const/16 v2, 0x1b

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/16 v3, 0x1c

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    add-int v9, v2, v3

    const/16 v2, 0x2d95

    if-eq v9, v2, :cond_3

    const/16 v2, 0x820

    if-eq v8, v2, :cond_3

    const/16 v2, 0x704

    if-eq v8, v2, :cond_3

    if-nez p1, :cond_0

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return-object v3

    :cond_4
    new-instance v3, Lcom/amap/api/col/sl/ex;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    move/from16 v11, p2

    invoke-direct/range {v3 .. v13}, Lcom/amap/api/col/sl/ex;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;IIIIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "APS"

    const-string v4, "createFromScanData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/amap/api/col/sl/ey;Landroid/bluetooth/BluetoothDevice;I[B)Lcom/amap/api/col/sl/ex;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/col/sl/ey;->a(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/amap/api/col/sl/ex;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 10

    const/16 v5, 0x10

    const/4 v2, 0x6

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v3, 0x18

    if-gt v0, v3, :cond_2

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    aget-byte v0, p1, v1

    if-ne v0, v4, :cond_8

    aget-byte v0, p1, v9

    if-ne v0, v9, :cond_8

    aget-byte v0, p1, v4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    aget-byte v0, p1, v4

    if-ne v0, v2, :cond_8

    :cond_3
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    const/16 v3, 0x17

    if-ne v0, v3, :cond_8

    new-array v3, v5, [B

    const/16 v0, 0x9

    invoke-static {p1, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    array-length v5, v3

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_4

    aget-byte v6, v3, v0

    const-string v7, "%02X"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->h:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    const-string v5, "8021267762677846189778330391499"

    invoke-direct {v0, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "49549924105414102803086139689747"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amap/api/col/sl/fy;->c([B)[B

    move-result-object v3

    invoke-static {v3, v0, v5}, Lcom/amap/api/col/sl/ff;->a([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v0, v3

    const/16 v5, 0x8

    if-ge v0, v5, :cond_6

    :cond_5
    const-string v0, ""

    goto :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v2

    :goto_2
    if-lez v0, :cond_7

    const-string v2, "%02X"

    new-array v6, v9, [Ljava/lang/Object;

    aget-byte v7, v3, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/ey;->h:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    aget-byte v0, p1, v1

    if-ne v0, v4, :cond_a

    aget-byte v0, p1, v9

    if-ne v0, v9, :cond_a

    aget-byte v0, p1, v4

    if-ne v0, v2, :cond_a

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_a

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v3, -0x58

    if-ne v0, v3, :cond_a

    aget-byte v0, p1, v2

    if-ne v0, v9, :cond_a

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_a

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->d([B)[B

    move-result-object v0

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/ff;->b([B[B)[B

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_3
    const/16 v1, 0x8

    if-ge v0, v1, :cond_9

    const-string v1, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v2, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_a
    const-string v0, ""

    goto/16 :goto_0

    :array_0
    .array-data 1
        -0x1t
        -0xft
        0x37t
        0x21t
        0x4t
        0x15t
        0x10t
        0x14t
        -0x55t
        0x9t
        0x0t
        0x2t
        -0x5bt
        -0x2bt
        -0x3bt
        -0x4bt
    .end array-data
.end method

.method static synthetic a(Lcom/amap/api/col/sl/ey;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/ey;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/col/sl/ey;->e:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/amap/api/col/sl/ey;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x14

    if-le v0, v4, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x19

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->c()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fy;->c()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->c:Lcom/amap/api/col/sl/ey$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/ey$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/ey$a;-><init>(Lcom/amap/api/col/sl/ey;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->c:Lcom/amap/api/col/sl/ey$a;

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/ey;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/amap/api/col/sl/ey;->c:Lcom/amap/api/col/sl/ey$a;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/ey;->b:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/sl/ey;->b:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/sl/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->c:Lcom/amap/api/col/sl/ey$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/ey$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/ey$a;-><init>(Lcom/amap/api/col/sl/ey;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->c:Lcom/amap/api/col/sl/ey$a;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/amap/api/col/sl/ey;->c:Lcom/amap/api/col/sl/ey$a;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/ey;->b:Z

    :cond_1
    return-void
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/sl/ex;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/sl/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/ey;->e()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->f:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ey;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ey;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/ey;->a:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method
