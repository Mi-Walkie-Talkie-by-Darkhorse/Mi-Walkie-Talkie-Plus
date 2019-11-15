.class public Lorg/apache/thrift/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lorg/apache/thrift/transport/a;

.field private c:Lorg/apache/thrift/protocol/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/g;-><init>(Lorg/apache/thrift/protocol/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/g;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lorg/apache/thrift/transport/a;

    iget-object v1, p0, Lorg/apache/thrift/g;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/thrift/transport/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/thrift/g;->b:Lorg/apache/thrift/transport/a;

    iget-object v0, p0, Lorg/apache/thrift/g;->b:Lorg/apache/thrift/transport/a;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/g;->a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/thrift/g;->c:Lorg/apache/thrift/protocol/e;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/a;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/g;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/apache/thrift/g;->c:Lorg/apache/thrift/protocol/e;

    invoke-interface {p1, v0}, Lorg/apache/thrift/a;->b(Lorg/apache/thrift/protocol/e;)V

    iget-object v0, p0, Lorg/apache/thrift/g;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
