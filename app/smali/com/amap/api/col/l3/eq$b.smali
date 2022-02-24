.class public final Lcom/amap/api/col/l3/eq$b;
.super Lcom/amap/api/col/l3/ds;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/ds<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/amap/api/col/l3/eq;


# direct methods
.method protected constructor <init>(Lcom/amap/api/col/l3/eq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/eq$b;->d:Lcom/amap/api/col/l3/eq;

    invoke-direct {p0}, Lcom/amap/api/col/l3/ds;-><init>()V

    return-void
.end method

.method private varargs c([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/eq$b;->d:Lcom/amap/api/col/l3/eq;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/eq;->f()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/eq$b;->d:Lcom/amap/api/col/l3/eq;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/eq;->e()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/eq$b;->d:Lcom/amap/api/col/l3/eq;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/eq;->d()V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/eq$b;->d:Lcom/amap/api/col/l3/eq;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/eq;->b()V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/eq$b;->d:Lcom/amap/api/col/l3/eq;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/eq;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/eq$b;->c([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
