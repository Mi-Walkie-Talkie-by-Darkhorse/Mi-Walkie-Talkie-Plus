.class Lcom/huawei/hms/scankit/p/Kc$b$b;
.super Ljava/lang/Object;
.source "HaLog60001.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Kc$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/huawei/hms/scankit/p/Kc$b;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->c:Lcom/huawei/hms/scankit/p/Kc$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    .line 3
    new-instance p1, Lcom/huawei/hms/scankit/p/Mc;

    invoke-direct {p1, p0}, Lcom/huawei/hms/scankit/p/Mc;-><init>(Lcom/huawei/hms/scankit/p/Kc$b$b;)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->b:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b;Lcom/huawei/hms/scankit/p/Ic;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b$b;-><init>(Lcom/huawei/hms/scankit/p/Kc$b;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b$b;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Kc$b$b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/huawei/hms/scankit/p/Nc;

    invoke-direct {v1, p0}, Lcom/huawei/hms/scankit/p/Nc;-><init>(Lcom/huawei/hms/scankit/p/Kc$b$b;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b$b;->a(I)V

    return-void
.end method
