.class Landroidx/room/h0$d;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/h0;


# direct methods
.method constructor <init>(Landroidx/room/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/h0$d;->a:Landroidx/room/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0$d;->a:Landroidx/room/h0;

    iget-object v1, v0, Landroidx/room/h0;->d:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/h0;->e:Landroidx/room/g0$c;

    invoke-virtual {v1, v0}, Landroidx/room/g0;->i(Landroidx/room/g0$c;)V

    return-void
.end method
