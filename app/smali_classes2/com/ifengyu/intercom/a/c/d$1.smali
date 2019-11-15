.class Lcom/ifengyu/intercom/a/c/d$1;
.super Ljava/lang/Object;
.source "PostFormRequest.java"

# interfaces
.implements Lcom/ifengyu/intercom/a/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/a/c/d;->a(Lokhttp3/RequestBody;Lcom/ifengyu/intercom/a/b/b;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/a/b/b;

.field final synthetic b:Lcom/ifengyu/intercom/a/c/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/a/c/d;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/a/c/d$1;->b:Lcom/ifengyu/intercom/a/c/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/a/c/d$1;->a:Lcom/ifengyu/intercom/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->a()Lcom/ifengyu/intercom/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v0, Lcom/ifengyu/intercom/a/c/d$1$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/a/c/d$1$1;-><init>(Lcom/ifengyu/intercom/a/c/d$1;JJ)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
