.class final Lcom/amap/api/col/sl/aa$a;
.super Landroid/os/Handler;
.source "ManifestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/col/sl/aa;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/sl/aa;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/sl/aa$a;->b:Lcom/amap/api/col/sl/aa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "handleMessage"

    iput-object v0, p0, Lcom/amap/api/col/sl/aa$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ab;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/sl/ab;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/sl/ab;-><init>(ZZ)V

    :cond_1
    invoke-static {}, Lcom/amap/api/col/sl/aa;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ab;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/cm;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)Lcom/amap/api/col/sl/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ab;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/sl/aa;->a:Lcom/amap/api/col/sl/bz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ManifestConfig"

    iget-object v2, p0, Lcom/amap/api/col/sl/aa$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
