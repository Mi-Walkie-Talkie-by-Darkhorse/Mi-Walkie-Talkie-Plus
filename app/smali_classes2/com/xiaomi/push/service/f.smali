.class Lcom/xiaomi/push/service/f;
.super Landroid/util/SparseArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/xiaomi/push/service/av$a<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    sget-object p1, Lcom/xiaomi/push/service/av;->a:Lcom/xiaomi/push/service/av$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/av;->b:Lcom/xiaomi/push/service/av$a;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/service/av$a;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/av;->e:Lcom/xiaomi/push/service/av$a;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/push/service/av;->d:Lcom/xiaomi/push/service/av$a;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
