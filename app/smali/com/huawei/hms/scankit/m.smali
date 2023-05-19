.class final Lcom/huawei/hms/scankit/m;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/huawei/hms/scankit/p/Aa;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Lcom/huawei/hms/scankit/a;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:Landroid/graphics/Rect;

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/Aa;Lcom/huawei/hms/scankit/a;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/scankit/p/Aa;",
            "Lcom/huawei/hms/scankit/a;",
            "Ljava/util/Collection<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/aiscan/common/A;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/m;->h:Z

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/m;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/huawei/hms/scankit/m;->b:Lcom/huawei/hms/scankit/p/Aa;

    .line 5
    iput-object p3, p0, Lcom/huawei/hms/scankit/m;->e:Lcom/huawei/hms/scankit/a;

    .line 6
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/huawei/hms/scankit/m;->f:Ljava/util/concurrent/CountDownLatch;

    .line 7
    new-instance p2, Ljava/util/EnumMap;

    const-class p3, Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-direct {p2, p3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    if-eqz p5, :cond_0

    .line 8
    invoke-interface {p2, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 9
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 10
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 11
    const-class p3, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    const-string p3, "preferences_decode_1D_product"

    .line 12
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    sget-object p3, Lcom/huawei/hms/scankit/i;->a:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string p3, "preferences_decode_1D_industrial"

    .line 14
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 15
    sget-object p3, Lcom/huawei/hms/scankit/i;->b:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string p3, "preferences_decode_QR"

    .line 16
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 17
    sget-object p3, Lcom/huawei/hms/scankit/i;->d:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const-string p3, "preferences_decode_Data_Matrix"

    .line 18
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 19
    sget-object p3, Lcom/huawei/hms/scankit/i;->e:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string p3, "preferences_decode_Aztec"

    const/4 p5, 0x0

    .line 20
    invoke-interface {p1, p3, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 21
    sget-object p3, Lcom/huawei/hms/scankit/i;->f:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_6
    const-string p3, "preferences_decode_PDF417"

    .line 22
    invoke-interface {p1, p3, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lcom/huawei/hms/scankit/i;->g:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_7
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_8

    .line 25
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/d;->f:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p2, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_8
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p2, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hints: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeThread"

    invoke-static {p2, p1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/m;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exception"

    const-string v1, "InterruptedException"

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/m;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/m;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/m;->h:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/huawei/hms/scankit/m;->a:Landroid/content/Context;

    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v7, Lcom/huawei/hms/scankit/j;

    iget-object v1, p0, Lcom/huawei/hms/scankit/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/scankit/m;->b:Lcom/huawei/hms/scankit/p/Aa;

    iget-object v3, p0, Lcom/huawei/hms/scankit/m;->e:Lcom/huawei/hms/scankit/a;

    iget-object v4, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    iget-object v5, p0, Lcom/huawei/hms/scankit/m;->g:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/huawei/hms/scankit/m;->h:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/scankit/j;-><init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/Aa;Lcom/huawei/hms/scankit/a;Ljava/util/Map;Landroid/graphics/Rect;Z)V

    iput-object v7, p0, Lcom/huawei/hms/scankit/m;->d:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/m;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
