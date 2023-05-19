.class public final synthetic Landroidx/room/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/a/a/c/a;


# instance fields
.field public final synthetic a:Landroidx/room/RoomDatabase;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/r;->a:Landroidx/room/RoomDatabase;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/r;->a:Landroidx/room/RoomDatabase;

    check-cast p1, La/g/a/b;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->v(La/g/a/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
