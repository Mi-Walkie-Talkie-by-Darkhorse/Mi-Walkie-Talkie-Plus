.class final Lcom/amap/api/col/l3/jl$1;
.super Landroid/telephony/PhoneStateListener;
.source "CgiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/jl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/jl;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/jl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    iput-object p1, v0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3/jl;->f:Z

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jl;->a(Lcom/amap/api/col/l3/jl;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/jl;->i()V

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/amap/api/col/l3/jl;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 3

    const/16 v0, -0x71

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    iget v1, v1, Lcom/amap/api/col/l3/jl;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(I)I

    move-result v0

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/jl;->a(Lcom/amap/api/col/l3/jl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x71

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    iget v1, v1, Lcom/amap/api/col/l3/jl;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(I)I

    move-result v0

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/jl$1;->a:Lcom/amap/api/col/l3/jl;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/jl;->a(Lcom/amap/api/col/l3/jl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
