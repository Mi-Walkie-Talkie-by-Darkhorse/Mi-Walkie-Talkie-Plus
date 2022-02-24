.class public final Lcom/ifengyu/intercom/g/e/a$a;
.super Lokio/ForwardingSink;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/g/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/ifengyu/intercom/g/e/a;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/g/e/a;Lokio/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/a$a;->b:Lcom/ifengyu/intercom/g/e/a;

    .line 2
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/ifengyu/intercom/g/e/a$a;->a:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    iget-wide v0, p0, Lcom/ifengyu/intercom/g/e/a$a;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/ifengyu/intercom/g/e/a$a;->a:J

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/g/e/a$a;->b:Lcom/ifengyu/intercom/g/e/a;

    iget-object p2, p1, Lcom/ifengyu/intercom/g/e/a;->b:Lcom/ifengyu/intercom/g/e/a$b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/g/e/a;->contentLength()J

    move-result-wide v2

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/ifengyu/intercom/g/e/a$b;->a(JJ)V

    return-void
.end method
