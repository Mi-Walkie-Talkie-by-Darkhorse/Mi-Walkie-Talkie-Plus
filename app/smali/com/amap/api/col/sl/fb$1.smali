.class final Lcom/amap/api/col/sl/fb$1;
.super Landroid/telephony/PhoneStateListener;
.source "CgiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/fb;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/fb;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/fb;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    iput-object p1, v0, Lcom/amap/api/col/sl/fb;->e:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/sl/fb;->f:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fb;->a(Lcom/amap/api/col/sl/fb;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fb;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/sl/fb;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 2

    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    iget v1, v1, Lcom/amap/api/col/sl/fb;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/fb;->a(Lcom/amap/api/col/sl/fb;I)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    iget v1, v1, Lcom/amap/api/col/sl/fb;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/sl/fb$1;->a:Lcom/amap/api/col/sl/fb;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/fb;->a(Lcom/amap/api/col/sl/fb;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
