.class Lcom/ifengyu/intercom/g/e/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/g/e/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/g/e/d;->a(Lokhttp3/RequestBody;Lcom/ifengyu/intercom/g/d/b;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/g/d/b;

.field final synthetic b:Lcom/ifengyu/intercom/g/e/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/g/e/d;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/d$a;->b:Lcom/ifengyu/intercom/g/e/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/g/e/d$a;->a:Lcom/ifengyu/intercom/g/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 8

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->d()Lcom/ifengyu/intercom/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/ifengyu/intercom/g/e/d$a$a;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/g/e/d$a$a;-><init>(Lcom/ifengyu/intercom/g/e/d$a;JJ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
