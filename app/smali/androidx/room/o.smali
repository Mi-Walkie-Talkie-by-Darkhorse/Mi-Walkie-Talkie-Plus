.class public abstract Landroidx/room/o;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroidx/room/RoomDatabase;

.field private volatile c:La/g/a/f;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Landroidx/room/o;->b:Landroidx/room/RoomDatabase;

    return-void
.end method

.method private a(Z)La/g/a/f;
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/room/o;->c:La/g/a/f;

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/room/o;->d()La/g/a/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/o;->c:La/g/a/f;

    :cond_0
    iget-object p1, p0, Landroidx/room/o;->c:La/g/a/f;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/room/o;->d()La/g/a/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private d()La/g/a/f;
    .locals 2

    invoke-virtual {p0}, Landroidx/room/o;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/o;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->a(Ljava/lang/String;)La/g/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()La/g/a/f;
    .locals 3

    invoke-virtual {p0}, Landroidx/room/o;->b()V

    iget-object v0, p0, Landroidx/room/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/room/o;->a(Z)La/g/a/f;

    move-result-object v0

    return-object v0
.end method

.method public a(La/g/a/f;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/o;->c:La/g/a/f;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/room/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Landroidx/room/o;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->a()V

    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method
