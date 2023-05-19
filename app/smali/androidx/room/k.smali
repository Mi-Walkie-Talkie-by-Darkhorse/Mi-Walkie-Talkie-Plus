.class public final synthetic Landroidx/room/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/room/i0;

.field public final synthetic b:La/g/a/e;

.field public final synthetic c:Landroidx/room/l0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/i0;La/g/a/e;Landroidx/room/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/k;->a:Landroidx/room/i0;

    iput-object p2, p0, Landroidx/room/k;->b:La/g/a/e;

    iput-object p3, p0, Landroidx/room/k;->c:Landroidx/room/l0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/room/k;->a:Landroidx/room/i0;

    iget-object v1, p0, Landroidx/room/k;->b:La/g/a/e;

    iget-object v2, p0, Landroidx/room/k;->c:Landroidx/room/l0;

    invoke-virtual {v0, v1, v2}, Landroidx/room/i0;->G(La/g/a/e;Landroidx/room/l0;)V

    return-void
.end method
