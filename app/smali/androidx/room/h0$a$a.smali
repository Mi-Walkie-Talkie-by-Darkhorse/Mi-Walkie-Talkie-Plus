.class Landroidx/room/h0$a$a;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/h0$a;->e([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroidx/room/h0$a;


# direct methods
.method constructor <init>(Landroidx/room/h0$a;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/h0$a$a;->b:Landroidx/room/h0$a;

    iput-object p2, p0, Landroidx/room/h0$a$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0$a$a;->b:Landroidx/room/h0$a;

    iget-object v0, v0, Landroidx/room/h0$a;->a:Landroidx/room/h0;

    iget-object v0, v0, Landroidx/room/h0;->d:Landroidx/room/g0;

    iget-object v1, p0, Landroidx/room/h0$a$a;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/room/g0;->f([Ljava/lang/String;)V

    return-void
.end method
