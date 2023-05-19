.class public final synthetic Landroidx/room/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/room/g0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/u;->a:Landroidx/room/g0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/room/u;->a:Landroidx/room/g0;

    invoke-virtual {v0}, Landroidx/room/g0;->g()V

    return-void
.end method
