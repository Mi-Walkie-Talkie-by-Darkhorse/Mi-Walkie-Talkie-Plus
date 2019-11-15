.class public Lorg/apache/thrift/protocol/k;
.super Lorg/apache/thrift/protocol/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/thrift/protocol/k$a;
    }
.end annotation


# static fields
.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lorg/apache/thrift/protocol/k;->f:I

    sput v0, Lorg/apache/thrift/protocol/k;->g:I

    sput v0, Lorg/apache/thrift/protocol/k;->h:I

    const/high16 v0, 0xa00000

    sput v0, Lorg/apache/thrift/protocol/k;->i:I

    const/high16 v0, 0x6400000

    sput v0, Lorg/apache/thrift/protocol/k;->j:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/transport/d;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/thrift/protocol/a;-><init>(Lorg/apache/thrift/transport/d;ZZ)V

    return-void
.end method


# virtual methods
.method public k()Lorg/apache/thrift/protocol/d;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->r()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->r()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->t()I

    move-result v2

    sget v3, Lorg/apache/thrift/protocol/k;->f:I

    if-le v2, v3, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift map size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Lorg/apache/thrift/protocol/d;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/thrift/protocol/d;-><init>(BBI)V

    return-object v3
.end method

.method public m()Lorg/apache/thrift/protocol/c;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->r()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->t()I

    move-result v1

    sget v2, Lorg/apache/thrift/protocol/k;->g:I

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift list size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lorg/apache/thrift/protocol/c;

    invoke-direct {v2, v0, v1}, Lorg/apache/thrift/protocol/c;-><init>(BI)V

    return-object v2
.end method

.method public o()Lorg/apache/thrift/protocol/i;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->r()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->t()I

    move-result v1

    sget v2, Lorg/apache/thrift/protocol/k;->h:I

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift set size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lorg/apache/thrift/protocol/i;

    invoke-direct {v2, v0, v1}, Lorg/apache/thrift/protocol/i;-><init>(BI)V

    return-object v2
.end method

.method public w()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->t()I

    move-result v1

    sget v0, Lorg/apache/thrift/protocol/k;->i:I

    if-le v1, v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift string size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->c()I

    move-result v0

    if-lt v0, v1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->a()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/d;->b()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1}, Lorg/apache/thrift/transport/d;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/thrift/f;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/k;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public x()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/k;->t()I

    move-result v1

    sget v0, Lorg/apache/thrift/protocol/k;->j:I

    if-le v1, v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift binary size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/k;->d(I)V

    iget-object v0, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->c()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->a()[B

    move-result-object v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->b()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1}, Lorg/apache/thrift/transport/d;->a(I)V

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v1, [B

    iget-object v2, p0, Lorg/apache/thrift/protocol/k;->e:Lorg/apache/thrift/transport/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/thrift/transport/d;->d([BII)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
