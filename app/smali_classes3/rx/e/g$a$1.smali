.class Lrx/e/g$a$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/g$a;->a(Lrx/b/a;J)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/e/g$b;

.field final synthetic b:Lrx/e/g$a;


# direct methods
.method constructor <init>(Lrx/e/g$a;Lrx/e/g$b;)V
    .locals 0

    iput-object p1, p0, Lrx/e/g$a$1;->b:Lrx/e/g$a;

    iput-object p2, p0, Lrx/e/g$a$1;->a:Lrx/e/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lrx/e/g$a$1;->b:Lrx/e/g$a;

    invoke-static {v0}, Lrx/e/g$a;->a(Lrx/e/g$a;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lrx/e/g$a$1;->a:Lrx/e/g$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
