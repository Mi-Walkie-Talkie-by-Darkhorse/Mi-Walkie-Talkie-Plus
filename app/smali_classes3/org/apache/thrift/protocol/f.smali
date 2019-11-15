.class public Lorg/apache/thrift/protocol/f;
.super Lorg/apache/thrift/f;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/thrift/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/protocol/f;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/protocol/f;->a:I

    iput p1, p0, Lorg/apache/thrift/protocol/f;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/protocol/f;->a:I

    return-void
.end method
