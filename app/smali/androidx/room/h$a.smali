.class Landroidx/room/h$a;
.super Landroidx/room/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/h;


# direct methods
.method constructor <init>(Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/h$a;->a:Landroidx/room/h;

    invoke-direct {p0}, Landroidx/room/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/room/h$a;->a:Landroidx/room/h;

    iget-object v0, v0, Landroidx/room/h;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/h$a$a;

    invoke-direct {v1, p0, p1}, Landroidx/room/h$a$a;-><init>(Landroidx/room/h$a;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
