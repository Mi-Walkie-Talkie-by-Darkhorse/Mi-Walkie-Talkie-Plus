.class Lcom/tencent/open/utils/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Properties;

.field b:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/utils/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/open/utils/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method a([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/a;->a()Lcom/tencent/open/utils/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/open/utils/k;->a()[B

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/tencent/open/utils/a;->a()Lcom/tencent/open/utils/k;

    move-result-object v3

    new-instance v4, Lcom/tencent/open/utils/k;

    invoke-direct {v4, v2}, Lcom/tencent/open/utils/k;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/tencent/open/utils/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow protocl ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v2, p1

    sub-int/2addr v2, v1

    if-le v2, v5, :cond_0

    new-array v2, v5, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/tencent/open/utils/k;

    invoke-direct {v3, v2}, Lcom/tencent/open/utils/k;-><init>([B)V

    invoke-virtual {v3}, Lcom/tencent/open/utils/k;->b()I

    move-result v2

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x2

    if-lt v3, v2, :cond_0

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    array-length v3, p1

    sub-int v1, v3, v1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    if-lez v1, :cond_0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tencent/open/utils/a$a;->b:[B

    iget-object v1, p0, Lcom/tencent/open/utils/a$a;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkExternalInfo [p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/utils/a$a;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
