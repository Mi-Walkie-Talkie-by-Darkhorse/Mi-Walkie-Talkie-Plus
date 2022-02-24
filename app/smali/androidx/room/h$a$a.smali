.class Landroidx/room/h$a$a;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/h$a;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroidx/room/h$a;


# direct methods
.method constructor <init>(Landroidx/room/h$a;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/h$a$a;->b:Landroidx/room/h$a;

    iput-object p2, p0, Landroidx/room/h$a$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/h$a$a;->b:Landroidx/room/h$a;

    iget-object v0, v0, Landroidx/room/h$a;->a:Landroidx/room/h;

    iget-object v0, v0, Landroidx/room/h;->d:Landroidx/room/g;

    iget-object v1, p0, Landroidx/room/h$a$a;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/room/g;->a([Ljava/lang/String;)V

    return-void
.end method
