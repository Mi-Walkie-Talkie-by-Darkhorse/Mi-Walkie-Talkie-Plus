.class Lrx/e/b$a$1;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/b$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/f/c;

.field final synthetic b:Lrx/e/b$a;


# direct methods
.method constructor <init>(Lrx/e/b$a;Lrx/f/c;)V
    .locals 0

    iput-object p1, p0, Lrx/e/b$a$1;->b:Lrx/e/b$a;

    iput-object p2, p0, Lrx/e/b$a$1;->a:Lrx/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lrx/e/b$a$1;->b:Lrx/e/b$a;

    iget-object v0, v0, Lrx/e/b$a;->b:Lrx/f/b;

    iget-object v1, p0, Lrx/e/b$a$1;->a:Lrx/f/c;

    invoke-virtual {v0, v1}, Lrx/f/b;->b(Lrx/f;)V

    return-void
.end method
