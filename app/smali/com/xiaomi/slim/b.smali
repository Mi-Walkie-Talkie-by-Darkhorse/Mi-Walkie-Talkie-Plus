.class public Lcom/xiaomi/slim/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:J

.field private static final f:[B


# instance fields
.field a:Ljava/lang/String;

.field private d:Lcom/xiaomi/push/protobuf/b$a;

.field private e:S

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/smack/util/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/slim/b;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/slim/b;->c:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/xiaomi/slim/b;->f:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/slim/b;->e:S

    sget-object v0, Lcom/xiaomi/slim/b;->f:[B

    iput-object v0, p0, Lcom/xiaomi/slim/b;->g:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/slim/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/push/protobuf/b$a;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/b$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/push/protobuf/b$a;S[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/slim/b;->e:S

    sget-object v0, Lcom/xiaomi/slim/b;->f:[B

    iput-object v0, p0, Lcom/xiaomi/slim/b;->g:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/slim/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    iput-short p2, p0, Lcom/xiaomi/slim/b;->e:S

    iput-object p3, p0, Lcom/xiaomi/slim/b;->g:[B

    return-void
.end method

.method public static a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/slim/b;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Lcom/xiaomi/slim/b;

    invoke-direct {v2}, Lcom/xiaomi/slim/b;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/slim/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/slim/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/slim/b;->b(Ljava/lang/String;)V

    const-string v0, "XMLMSG"

    invoke-virtual {v2, v0, v5}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lcom/xiaomi/slim/b;->a([BLjava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/xiaomi/slim/b;->a(S)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob parse chid err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/xiaomi/slim/b;->a(S)V

    const-string v0, "SECMSG"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob setPayload err\uff1a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static b(Ljava/nio/ByteBuffer;)Lcom/xiaomi/slim/b;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, -0x3d02

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read Blob err :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x6

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    new-instance v3, Lcom/xiaomi/push/protobuf/b$a;

    invoke-direct {v3}, Lcom/xiaomi/push/protobuf/b$a;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v3, v4, v5, v1}, Lcom/xiaomi/push/protobuf/b$a;->b([BII)Lcom/google/protobuf/micro/e;

    new-array v4, v2, [B

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/xiaomi/slim/b;

    invoke-direct {v1, v3, v0, v4}, Lcom/xiaomi/slim/b;-><init>(Lcom/xiaomi/push/protobuf/b$a;S[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method static c(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static declared-synchronized g()Ljava/lang/String;
    .locals 6

    const-class v1, Lcom/xiaomi/slim/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/slim/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/slim/b;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/slim/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static n()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->l()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_2
    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, -0x3d02

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/xiaomi/slim/b;->e:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$a;->a()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/slim/b;->g:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v5}, Lcom/xiaomi/push/protobuf/b$a;->a()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/push/protobuf/b$a;->a([BII)V

    iget-object v2, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v2}, Lcom/xiaomi/push/protobuf/b$a;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/xiaomi/slim/b;->g:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/protobuf/b$a;->a(I)Lcom/xiaomi/push/protobuf/b$a;

    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/protobuf/b$a;->a(J)Lcom/xiaomi/push/protobuf/b$a;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/protobuf/b$a;->a(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/protobuf/b$a;->b(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/protobuf/b$a;->e(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/protobuf/b$a;->c(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->p()Lcom/xiaomi/push/protobuf/b$a;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/protobuf/b$a;->d(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;

    :cond_1
    return-void
.end method

.method public a(S)V
    .locals 0

    iput-short p1, p0, Lcom/xiaomi/slim/b;->e:S

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/protobuf/b$a;->c(I)Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/as;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/as;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/slim/b;->g:[B

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/protobuf/b$a;->c(I)Lcom/xiaomi/push/protobuf/b$a;

    iput-object p1, p0, Lcom/xiaomi/slim/b;->g:[B

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/slim/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->d()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v4, v2, v3}, Lcom/xiaomi/push/protobuf/b$a;->a(J)Lcom/xiaomi/push/protobuf/b$a;

    iget-object v2, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$a;->a(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/protobuf/b$a;->b(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob parse user err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->x()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->u()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/as;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/slim/b;->g:[B

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/as;->a([B[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->u()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->g:[B

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow cipher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/slim/b;->g:[B

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->w()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$a;->r()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/slim/b;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/protobuf/b$a;->e(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$a;

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$a;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/b;->g:[B

    return-object v0
.end method

.method public l()I
    .locals 2

    invoke-static {}, Lcom/xiaomi/slim/b;->n()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/slim/b;->d:Lcom/xiaomi/push/protobuf/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/slim/b;->g:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public m()S
    .locals 1

    iget-short v0, p0, Lcom/xiaomi/slim/b;->e:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob [chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->m()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
