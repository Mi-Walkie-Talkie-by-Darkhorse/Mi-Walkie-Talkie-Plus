.class public abstract Lcom/amap/api/mapcore/util/gj;
.super Ljava/lang/Object;
.source "LogProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/gj$a;,
        Lcom/amap/api/mapcore/util/gj$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/gj$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/amap/api/mapcore/util/fx;

.field private c:I

.field private d:Lcom/amap/api/mapcore/util/hl;

.field private e:Lcom/amap/api/mapcore/util/hk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/gj;->a:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/mapcore/util/gj;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/id;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/fr;->e(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore/util/gu;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"pinfo\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/amap/api/mapcore/util/gj;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"els\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gu;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amap/api/mapcore/util/gj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gu;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    const-string v4, "{\"log\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/gj$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amap/api/mapcore/util/gj;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/amap/api/mapcore/util/gt;I)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/gd;->a(I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore/util/gt;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/mapcore/util/gj;->a(Ljava/util/List;Lcom/amap/api/mapcore/util/gt;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "lg"

    const-string v2, "pdf"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/gt;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    invoke-static {p4}, Lcom/amap/api/mapcore/util/gd;->b(I)Lcom/amap/api/mapcore/util/gu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/gu;->a(I)V

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/gu;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/amap/api/mapcore/util/gu;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/gt;->a(Lcom/amap/api/mapcore/util/gu;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/api/mapcore/util/gt;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore/util/gu;",
            ">;",
            "Lcom/amap/api/mapcore/util/gt;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/gj;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/amap/api/mapcore/util/gt;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/gu;->a(I)V

    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore/util/gt;->b(Lcom/amap/api/mapcore/util/gu;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/gt;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p3}, Lcom/amap/api/mapcore/util/gd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hk$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return v0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x5000

    :try_start_4
    invoke-static {v4, v0, v5, v6, v7}, Lcom/amap/api/mapcore/util/hk;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/hk;

    move-result-object v2

    invoke-virtual {p0, p5}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/gt;)Lcom/amap/api/mapcore/util/hl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/hk;->a(Lcom/amap/api/mapcore/util/hl;)V

    invoke-virtual {v2, p2}, Lcom/amap/api/mapcore/util/hk;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk$b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hk$b;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_7
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v3

    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    :try_start_8
    invoke-static {p4}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, p2}, Lcom/amap/api/mapcore/util/hk;->b(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk$a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore/util/hk$a;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/hk$a;->a()V

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->e()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x1

    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hk$b;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    :cond_8
    :goto_6
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_b
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v3

    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_9
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_9

    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a

    :cond_9
    :goto_7
    if-eqz v1, :cond_a

    :try_start_e
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hk$b;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_b

    :cond_a
    :goto_8
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_f
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c

    :cond_b
    :goto_9
    const/4 v0, 0x0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_d
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v3, :cond_c

    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_f

    :cond_c
    :goto_a
    if-eqz v1, :cond_d

    :try_start_12
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hk$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_10

    :cond_d
    :goto_b
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_13
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_9

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_b

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_e

    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_11

    :cond_e
    :goto_c
    if-eqz v1, :cond_f

    :try_start_15
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hk$b;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_12

    :cond_f
    :goto_d
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v1

    if-nez v1, :cond_10

    :try_start_16
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hk;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_13

    :cond_10
    :goto_e
    throw v0

    :catch_11
    move-exception v3

    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_13
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/amap/api/mapcore/util/gj;->b([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fy;->c([B)[B

    move-result-object v2

    new-instance v3, Lcom/amap/api/mapcore/util/ge;

    invoke-direct {v3, v2}, Lcom/amap/api/mapcore/util/ge;-><init>([B)V

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/hp;->a()Lcom/amap/api/mapcore/util/hp;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/hp;->b(Lcom/amap/api/mapcore/util/hv;)[B

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/amap/api/mapcore/util/fy;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "lg"

    const-string v4, "pru"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->e()I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_2

    :goto_1
    const-string v1, "lg"

    const-string v3, "pru"

    invoke-static {v2, v1, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/gd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v1, v3, v4, v5}, Lcom/amap/api/mapcore/util/hk;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/hk;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "lg"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "lg"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v4, "at "

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "uncaughtException"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/hk;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "lg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "EImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMiLA=="

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ga;->a(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "lg"

    const-string v3, "gpi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "lg"

    const-string v4, "rlg1"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "lg"

    const-string v3, "rlg2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v3, p1}, Lcom/amap/api/mapcore/util/hk;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk$b;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "lg"

    const-string v3, "rlg2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v3, "lg"

    const-string v4, "rlg1"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/hk$b;->a(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    :goto_3
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v1

    :goto_4
    :try_start_9
    const-string v4, "lg"

    const-string v5, "rlg"

    invoke-static {v1, v4, v5}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_5
    :goto_5
    if-eqz v3, :cond_1

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    const-string v2, "lg"

    const-string v3, "rlg2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fy;->a([B)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_7

    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_7
    :goto_6
    if-eqz v3, :cond_1

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    const-string v2, "lg"

    const-string v3, "rlg2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_7
    move-exception v1

    const-string v2, "lg"

    const-string v4, "rlg1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_8
    move-exception v1

    const-string v2, "lg"

    const-string v4, "rlg1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_7
    if-eqz v2, :cond_8

    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    :cond_9
    :goto_9
    throw v0

    :catch_9
    move-exception v1

    const-string v2, "lg"

    const-string v4, "rlg1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_a
    move-exception v1

    const-string v2, "lg"

    const-string v3, "rlg2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_4

    :catch_c
    move-exception v1

    move-object v2, v0

    goto :goto_4
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/gj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fr;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "lg"

    const-string v3, "gpi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/gj;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/fx;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/gv;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/amap/api/mapcore/util/gv;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gv;->a()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore/util/gt;)Lcom/amap/api/mapcore/util/hl;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gj;->d:Lcom/amap/api/mapcore/util/hl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/gj$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/gj$a;-><init>(Lcom/amap/api/mapcore/util/gj;Lcom/amap/api/mapcore/util/gt;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gj;->d:Lcom/amap/api/mapcore/util/hl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gj;->d:Lcom/amap/api/mapcore/util/hl;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/fu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/gj;->b(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/fx;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/gj;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/gj;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/fx;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/fx;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/amap/api/mapcore/util/gj;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/fx;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.amap.api.col"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/fy;->a()Lcom/amap/api/mapcore/util/fx;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/fx;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Lcom/amap/api/mapcore/util/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/gj;->b:Lcom/amap/api/mapcore/util/fx;

    return-void
.end method

.method a(Lcom/amap/api/mapcore/util/fx;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    invoke-virtual/range {p0 .. p1}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/fx;)V

    invoke-static {}, Lcom/amap/api/mapcore/util/id;->a()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/gj;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/amap/api/mapcore/util/fo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/gj;->c()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_2

    const-string v7, "class:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p6, :cond_3

    const-string v7, " method:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/amap/api/mapcore/util/id;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/gj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/gj;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v11, Lcom/amap/api/mapcore/util/gt;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/amap/api/mapcore/util/gt;-><init>(Landroid/content/Context;)V

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/mapcore/util/gj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/gt;)Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v10, p0

    move-object v13, v8

    move v14, v5

    invoke-direct/range {v10 .. v15}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/gt;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method a(Lcom/amap/api/mapcore/util/fx;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p3}, Lcom/amap/api/mapcore/util/gj;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/fx;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/gj;->c:I

    invoke-static {v0}, Lcom/amap/api/mapcore/util/gd;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/gj;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/gj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/id;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gj;->b:Lcom/amap/api/mapcore/util/fx;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/id;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/fo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ANR"

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gj;->c()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/id;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/amap/api/mapcore/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/gj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gj;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v9, Lcom/amap/api/mapcore/util/gt;

    invoke-direct {v9, p1}, Lcom/amap/api/mapcore/util/gt;-><init>(Landroid/content/Context;)V

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/mapcore/util/gj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/gt;)Z

    move-result v13

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gj;->b:Lcom/amap/api/mapcore/util/fx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v10

    move-object v8, p0

    move-object v11, v6

    move v12, v3

    invoke-direct/range {v8 .. v13}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/gt;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/gj;->c:I

    return v0
.end method

.method c(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gj;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/gj;->f(Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/mapcore/util/gt;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/gt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gj;->c()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore/util/gj;->a(Lcom/amap/api/mapcore/util/gt;I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gj;->c()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/gd;->a(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/gt;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "lg"

    const-string v2, "pul"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/amap/api/mapcore/util/gj;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    monitor-exit v1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/amap/api/mapcore/util/gj;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gj;->c()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/mapcore/util/gj;->a(Ljava/util/List;Lcom/amap/api/mapcore/util/gt;I)V

    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gj;->e:Lcom/amap/api/mapcore/util/hk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hk;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "lg"

    const-string v2, "cdru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "lg"

    const-string v2, "cdru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
