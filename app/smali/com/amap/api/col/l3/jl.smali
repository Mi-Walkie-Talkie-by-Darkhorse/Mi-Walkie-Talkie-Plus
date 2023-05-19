.class public final Lcom/amap/api/col/l3/jl;
.super Ljava/lang/Object;
.source "CgiManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/jl$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/jk;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/telephony/TelephonyManager;

.field d:J

.field e:Landroid/telephony/CellLocation;

.field f:Z

.field g:Landroid/telephony/PhoneStateListener;

.field h:Ljava/lang/String;

.field i:Z

.field j:Ljava/lang/StringBuilder;

.field k:Landroid/os/HandlerThread;

.field private l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/jk;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/amap/api/col/l3/jj;

.field private q:Ljava/lang/Object;

.field private r:I

.field private s:J

.field private t:Z

.field private u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->m:Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/jl;->n:Ljava/util/ArrayList;

    const/16 v2, -0x71

    .line 6
    iput v2, p0, Lcom/amap/api/col/l3/jl;->o:I

    .line 7
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->p:Lcom/amap/api/col/l3/jj;

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/amap/api/col/l3/jl;->d:J

    .line 10
    iput v0, p0, Lcom/amap/api/col/l3/jl;->r:I

    .line 11
    iput-wide v2, p0, Lcom/amap/api/col/l3/jl;->s:J

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jl;->f:Z

    .line 13
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->g:Landroid/telephony/PhoneStateListener;

    .line 14
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jl;->i:Z

    .line 16
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    .line 17
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->k:Landroid/os/HandlerThread;

    .line 18
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jl;->t:Z

    .line 19
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/jl;->u:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->l:Landroid/content/Context;

    .line 21
    iget-object v2, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "phone"

    .line 22
    invoke-static {p1, v2}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/jl;->c(Landroid/telephony/CellLocation;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/jl;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    const-string v1, "CgiManager"

    invoke-static {p1, v1, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jl;->r()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/jl;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "phone2"

    if-eq p1, v0, :cond_1

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->l:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->q:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->l:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->l:Landroid/content/Context;

    const-string v0, "phone_msim"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :goto_2
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->k:Landroid/os/HandlerThread;

    if-nez p1, :cond_3

    new-instance p1, Lcom/amap/api/col/l3/jl$a;

    const-string v0, "listenerPhoneStateThread"

    invoke-direct {p1, p0, v0}, Lcom/amap/api/col/l3/jl$a;-><init>(Lcom/amap/api/col/l3/jl;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->k:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 24
    :cond_3
    new-instance p1, Lcom/amap/api/col/l3/jj;

    invoke-direct {p1}, Lcom/amap/api/col/l3/jj;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->p:Lcom/amap/api/col/l3/jj;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/jl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/col/l3/jl;->s:J

    return-wide p1
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 35
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    check-cast p1, Landroid/telephony/CellLocation;

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 37
    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    return-object p1

    :catchall_0
    :cond_2
    return-object v0
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    if-eqz v2, :cond_8

    .line 41
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    .line 42
    instance-of v4, v2, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_2

    .line 43
    check-cast v2, Landroid/telephony/CellInfoCdma;

    .line 44
    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3/jk;

    move-result-object p1

    goto :goto_2

    .line 46
    :cond_2
    instance-of v4, v2, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_4

    .line 47
    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 48
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 49
    :cond_3
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3/jk;

    move-result-object p1

    goto :goto_2

    .line 50
    :cond_4
    instance-of v4, v2, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_6

    .line 51
    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .line 52
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 53
    :cond_5
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3/jk;

    move-result-object p1

    goto :goto_2

    .line 54
    :cond_6
    instance-of v4, v2, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_9

    .line 55
    check-cast v2, Landroid/telephony/CellInfoLte;

    .line 56
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    .line 57
    :cond_7
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3/jk;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_b

    .line 58
    :try_start_1
    iget v1, p1, Lcom/amap/api/col/l3/jk;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 59
    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 60
    :try_start_2
    iget v4, p1, Lcom/amap/api/col/l3/jk;->i:I

    iget v5, p1, Lcom/amap/api/col/l3/jk;->e:I

    iget v6, p1, Lcom/amap/api/col/l3/jk;->f:I

    iget v7, p1, Lcom/amap/api/col/l3/jk;->g:I

    iget v8, p1, Lcom/amap/api/col/l3/jk;->h:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_3

    .line 61
    :cond_a
    :try_start_3
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    :try_start_4
    iget v2, p1, Lcom/amap/api/col/l3/jk;->c:I

    iget p1, p1, Lcom/amap/api/col/l3/jk;->d:I

    invoke-virtual {v1, v2, p1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_2
    move-object v1, v0

    :catchall_3
    :goto_3
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :cond_b
    move-object v1, v0

    :goto_4
    if-nez v0, :cond_c

    return-object v1

    :cond_c
    :goto_5
    return-object v0
.end method

.method private static a(IZIIIII)Lcom/amap/api/col/l3/jk;
    .locals 1

    .line 89
    new-instance v0, Lcom/amap/api/col/l3/jk;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3/jk;-><init>(IZ)V

    .line 90
    iput p2, v0, Lcom/amap/api/col/l3/jk;->a:I

    .line 91
    iput p3, v0, Lcom/amap/api/col/l3/jk;->b:I

    .line 92
    iput p4, v0, Lcom/amap/api/col/l3/jk;->c:I

    .line 93
    iput p5, v0, Lcom/amap/api/col/l3/jk;->d:I

    .line 94
    iput p6, v0, Lcom/amap/api/col/l3/jk;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3/jk;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/amap/api/col/l3/ki;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 97
    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    .line 98
    :try_start_1
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v7, v2

    move v6, v3

    goto :goto_0

    :catchall_0
    const/4 v3, 0x0

    :catchall_1
    move v6, v3

    const/4 v7, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v10

    move v5, p2

    invoke-static/range {v4 .. v10}, Lcom/amap/api/col/l3/jl;->a(IZIIIII)Lcom/amap/api/col/l3/jk;

    move-result-object p1

    .line 100
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->g:I

    .line 101
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->h:I

    .line 102
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->i:I

    .line 103
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->e:I

    .line 104
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->f:I

    return-object p1
.end method

.method private static a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3/jk;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    .line 77
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v7

    const/4 v1, 0x1

    move v2, p1

    .line 78
    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/l3/jl;->a(IZIIIII)Lcom/amap/api/col/l3/jk;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3/jk;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    .line 86
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v7

    const/4 v1, 0x3

    move v2, p1

    .line 87
    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/l3/jl;->a(IZIIIII)Lcom/amap/api/col/l3/jk;

    move-result-object p0

    .line 88
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/jk;->o:I

    return-object p0
.end method

.method private static a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3/jk;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    .line 81
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v7

    const/4 v1, 0x4

    move v2, p1

    .line 82
    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/l3/jl;->a(IZIIIII)Lcom/amap/api/col/l3/jk;

    move-result-object p0

    .line 83
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/jk;->o:I

    return-object p0
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3/jk;
    .locals 4

    .line 63
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/jk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/jk;-><init>(IZ)V

    .line 64
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/l3/jk;->a:I

    .line 65
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3/jk;->b:I

    const-string p1, "getLac"

    new-array v1, v2, [Ljava/lang/Object;

    .line 66
    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3/jk;->c:I

    .line 67
    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3/jk;->d:I

    .line 68
    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result p0

    .line 69
    invoke-static {p0}, Lcom/amap/api/col/l3/ki;->a(I)I

    move-result p0

    iput p0, v0, Lcom/amap/api/col/l3/jk;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "CgiManager"

    const-string v0, "getGsm"

    .line 70
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/jl;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/api/col/l3/jl;->u:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    .locals 6

    if-eqz p1, :cond_6

    .line 22
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v3, Lcom/amap/api/col/l3/jk;

    invoke-direct {v3, v0, v0}, Lcom/amap/api/col/l3/jk;-><init>(IZ)V

    const/4 v4, 0x0

    aget-object v5, p2, v4

    invoke-static {v5}, Lcom/amap/api/col/l3/ki;->h(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/amap/api/col/l3/jk;->a:I

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/amap/api/col/l3/jk;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v3, Lcom/amap/api/col/l3/jk;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v3, Lcom/amap/api/col/l3/jk;->d:I

    iget p1, p0, Lcom/amap/api/col/l3/jl;->o:I

    iput p1, v3, Lcom/amap/api/col/l3/jk;->j:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    return-void

    .line 27
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-gt p1, p3, :cond_3

    .line 28
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    new-array p3, v4, [Ljava/lang/Object;

    const-string v0, "getNeighboringCellInfo"

    invoke-static {p1, v0, p3}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    :cond_3
    if-eqz v1, :cond_6

    .line 29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 30
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/NeighboringCellInfo;

    if-eqz p3, :cond_5

    .line 31
    invoke-virtual {p3}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v0

    invoke-virtual {p3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/jl;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-static {p3, p2}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3/jk;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 33
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 34
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/jl;I)V
    .locals 1

    const/16 v0, -0x71

    if-ne p1, v0, :cond_0

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/jl;->o:I

    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/jl;->o:I

    iget p1, p0, Lcom/amap/api/col/l3/jl;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3/jk;

    iget p0, p0, Lcom/amap/api/col/l3/jl;->o:I

    iput p0, p1, Lcom/amap/api/col/l3/jk;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v0, 0xffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(II)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v1, 0xffff

    if-gt p0, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const p0, 0xfffffff

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static a(Landroid/telephony/CellIdentityCdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityGsm;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3/jl;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3/jl;->b(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityLte;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3/jl;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3/jl;->b(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityWcdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3/jl;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3/jl;->b(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v0, 0xffff

    if-eq p0, v0, :cond_1

    const v0, 0xfffffff

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/telephony/CellLocation;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellLocation;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    :cond_0
    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3/jl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/jl;->t:Z

    return p0
.end method

.method private c(Landroid/telephony/CellLocation;)I
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jl;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of p1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p1, "android.telephony.cdma.CdmaCellLocation"

    .line 7
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Utils"

    const-string v2, "getCellLocT"

    .line 8
    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private n()Landroid/telephony/CellLocation;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 3
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    .line 7
    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1
.end method

.method private o()Landroid/telephony/CellLocation;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/jl;->n()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 3
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->d()I

    move-result v2

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/jl;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getCellLocationExt"

    invoke-direct {p0, v0, v3, v2}, Lcom/amap/api/col/l3/jl;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "getCellLocationGemini"

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/l3/jl;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_5
    return-object v0
.end method

.method private p()Landroid/telephony/CellLocation;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->q:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/jl;->q()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getCellLocation"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0, v2, v4}, Lcom/amap/api/col/l3/jl;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/col/l3/jl;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-string v2, "getCellLocationGemini"

    new-array v5, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/col/l3/jl;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    const-string v2, "getAllCellInfo"

    new-array v5, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/col/l3/jl;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    return-object v1

    :catchall_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    .line 9
    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private q()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/amap/api/col/l3/jl;->r:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "android.telephony.TelephonyManager2"

    goto :goto_0

    :cond_1
    const-string v1, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :cond_2
    const-string v1, "android.telephony.TelephonyManager"

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v3, "getSim2TmClass"

    .line 4
    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method private r()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/jl;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 3
    :goto_0
    iget v0, p0, Lcom/amap/api/col/l3/jl;->r:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/jl;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :catchall_1
    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3/jl;->r:I

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/jk;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(ZZ)V
    .locals 13

    const-string v0, "CgiManager"

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/jl;->i:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/col/l3/jl;->d:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 7
    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jl;->i:Z

    const/4 v5, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/l3/jl;->o()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3/jl;->p()Landroid/telephony/CellLocation;

    move-result-object v1

    :cond_3
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v1, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/amap/api/col/l3/jl;->s:J

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/amap/api/col/l3/jl;->s:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    iput-object v5, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jl;->f:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    :cond_6
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    add-int/2addr p2, v2

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    if-nez v1, :cond_7

    const/16 v1, 0x32

    if-lt p2, v1, :cond_6

    :cond_7
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jl;->f:Z

    iget-object p2, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    invoke-static {p2}, Lcom/amap/api/col/l3/ki;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/jl;->c(Landroid/telephony/CellLocation;)I

    move-result v1

    if-eq v1, v2, :cond_10

    if-eq v1, v4, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    if-eqz v1, :cond_11

    iget-object v6, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/amap/api/col/l3/ki;->d()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v7, 0x5

    if-lt v6, v7, :cond_11

    :try_start_3
    iget-object v6, p0, Lcom/amap/api/col/l3/jl;->q:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_b

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mGsmCellLoc"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_9
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v6, :cond_a

    invoke-direct {p0, v6}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0, v6, p2, p1}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, 0x1

    goto :goto_4

    :catchall_0
    :cond_a
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_b

    goto/16 :goto_6

    :cond_b
    :try_start_5
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/jl;->b(Landroid/telephony/CellLocation;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_6

    :cond_c
    iput v4, p0, Lcom/amap/api/col/l3/jl;->a:I

    new-instance p1, Lcom/amap/api/col/l3/jk;

    invoke-direct {p1, v4, v2}, Lcom/amap/api/col/l3/jk;-><init>(IZ)V

    aget-object v6, p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/amap/api/col/l3/jk;->a:I

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->b:I

    const-string p2, "getSystemId"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v6}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->g:I

    const-string p2, "getNetworkId"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v6}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->h:I

    const-string p2, "getBaseStationId"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v6}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->i:I

    iget p2, p0, Lcom/amap/api/col/l3/jl;->o:I

    iput p2, p1, Lcom/amap/api/col/l3/jk;->j:I

    const-string p2, "getBaseStationLatitude"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v6}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->e:I

    const-string p2, "getBaseStationLongitude"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v6}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/jk;->f:I

    iget v1, p1, Lcom/amap/api/col/l3/jk;->e:I

    if-ne v1, p2, :cond_d

    if-lez v1, :cond_d

    const/4 v6, 0x1

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    :goto_5
    if-ltz v1, :cond_e

    if-ltz p2, :cond_e

    const v7, 0x7fffffff

    if-eq v1, v7, :cond_e

    if-eq p2, v7, :cond_e

    if-eqz v6, :cond_f

    :cond_e
    iput v3, p1, Lcom/amap/api/col/l3/jk;->e:I

    iput v3, p1, Lcom/amap/api/col/l3/jk;->f:I

    :cond_f
    iget-object p2, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    :try_start_6
    const-string p2, "hdlCdmaLocChange"

    invoke-static {p1, v0, p2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, p2, p1}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_11
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/amap/api/col/l3/ki;->d()I

    move-result p1

    const/16 p2, 0x12

    if-lt p1, p2, :cond_1c

    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1c

    iget-object p2, p0, Lcom/amap/api/col/l3/jl;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->p:Lcom/amap/api/col/l3/jj;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iput-object v5, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_8

    :catch_1
    move-exception v5

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v12, v5

    move-object v5, p1

    move-object p1, v12

    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    :goto_8
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_12
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_1b

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v7, :cond_1a

    :try_start_b
    invoke-virtual {v7}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v8

    instance-of v9, v7, Landroid/telephony/CellInfoCdma;

    const-wide/32 v10, 0xffff

    if-eqz v9, :cond_14

    check-cast v7, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v7}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v9

    invoke-static {v9}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_b

    :cond_13
    invoke-direct {p0, v7, v8}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3/jk;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amap/api/col/l3/jj;->a(Lcom/amap/api/col/l3/jk;)J

    move-result-wide v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :goto_a
    long-to-int v9, v8

    int-to-short v8, v9

    iput-short v8, v7, Lcom/amap/api/col/l3/jk;->l:S

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    instance-of v9, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_16

    check-cast v7, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v7}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v9

    invoke-static {v9}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_b

    :cond_15
    invoke-static {v7, v8}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3/jk;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amap/api/col/l3/jj;->a(Lcom/amap/api/col/l3/jk;)J

    move-result-wide v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_a

    :cond_16
    instance-of v9, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_18

    check-cast v7, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v7}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v9

    invoke-static {v9}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {v7, v8}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3/jk;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amap/api/col/l3/jj;->a(Lcom/amap/api/col/l3/jk;)J

    move-result-wide v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_a

    :cond_18
    instance-of v9, v7, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_1a

    check-cast v7, Landroid/telephony/CellInfoLte;

    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v9

    invoke-static {v9}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_b

    :cond_19
    invoke-static {v7, v8}, Lcom/amap/api/col/l3/jl;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3/jk;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amap/api/col/l3/jj;->a(Lcom/amap/api/col/l3/jk;)J

    move-result-wide v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_a

    :catchall_2
    :cond_1a
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    :cond_1b
    if-eqz p2, :cond_1c

    :try_start_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1c

    iget p1, p0, Lcom/amap/api/col/l3/jl;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/amap/api/col/l3/jl;->a:I

    invoke-virtual {v1, p2}, Lcom/amap/api/col/l3/jj;->a(Ljava/util/ArrayList;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    :cond_1c
    :try_start_d
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget p1, p0, Lcom/amap/api/col/l3/jl;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/amap/api/col/l3/jl;->a:I

    .line 8
    :cond_1d
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3/jl;->d:J

    .line 9
    :cond_1e
    iget-boolean p1, p0, Lcom/amap/api/col/l3/jl;->i:Z

    if-eqz p1, :cond_1f

    .line 10
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jl;->i()V

    return-void

    .line 11
    :cond_1f
    iget p1, p0, Lcom/amap/api/col/l3/jl;->a:I

    and-int/lit8 p1, p1, 0x3

    if-eq p1, v2, :cond_21

    if-eq p1, v4, :cond_20

    goto :goto_c

    :cond_20
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    iput v3, p0, Lcom/amap/api/col/l3/jl;->a:I

    goto :goto_c

    :cond_21
    iget-object p1, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    iput v3, p0, Lcom/amap/api/col/l3/jl;->a:I
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :cond_22
    :goto_c
    return-void

    :catchall_4
    move-exception p1

    const-string p2, "refresh"

    .line 12
    invoke-static {p1, v0, p2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    return-void
.end method

.method final a(Landroid/telephony/CellLocation;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/jl;->c(Landroid/telephony/CellLocation;)I

    move-result v1

    const-string v2, "CgiManager"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v1, "getSystemId"

    new-array v4, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {p1, v1, v4}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "getNetworkId"

    new-array v4, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {p1, v1, v4}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "getBaseStationId"

    new-array v4, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {p1, v1, v4}, Lcom/amap/api/col/l3/kd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    move v3, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "cgiUseful Cgi.I_CDMA_T"

    .line 18
    invoke-static {p1, v2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_4
    :try_start_1
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 20
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    invoke-static {v0, p1}, Lcom/amap/api/col/l3/jl;->a(II)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "cgiUseful Cgi.I_GSM_T"

    .line 21
    invoke-static {p1, v2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/jk;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Lcom/amap/api/col/l3/jk;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jl;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/jk;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final d()Lcom/amap/api/col/l3/jk;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jl;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->n:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/jk;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final g()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->p:Lcom/amap/api/col/l3/jj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jj;->a()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/amap/api/col/l3/jl;->s:J

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->u:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jl;->t:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->g:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 7
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "destroy"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->g:Landroid/telephony/PhoneStateListener;

    .line 10
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->k:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 12
    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->k:Landroid/os/HandlerThread;

    :cond_1
    const/16 v1, -0x71

    .line 13
    iput v1, p0, Lcom/amap/api/col/l3/jl;->o:I

    .line 14
    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    .line 15
    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->q:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v1

    .line 16
    monitor-exit v0

    throw v1
.end method

.method final i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->e:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jl;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jl;->i()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    iget v0, p0, Lcom/amap/api/col/l3/jl;->a:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/jk;

    iget v3, v3, Lcom/amap/api/col/l3/jk;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3/jk;

    iget v4, v4, Lcom/amap/api/col/l3/jk;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3/jl;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/jk;

    iget v3, v3, Lcom/amap/api/col/l3/jk;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/jl;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return v0

    .line 4
    :catchall_0
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/jl;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/ki;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/amap/api/col/l3/ki;->a(Landroid/net/NetworkInfo;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_2
    return v0

    :catchall_1
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
