.class public final Lcom/ifengyu/blelib/e/c;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:[B


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/blelib/e/c;->b:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/blelib/e/c;->c:Landroid/util/SparseArray;

    .line 4
    iput-object p3, p0, Lcom/ifengyu/blelib/e/c;->d:Ljava/util/Map;

    .line 5
    iput-object p6, p0, Lcom/ifengyu/blelib/e/c;->f:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/ifengyu/blelib/e/c;->a:I

    .line 7
    iput p5, p0, Lcom/ifengyu/blelib/e/c;->e:I

    .line 8
    iput-object p7, p0, Lcom/ifengyu/blelib/e/c;->g:[B

    return-void
.end method

.method private static a([BII)[B
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static e([BLjava/lang/String;)Lcom/ifengyu/blelib/e/c;
    .locals 17
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v8, p0

    const/4 v0, 0x0

    if-nez v8, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v7, v4

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    .line 1
    :goto_0
    :try_start_0
    array-length v0, v8

    if-ge v1, v0, :cond_b

    add-int/lit8 v0, v1, 0x1

    .line 2
    aget-byte v1, v8, v1

    const/16 v9, 0xff

    and-int/2addr v1, v9

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v10, v0, 0x1

    .line 3
    aget-byte v0, v8, v0

    and-int/2addr v0, v9

    const/16 v11, 0x16

    const/16 v12, 0x10

    const/16 v14, 0x21

    const/16 v15, 0x20

    const/4 v13, 0x2

    if-eq v0, v11, :cond_5

    if-eq v0, v9, :cond_6

    if-eq v0, v15, :cond_5

    if-eq v0, v14, :cond_5

    packed-switch v0, :pswitch_data_0

    :goto_1
    move-object/from16 v11, p1

    goto/16 :goto_4

    .line 4
    :pswitch_0
    aget-byte v6, v8, v10

    goto :goto_1

    .line 5
    :pswitch_1
    new-instance v7, Ljava/lang/String;

    .line 6
    invoke-static {v8, v10, v1}, Lcom/ifengyu/blelib/e/c;->a([BII)[B

    move-result-object v0

    move-object/from16 v11, p1

    invoke-direct {v7, v0, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v11, p1

    if-nez v2, :cond_2

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_2
    invoke-static {v8, v10, v1, v12, v2}, Lcom/ifengyu/blelib/e/c;->f([BIIILjava/util/List;)I

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v11, p1

    if-nez v2, :cond_3

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    const/4 v9, 0x4

    .line 10
    invoke-static {v8, v10, v1, v9, v2}, Lcom/ifengyu/blelib/e/c;->f([BIIILjava/util/List;)I

    goto :goto_4

    :pswitch_4
    move-object/from16 v11, p1

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :cond_4
    invoke-static {v8, v10, v1, v13, v2}, Lcom/ifengyu/blelib/e/c;->f([BIIILjava/util/List;)I

    goto :goto_4

    :pswitch_5
    move-object/from16 v11, p1

    .line 13
    aget-byte v0, v8, v10

    and-int/lit16 v5, v0, 0xff

    goto :goto_4

    :cond_5
    move-object/from16 v11, p1

    const/16 v16, 0x4

    goto :goto_2

    :cond_6
    move-object/from16 v11, p1

    add-int/lit8 v0, v10, 0x1

    .line 14
    aget-byte v0, v8, v0

    and-int/2addr v0, v9

    shl-int/lit8 v0, v0, 0x8

    aget-byte v12, v8, v10

    and-int/2addr v9, v12

    add-int/2addr v0, v9

    add-int/lit8 v9, v10, 0x2

    add-int/lit8 v12, v1, -0x2

    .line 15
    invoke-static {v8, v9, v12}, Lcom/ifengyu/blelib/e/c;->a([BII)[B

    move-result-object v9

    if-nez v3, :cond_7

    .line 16
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 17
    :cond_7
    invoke-virtual {v3, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :goto_2
    if-ne v0, v15, :cond_8

    const/4 v12, 0x4

    goto :goto_3

    :cond_8
    if-ne v0, v14, :cond_9

    goto :goto_3

    :cond_9
    const/4 v12, 0x2

    .line 18
    :goto_3
    invoke-static {v8, v10, v12}, Lcom/ifengyu/blelib/e/c;->a([BII)[B

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/ifengyu/blelib/e/b;->a([B)Landroid/os/ParcelUuid;

    move-result-object v0

    add-int v9, v10, v12

    sub-int v12, v1, v12

    .line 20
    invoke-static {v8, v9, v12}, Lcom/ifengyu/blelib/e/c;->a([BII)[B

    move-result-object v9

    if-nez v4, :cond_a

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 22
    :cond_a
    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/2addr v1, v10

    goto/16 :goto_0

    .line 23
    :cond_b
    :goto_5
    new-instance v9, Lcom/ifengyu/blelib/e/c;

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/blelib/e/c;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 24
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to parse scan record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v9, Lcom/ifengyu/blelib/e/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/blelib/e/c;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static f([BIIILjava/util/List;)I
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    .line 1
    invoke-static {p0, p1, p3}, Lcom/ifengyu/blelib/e/c;->a([BII)[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/blelib/e/b;->a([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/blelib/e/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/util/SparseArray;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/blelib/e/c;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/blelib/e/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/ifengyu/blelib/e/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/ifengyu/blelib/e/c;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/blelib/e/c;->g:[B

    iget-object p1, p1, Lcom/ifengyu/blelib/e/c;->g:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [advertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/blelib/e/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/blelib/e/c;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", manufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/blelib/e/c;->c:Landroid/util/SparseArray;

    .line 2
    invoke-static {v1}, Lcom/ifengyu/blelib/e/a;->a(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/blelib/e/c;->d:Ljava/util/Map;

    .line 3
    invoke-static {v1}, Lcom/ifengyu/blelib/e/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/blelib/e/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/blelib/e/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
