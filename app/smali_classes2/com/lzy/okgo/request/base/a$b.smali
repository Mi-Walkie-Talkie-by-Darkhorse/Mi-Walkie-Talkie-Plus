.class final Lcom/lzy/okgo/request/base/a$b;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/request/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/lzy/okgo/model/Progress;

.field final synthetic b:Lcom/lzy/okgo/request/base/a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/request/base/a;Lokio/Sink;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a$b;->b:Lcom/lzy/okgo/request/base/a;

    .line 2
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 3
    new-instance p2, Lcom/lzy/okgo/model/Progress;

    invoke-direct {p2}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object p2, p0, Lcom/lzy/okgo/request/base/a$b;->a:Lcom/lzy/okgo/model/Progress;

    .line 4
    invoke-virtual {p1}, Lcom/lzy/okgo/request/base/a;->contentLength()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/lzy/okgo/model/Progress;->g:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    iget-object p1, p0, Lcom/lzy/okgo/request/base/a$b;->a:Lcom/lzy/okgo/model/Progress;

    new-instance v0, Lcom/lzy/okgo/request/base/a$b$a;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/base/a$b$a;-><init>(Lcom/lzy/okgo/request/base/a$b;)V

    invoke-static {p1, p2, p3, v0}, Lcom/lzy/okgo/model/Progress;->c(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;

    return-void
.end method
