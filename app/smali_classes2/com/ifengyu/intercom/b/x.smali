.class public final Lcom/ifengyu/intercom/b/x;
.super Ljava/lang/Object;
.source "MyScanRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/b/x$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:[B


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "I[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/b/x;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/ifengyu/intercom/b/x;->c:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ifengyu/intercom/b/x;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/ifengyu/intercom/b/x;->g:Ljava/lang/String;

    iput p7, p0, Lcom/ifengyu/intercom/b/x;->d:I

    iput p4, p0, Lcom/ifengyu/intercom/b/x;->a:I

    iput p5, p0, Lcom/ifengyu/intercom/b/x;->f:I

    iput-object p8, p0, Lcom/ifengyu/intercom/b/x;->h:[B

    return-void
.end method

.method private static a([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    invoke-static {p0, p1, p3}, Lcom/ifengyu/intercom/b/x;->a([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/x$a;->a([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static a([B)Lcom/ifengyu/intercom/b/x;
    .locals 12

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v5, -0x80000000

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_1
    :try_start_0
    array-length v8, p0

    if-ge v0, v8, :cond_1

    add-int/lit8 v8, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    new-instance v0, Lcom/ifengyu/intercom/b/x;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/b/x;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ifengyu/intercom/b/x;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/b/x;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;I[B)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v9, v8, 0x1

    :try_start_1
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    sparse-switch v8, :sswitch_data_0

    :cond_4
    :goto_2
    add-int/2addr v0, v9

    goto :goto_1

    :sswitch_0
    aget-byte v4, p0, v9

    and-int/lit16 v4, v4, 0xff

    goto :goto_2

    :sswitch_1
    const/4 v8, 0x2

    invoke-static {p0, v9, v0, v8, v1}, Lcom/ifengyu/intercom/b/x;->a([BIIILjava/util/List;)I

    goto :goto_2

    :sswitch_2
    const/4 v8, 0x4

    invoke-static {p0, v9, v0, v8, v1}, Lcom/ifengyu/intercom/b/x;->a([BIIILjava/util/List;)I

    goto :goto_2

    :sswitch_3
    const/16 v8, 0x10

    invoke-static {p0, v9, v0, v8, v1}, Lcom/ifengyu/intercom/b/x;->a([BIIILjava/util/List;)I

    goto :goto_2

    :sswitch_4
    new-instance v6, Ljava/lang/String;

    invoke-static {p0, v9, v0}, Lcom/ifengyu/intercom/b/x;->a([BII)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :sswitch_5
    aget-byte v5, p0, v9

    goto :goto_2

    :sswitch_6
    const/4 v8, 0x2

    invoke-static {p0, v9, v8}, Lcom/ifengyu/intercom/b/x;->a([BII)[B

    move-result-object v10

    invoke-static {v10}, Lcom/ifengyu/intercom/b/x$a;->a([B)Landroid/os/ParcelUuid;

    move-result-object v10

    add-int v11, v9, v8

    sub-int v8, v0, v8

    invoke-static {p0, v11, v8}, Lcom/ifengyu/intercom/b/x;->a([BII)[B

    move-result-object v8

    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :sswitch_7
    invoke-static {p0, v9, v0}, Lcom/ifengyu/intercom/b/x;->a([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v10, "04 00"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v7, 0x4

    goto :goto_2

    :cond_5
    const-string v10, "05 00"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v7, 0x5

    goto :goto_2

    :cond_6
    const-string v10, "06 00"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x6

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static a([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/b/x;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/b/x;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/b/x;->d:I

    return v0
.end method
