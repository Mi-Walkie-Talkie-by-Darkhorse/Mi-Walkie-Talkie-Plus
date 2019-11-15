.class final Lcom/amap/api/mapcore/util/ix$1;
.super Landroid/telephony/PhoneStateListener;
.source "CgiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ix;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ix;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ix;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    iput-object p1, v0, Lcom/amap/api/mapcore/util/ix;->e:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/ix;->f:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ix;->a(Lcom/amap/api/mapcore/util/ix;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ix;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ix;->f()V
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
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    iget v1, v1, Lcom/amap/api/mapcore/util/ix;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/ix;->a(Lcom/amap/api/mapcore/util/ix;I)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/jg;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/jg;->a(I)I
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
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    iget v1, v1, Lcom/amap/api/mapcore/util/ix;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ix$1;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/ix;->a(Lcom/amap/api/mapcore/util/ix;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/jg;->a(I)I

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
