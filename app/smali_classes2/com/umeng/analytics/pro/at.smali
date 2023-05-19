.class public Lcom/umeng/analytics/pro/at;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lcom/umeng/analytics/pro/bp;

.field private final b:Lcom/umeng/analytics/pro/cc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/bj$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/bj$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/at;-><init>(Lcom/umeng/analytics/pro/br;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/br;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/umeng/analytics/pro/cc;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    .line 4
    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/br;->a(Lcom/umeng/analytics/pro/cd;)Lcom/umeng/analytics/pro/bp;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    return-void
.end method

.method private varargs a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/at;->j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object p2

    if-eqz p2, :cond_8

    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    const/16 p3, 0x64

    const/16 p4, 0xb

    if-eq p1, p3, :cond_2

    const/16 p3, 0xa

    if-eq p1, p3, :cond_1

    if-eq p1, p4, :cond_0

    goto/16 :goto_1

    .line 20
    :cond_0
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p4, :cond_8

    .line 21
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 23
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    return-object p1

    .line 24
    :cond_1
    :try_start_1
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8

    .line 25
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_2
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p4, :cond_8

    .line 27
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->A()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 28
    :cond_3
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8

    .line 29
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 30
    :cond_4
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8

    .line 31
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_5
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8

    .line 33
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_6
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8

    .line 35
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_7
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne p1, p3, :cond_8

    .line 37
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    new-instance p2, Lcom/umeng/analytics/pro/aw;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :goto_2
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 40
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method

.method private varargs j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/cc;->a([B)V

    .line 2
    array-length p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Lcom/umeng/analytics/pro/ax;

    const/4 v1, 0x0

    .line 3
    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 4
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    .line 5
    aget-object p2, p3, p2

    aput-object p2, v0, v2

    move p2, v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    const/4 p2, 0x0

    move-object p3, p2

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_5

    .line 7
    iget-object p3, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p3}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object p3

    .line 8
    iget-byte v2, p3, Lcom/umeng/analytics/pro/bk;->b:B

    if-eqz v2, :cond_4

    iget-short v2, p3, Lcom/umeng/analytics/pro/bk;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/ax;->a()S

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    iget-short v2, p3, Lcom/umeng/analytics/pro/bk;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/ax;->a()S

    move-result v3

    if-eq v2, v3, :cond_3

    .line 10
    iget-object v2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    iget-byte v3, p3, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 11
    iget-object v2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/bp;->m()V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_1

    .line 12
    iget-object v2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    goto :goto_1

    :cond_4
    :goto_2
    return-object p2

    :cond_5
    return-object p3
.end method


# virtual methods
.method public varargs a([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/4 v0, 0x2

    .line 18
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lcom/umeng/analytics/pro/aq;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/at;->a(Lcom/umeng/analytics/pro/aq;[B)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/aq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/at;->a(Lcom/umeng/analytics/pro/aq;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->B()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 9
    :catch_0
    :try_start_1
    new-instance p1, Lcom/umeng/analytics/pro/aw;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/aq;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/pro/cc;->a([B)V

    .line 2
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/aq;->read(Lcom/umeng/analytics/pro/bp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 4
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->B()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 6
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method

.method public varargs a(Lcom/umeng/analytics/pro/aq;[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 11
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/at;->j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/aq;->read(Lcom/umeng/analytics/pro/bp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 14
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->B()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    new-instance p2, Lcom/umeng/analytics/pro/aw;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 17
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method

.method public varargs b([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs c([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs d([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs e([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs f([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs g([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs h([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->a(B[BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public varargs i([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/at;->j([BLcom/umeng/analytics/pro/ax;[Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 3
    iget-object p1, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object p1

    iget-short p1, p1, Lcom/umeng/analytics/pro/bk;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 5
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    new-instance p2, Lcom/umeng/analytics/pro/aw;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->b:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cc;->e()V

    .line 8
    iget-object p2, p0, Lcom/umeng/analytics/pro/at;->a:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bp;->B()V

    throw p1
.end method
