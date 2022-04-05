.class public Lcom/ifengyu/intercom/node/transport/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    return-void
.end method
