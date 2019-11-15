.class public Lcom/amap/api/mapcore/util/ei$b;
.super Lcom/amap/api/mapcore/util/dj;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dj",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/amap/api/mapcore/util/ei;


# direct methods
.method protected constructor <init>(Lcom/amap/api/mapcore/util/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ei$b;->d:Lcom/amap/api/mapcore/util/ei;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dj;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ei$b;->d([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs d([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei$b;->d:Lcom/amap/api/mapcore/util/ei;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ei;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei$b;->d:Lcom/amap/api/mapcore/util/ei;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ei;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei$b;->d:Lcom/amap/api/mapcore/util/ei;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ei;->d()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei$b;->d:Lcom/amap/api/mapcore/util/ei;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ei;->e()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ei$b;->d:Lcom/amap/api/mapcore/util/ei;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ei;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
