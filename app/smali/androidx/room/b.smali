.class public final synthetic Landroidx/room/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/a/a/c/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/b;->a:Ljava/lang/String;

    check-cast p1, La/g/a/b;

    invoke-static {v0, p1}, Landroidx/room/x$a;->f(Ljava/lang/String;La/g/a/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
