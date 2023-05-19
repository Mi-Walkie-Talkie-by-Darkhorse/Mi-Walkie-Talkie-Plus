.class final Lcom/amap/api/col/l3/er$b;
.super Ljava/lang/Object;
.source "RectPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field static final synthetic e:Z = true


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/amap/api/col/l3/er$c;

.field c:Lcom/amap/api/col/l3/er$b;

.field d:Lcom/amap/api/col/l3/er$b;

.field final synthetic f:Lcom/amap/api/col/l3/er;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/l3/er;Lcom/amap/api/col/l3/er$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/er$b;->f:Lcom/amap/api/col/l3/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/er$b;->d:Lcom/amap/api/col/l3/er$b;

    .line 4
    iput-object p2, p0, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/er$b;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/l3/er$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final a(IILjava/lang/String;)Lcom/amap/api/col/l3/er$b;
    .locals 17

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    .line 1
    :goto_0
    invoke-direct {v9}, Lcom/amap/api/col/l3/er$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, v9, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    invoke-virtual {v0, v6, v7, v8}, Lcom/amap/api/col/l3/er$b;->a(IILjava/lang/String;)Lcom/amap/api/col/l3/er$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, v9, Lcom/amap/api/col/l3/er$b;->d:Lcom/amap/api/col/l3/er$b;

    invoke-virtual {v0, v6, v7, v8}, Lcom/amap/api/col/l3/er$b;->a(IILjava/lang/String;)Lcom/amap/api/col/l3/er$b;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, v9, Lcom/amap/api/col/l3/er$b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-object v0, v9, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    iget v2, v0, Lcom/amap/api/col/l3/er$c;->c:I

    if-gt v6, v2, :cond_4

    iget v0, v0, Lcom/amap/api/col/l3/er$c;->d:I

    if-gt v7, v0, :cond_4

    if-ne v6, v2, :cond_3

    if-ne v7, v0, :cond_3

    sget-object v0, Lcom/amap/api/col/l3/er$a;->b:Lcom/amap/api/col/l3/er$a;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/amap/api/col/l3/er$a;->c:Lcom/amap/api/col/l3/er$a;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/amap/api/col/l3/er$a;->a:Lcom/amap/api/col/l3/er$a;

    .line 6
    :goto_1
    sget-object v2, Lcom/amap/api/col/l3/er$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto/16 :goto_5

    .line 7
    :cond_5
    iget-object v0, v9, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    iget v4, v0, Lcom/amap/api/col/l3/er$c;->c:I

    sub-int v1, v4, v6

    iget v5, v0, Lcom/amap/api/col/l3/er$c;->d:I

    sub-int v2, v5, v7

    sget-boolean v3, Lcom/amap/api/col/l3/er$b;->e:Z

    if-nez v3, :cond_7

    if-ltz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_2
    if-nez v3, :cond_9

    if-ltz v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_3
    new-instance v10, Lcom/amap/api/col/l3/er$c;

    if-le v1, v2, :cond_a

    iget-object v1, v9, Lcom/amap/api/col/l3/er$b;->f:Lcom/amap/api/col/l3/er;

    iget v2, v0, Lcom/amap/api/col/l3/er$c;->a:I

    iget v3, v0, Lcom/amap/api/col/l3/er$c;->b:I

    move-object v0, v10

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/er$c;-><init>(Lcom/amap/api/col/l3/er;IIII)V

    new-instance v0, Lcom/amap/api/col/l3/er$c;

    iget-object v12, v9, Lcom/amap/api/col/l3/er$b;->f:Lcom/amap/api/col/l3/er;

    iget v1, v10, Lcom/amap/api/col/l3/er$c;->a:I

    add-int v13, v1, v6

    iget-object v1, v9, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    iget v14, v1, Lcom/amap/api/col/l3/er$c;->b:I

    iget v2, v1, Lcom/amap/api/col/l3/er$c;->c:I

    sub-int v15, v2, v6

    iget v1, v1, Lcom/amap/api/col/l3/er$c;->d:I

    move-object v11, v0

    move/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/col/l3/er$c;-><init>(Lcom/amap/api/col/l3/er;IIII)V

    goto :goto_4

    :cond_a
    iget-object v1, v9, Lcom/amap/api/col/l3/er$b;->f:Lcom/amap/api/col/l3/er;

    iget v2, v0, Lcom/amap/api/col/l3/er$c;->a:I

    iget v3, v0, Lcom/amap/api/col/l3/er$c;->b:I

    move-object v0, v10

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/er$c;-><init>(Lcom/amap/api/col/l3/er;IIII)V

    new-instance v0, Lcom/amap/api/col/l3/er$c;

    iget-object v12, v9, Lcom/amap/api/col/l3/er$b;->f:Lcom/amap/api/col/l3/er;

    iget-object v1, v9, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    iget v13, v1, Lcom/amap/api/col/l3/er$c;->a:I

    iget v2, v10, Lcom/amap/api/col/l3/er$c;->b:I

    add-int v14, v2, v7

    iget v15, v1, Lcom/amap/api/col/l3/er$c;->c:I

    iget v1, v1, Lcom/amap/api/col/l3/er$c;->d:I

    sub-int v16, v1, v7

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/col/l3/er$c;-><init>(Lcom/amap/api/col/l3/er;IIII)V

    :goto_4
    new-instance v1, Lcom/amap/api/col/l3/er$b;

    iget-object v2, v9, Lcom/amap/api/col/l3/er$b;->f:Lcom/amap/api/col/l3/er;

    invoke-direct {v1, v2, v10}, Lcom/amap/api/col/l3/er$b;-><init>(Lcom/amap/api/col/l3/er;Lcom/amap/api/col/l3/er$c;)V

    iput-object v1, v9, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    new-instance v1, Lcom/amap/api/col/l3/er$b;

    iget-object v2, v9, Lcom/amap/api/col/l3/er$b;->f:Lcom/amap/api/col/l3/er;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/col/l3/er$b;-><init>(Lcom/amap/api/col/l3/er;Lcom/amap/api/col/l3/er$c;)V

    iput-object v1, v9, Lcom/amap/api/col/l3/er$b;->d:Lcom/amap/api/col/l3/er$b;

    .line 8
    :goto_5
    iget-object v9, v9, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    goto/16 :goto_0

    .line 9
    :cond_b
    iput-object v8, v9, Lcom/amap/api/col/l3/er$b;->a:Ljava/lang/String;

    return-object v9

    :cond_c
    return-object v1
.end method

.method final a(Ljava/lang/String;)Z
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/amap/api/col/l3/er$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/amap/api/col/l3/er$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iput-object v1, p0, Lcom/amap/api/col/l3/er$b;->a:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/er$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/amap/api/col/l3/er$b;->d:Lcom/amap/api/col/l3/er$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/er$b;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    .line 16
    iget-object p1, p0, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    invoke-direct {p1}, Lcom/amap/api/col/l3/er$b;->b()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/er$b;->d:Lcom/amap/api/col/l3/er$b;

    invoke-direct {p1}, Lcom/amap/api/col/l3/er$b;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    iput-object v1, p0, Lcom/amap/api/col/l3/er$b;->c:Lcom/amap/api/col/l3/er$b;

    .line 18
    iput-object v1, p0, Lcom/amap/api/col/l3/er$b;->d:Lcom/amap/api/col/l3/er$b;

    :cond_3
    return v0
.end method
