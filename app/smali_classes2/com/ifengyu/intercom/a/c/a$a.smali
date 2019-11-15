.class public final Lcom/ifengyu/intercom/a/c/a$a;
.super Lokio/ForwardingSink;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/a/c/a;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/a/c/a;Lokio/Sink;)V
    .locals 2

    iput-object p1, p0, Lcom/ifengyu/intercom/a/c/a$a;->a:Lcom/ifengyu/intercom/a/c/a;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ifengyu/intercom/a/c/a$a;->b:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-wide v0, p0, Lcom/ifengyu/intercom/a/c/a$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/ifengyu/intercom/a/c/a$a;->b:J

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/a$a;->a:Lcom/ifengyu/intercom/a/c/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/a/c/a;->b:Lcom/ifengyu/intercom/a/c/a$b;

    iget-wide v2, p0, Lcom/ifengyu/intercom/a/c/a$a;->b:J

    iget-object v1, p0, Lcom/ifengyu/intercom/a/c/a$a;->a:Lcom/ifengyu/intercom/a/c/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/a/c/a;->contentLength()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/ifengyu/intercom/a/c/a$b;->a(JJ)V

    return-void
.end method
