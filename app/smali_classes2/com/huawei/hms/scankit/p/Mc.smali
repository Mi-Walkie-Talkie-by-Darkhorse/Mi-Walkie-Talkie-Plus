.class Lcom/huawei/hms/scankit/p/Mc;
.super Landroid/util/SparseArray;
.source "HaLog60001.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Kc$b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/p/Kc$b$b;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Mc;->a:Lcom/huawei/hms/scankit/p/Kc$b$b;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
