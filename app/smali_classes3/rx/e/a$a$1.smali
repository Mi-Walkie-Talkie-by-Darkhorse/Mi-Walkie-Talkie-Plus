.class Lrx/e/a$a$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/a$a;-><init>(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/e/a$a;


# direct methods
.method constructor <init>(Lrx/e/a$a;)V
    .locals 0

    iput-object p1, p0, Lrx/e/a$a$1;->a:Lrx/e/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lrx/e/a$a$1;->a:Lrx/e/a$a;

    invoke-virtual {v0}, Lrx/e/a$a;->b()V

    return-void
.end method
