.class Lcom/huawei/hms/scankit/p/Kc$b$a;
.super Ljava/lang/Object;
.source "HaLog60001.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Kc$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:[Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:[Ljava/lang/String;

.field private d:[J

.field final synthetic e:Lcom/huawei/hms/scankit/p/Kc$b;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->e:Lcom/huawei/hms/scankit/p/Kc$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    new-array v0, p1, [Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "lt10K:"

    const-string v4, "lt100K:"

    const-string v5, "lt1M:"

    const-string v6, "lt3M:"

    const-string v7, "lt10M:"

    const-string v8, "lt40M:"

    const-string v9, "gt40M:"

    .line 4
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->c:[Ljava/lang/String;

    new-array p1, p1, [J

    .line 5
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->d:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x2800
        0x19000
        0x100000
        0x300000
        0xa00000
        0x2800000
        0x7fffffffffffffffL
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b;Lcom/huawei/hms/scankit/p/Ic;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b$a;-><init>(Lcom/huawei/hms/scankit/p/Kc$b;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b$a;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Kc$b$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 7

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    int-to-long v2, p1

    .line 12
    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->d:[J

    aget-wide v5, v4, v0

    cmp-long v4, v2, v5

    if-gtz v4, :cond_0

    .line 13
    aget-object p1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b$a;->a(I)V

    return-void
.end method
