.class public final synthetic Landroidx/room/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/a/a/c/a;


# instance fields
.field public final synthetic a:Landroidx/room/x$b;

.field public final synthetic b:La/a/a/c/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/x$b;La/a/a/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/e;->a:Landroidx/room/x$b;

    iput-object p2, p0, Landroidx/room/e;->b:La/a/a/c/a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/e;->a:Landroidx/room/x$b;

    iget-object v1, p0, Landroidx/room/e;->b:La/a/a/c/a;

    check-cast p1, La/g/a/b;

    invoke-virtual {v0, v1, p1}, Landroidx/room/x$b;->i(La/a/a/c/a;La/g/a/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
