.class public Lorg/apache/thrift/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/apache/thrift/protocol/e;

.field private final b:Lorg/apache/thrift/transport/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/e;-><init>(Lorg/apache/thrift/protocol/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/thrift/transport/c;

    invoke-direct {v0}, Lorg/apache/thrift/transport/c;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/e;->b:Lorg/apache/thrift/transport/c;

    iget-object v0, p0, Lorg/apache/thrift/e;->b:Lorg/apache/thrift/transport/c;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/g;->a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/thrift/e;->a:Lorg/apache/thrift/protocol/e;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/a;[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/e;->b:Lorg/apache/thrift/transport/c;

    invoke-virtual {v0, p2}, Lorg/apache/thrift/transport/c;->a([B)V

    iget-object v0, p0, Lorg/apache/thrift/e;->a:Lorg/apache/thrift/protocol/e;

    invoke-interface {p1, v0}, Lorg/apache/thrift/a;->a(Lorg/apache/thrift/protocol/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/thrift/e;->a:Lorg/apache/thrift/protocol/e;

    invoke-virtual {v0}, Lorg/apache/thrift/protocol/e;->y()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/thrift/e;->a:Lorg/apache/thrift/protocol/e;

    invoke-virtual {v1}, Lorg/apache/thrift/protocol/e;->y()V

    throw v0
.end method
