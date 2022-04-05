.class public final Lcom/amap/api/col/l3/la;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/la$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/kz;",
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
            "Lcom/amap/api/col/l3/kz;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/amap/api/col/l3/ky;

.field private q:Ljava/lang/Object;

.field private r:I

.field private s:J

.field private t:Z

.field private u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/la;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->m:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/la;->n:Ljava/util/ArrayList;

    const/16 v2, -0x71

    iput v2, p0, Lcom/amap/api/col/l3/la;->o:I

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->p:Lcom/amap/api/col/l3/ky;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/l3/la;->d:J

    iput v0, p0, Lcom/amap/api/col/l3/la;->r:I

    iput-wide v2, p0, Lcom/amap/api/col/l3/la;->s:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3/la;->f:Z

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->g:Landroid/telephony/PhoneStateListener;

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/amap/api/col/l3/la;->i:Z

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->j:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->k:Landroid/os/HandlerThread;

    iput-boolean v0, p0, Lcom/amap/api/col/l3/la;->t:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/la;->u:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amap/api/col/l3/la;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "phone"

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/lj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/la;->c(Landroid/telephony/CellLocation;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/la;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    const-string v1, "CgiManager"

    invoke-static {p1, v1, v1}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/amap/api/col/l3/la;->a:I

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/la;->j()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/la;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "phone2"

    if-eq p1, v0, :cond_1

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3/la;->l:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/lj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/amap/api/col/l3/la;->q:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/la;->l:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/lj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/la;->l:Landroid/content/Context;

    const-string v0, "phone_msim"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/lj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :goto_2
    iget-object p1, p0, Lcom/amap/api/col/l3/la;->k:Landroid/os/HandlerThread;

    if-nez p1, :cond_3

    new-instance p1, Lcom/amap/api/col/l3/la$a;

    const-string v0, "listenerPhoneStateThread"

    invoke-direct {p1, p0, v0}, Lcom/amap/api/col/l3/la$a;-><init>(Lcom/amap/api/col/l3/la;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/la;->k:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_3
    new-instance p1, Lcom/amap/api/col/l3/ky;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ky;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/la;->p:Lcom/amap/api/col/l3/ky;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/la;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3/la;->s:J

    return-wide p1
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/lh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/telephony/CellLocation;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    if-eqz v2, :cond_8

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    instance-of v4, v2, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_2

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3/kz;

    move-result-object p1

    goto :goto_2

    :cond_2
    instance-of v4, v2, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_4

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3/kz;

    move-result-object p1

    goto :goto_2

    :cond_4
    instance-of v4, v2, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_6

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3/kz;

    move-result-object p1

    goto :goto_2

    :cond_6
    instance-of v4, v2, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_9

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3/kz;

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

    :try_start_1
    iget v1, p1, Lcom/amap/api/col/l3/kz;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget v4, p1, Lcom/amap/api/col/l3/kz;->i:I

    iget v5, p1, Lcom/amap/api/col/l3/kz;->e:I

    iget v6, p1, Lcom/amap/api/col/l3/kz;->f:I

    iget v7, p1, Lcom/amap/api/col/l3/kz;->g:I

    iget v8, p1, Lcom/amap/api/col/l3/kz;->h:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_3

    :cond_a
    :try_start_3
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget v2, p1, Lcom/amap/api/col/l3/kz;->c:I

    iget p1, p1, Lcom/amap/api/col/l3/kz;->d:I

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

.method private static a(IZIIIII)Lcom/amap/api/col/l3/kz;
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3/kz;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3/kz;-><init>(IZ)V

    iput p2, v0, Lcom/amap/api/col/l3/kz;->a:I

    iput p3, v0, Lcom/amap/api/col/l3/kz;->b:I

    iput p4, v0, Lcom/amap/api/col/l3/kz;->c:I

    iput p5, v0, Lcom/amap/api/col/l3/kz;->d:I

    iput p6, v0, Lcom/amap/api/col/l3/kz;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3/kz;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/amap/api/col/l3/lj;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

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

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v10

    move v5, p2

    invoke-static/range {v4 .. v10}, Lcom/amap/api/col/l3/la;->a(IZIIIII)Lcom/amap/api/col/l3/kz;

    move-result-object p1

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/kz;->g:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/kz;->h:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/kz;->i:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/kz;->e:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result p2

    iput p2, p1, Lcom/amap/api/col/l3/kz;->f:I

    return-object p1
.end method

.method private static a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3/kz;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v7

    const/4 v1, 0x1

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/l3/la;->a(IZIIIII)Lcom/amap/api/col/l3/kz;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3/kz;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v7

    const/4 v1, 0x3

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/l3/la;->a(IZIIIII)Lcom/amap/api/col/l3/kz;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3/kz;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v7

    const/4 v1, 0x4

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/l3/la;->a(IZIIIII)Lcom/amap/api/col/l3/kz;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3/kz;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/kz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/kz;-><init>(IZ)V

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/l3/kz;->a:I

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3/kz;->b:I

    const-string p1, "getLac"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3/kz;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3/kz;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3/lj;->a(I)I

    move-result p0

    iput p0, v0, Lcom/amap/api/col/l3/kz;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "CgiManager"

    const-string v0, "getGsm"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/la;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/la;->u:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3/la;->a:I

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v2, Lcom/amap/api/col/l3/kz;

    invoke-direct {v2, v0, v0}, Lcom/amap/api/col/l3/kz;-><init>(IZ)V

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/amap/api/col/l3/kz;->a:I

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/amap/api/col/l3/kz;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v2, Lcom/amap/api/col/l3/kz;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v2, Lcom/amap/api/col/l3/kz;->d:I

    iget p1, p0, Lcom/amap/api/col/l3/la;->o:I

    iput p1, v2, Lcom/amap/api/col/l3/kz;->j:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/la;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p2}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3/kz;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/la;I)V
    .locals 1

    const/16 v0, -0x71

    if-ne p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/col/l3/la;->o:I

    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/la;->o:I

    iget p1, p0, Lcom/amap/api/col/l3/la;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3/kz;

    iget p0, p0, Lcom/amap/api/col/l3/la;->o:I

    iput p0, p1, Lcom/amap/api/col/l3/kz;->j:I
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

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3/la;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3/la;->b(I)Z

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

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3/la;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3/la;->b(I)Z

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

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3/la;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3/la;->b(I)Z

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

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellLocation;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/la;->a:I

    :cond_0
    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3/la;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3/la;->t:Z

    return p0
.end method

.method private c(Landroid/telephony/CellLocation;)I
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3/la;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Utils"

    const-string v2, "getCellLocT"

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private f()Landroid/telephony/CellLocation;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1
.end method

.method private g()Landroid/telephony/CellLocation;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/la;->f()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3/lj;->c()I

    move-result v2

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/la;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getCellLocationExt"

    invoke-direct {p0, v0, v3, v2}, Lcom/amap/api/col/l3/la;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "getCellLocationGemini"

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/l3/la;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/telephony/CellLocation;
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->q:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/la;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getCellLocation"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v4}, Lcom/amap/api/col/l3/la;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/col/l3/la;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-string v2, "getCellLocationGemini"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/col/l3/la;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    const-string v2, "getAllCellInfo"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/col/l3/la;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    return-object v1

    :catchall_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private i()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/l3/la;->r:I

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

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method private j()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3/la;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget v0, p0, Lcom/amap/api/col/l3/la;->r:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/l3/la;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3/la;->r:I

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/kz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method final a(Landroid/telephony/CellLocation;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/la;->c(Landroid/telephony/CellLocation;)I

    move-result v1

    const-string v2, "CgiManager"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    const-string v1, "getSystemId"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "getNetworkId"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "getBaseStationId"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

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

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "cgiUseful Cgi.iCdmaT"

    goto :goto_1

    :cond_4
    :try_start_1
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    invoke-static {v0, p1}, Lcom/amap/api/col/l3/la;->a(II)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    const-string v0, "cgiUseful Cgi.iGsmT"

    :goto_1
    invoke-static {p1, v2, v0}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v3
.end method

.method public final b()V
    .locals 15

    const-string v0, "CgiManager"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/la;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/lj;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/la;->i:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/col/l3/la;->d:J

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

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/la;->i:Z

    const/4 v5, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/l3/la;->g()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3/la;->h()Landroid/telephony/CellLocation;

    move-result-object v1

    :cond_3
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/amap/api/col/l3/la;->s:J

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/amap/api/col/l3/la;->s:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    iput-object v5, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/la;->f:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/la;->f:Z

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/amap/api/col/l3/lj;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v6}, Lcom/amap/api/col/l3/la;->c(Landroid/telephony/CellLocation;)I

    move-result v6

    if-eq v6, v2, :cond_d

    if-eq v6, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v6, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;

    if-eqz v6, :cond_e

    iget-object v7, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/amap/api/col/l3/lj;->c()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v8, 0x5

    if-lt v7, v8, :cond_e

    :try_start_1
    iget-object v7, p0, Lcom/amap/api/col/l3/la;->q:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_9

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mGsmCellLoc"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v7, :cond_8

    invoke-direct {p0, v7}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct {p0, v7, v1}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x1

    goto :goto_3

    :catchall_0
    :cond_8
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_9

    goto/16 :goto_4

    :cond_9
    :try_start_3
    invoke-direct {p0, v6}, Lcom/amap/api/col/l3/la;->b(Landroid/telephony/CellLocation;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_4

    :cond_a
    iput v4, p0, Lcom/amap/api/col/l3/la;->a:I

    new-instance v7, Lcom/amap/api/col/l3/kz;

    invoke-direct {v7, v4, v2}, Lcom/amap/api/col/l3/kz;-><init>(IZ)V

    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/amap/api/col/l3/kz;->a:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/amap/api/col/l3/kz;->b:I

    const-string v1, "getSystemId"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v8}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v7, Lcom/amap/api/col/l3/kz;->g:I

    const-string v1, "getNetworkId"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v8}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v7, Lcom/amap/api/col/l3/kz;->h:I

    const-string v1, "getBaseStationId"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v8}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v7, Lcom/amap/api/col/l3/kz;->i:I

    iget v1, p0, Lcom/amap/api/col/l3/la;->o:I

    iput v1, v7, Lcom/amap/api/col/l3/kz;->j:I

    const-string v1, "getBaseStationLatitude"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v8}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v7, Lcom/amap/api/col/l3/kz;->e:I

    const-string v1, "getBaseStationLongitude"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v8}, Lcom/amap/api/col/l3/lh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v7, Lcom/amap/api/col/l3/kz;->f:I

    iget v6, v7, Lcom/amap/api/col/l3/kz;->e:I

    if-ltz v6, :cond_b

    if-ltz v1, :cond_b

    iget v6, v7, Lcom/amap/api/col/l3/kz;->e:I

    const v8, 0x7fffffff

    if-eq v6, v8, :cond_b

    if-eq v1, v8, :cond_b

    iget v6, v7, Lcom/amap/api/col/l3/kz;->e:I

    if-ne v6, v1, :cond_c

    iget v1, v7, Lcom/amap/api/col/l3/kz;->e:I

    if-lez v1, :cond_c

    :cond_b
    iput v3, v7, Lcom/amap/api/col/l3/kz;->e:I

    iput v3, v7, Lcom/amap/api/col/l3/kz;->f:I

    :cond_c
    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_4
    const-string v6, "hdlCdmaLocChange"

    invoke-static {v1, v0, v6}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    iget-object v6, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v6, v1}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_e
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/amap/api/col/l3/lj;->c()I

    move-result v1

    const/16 v6, 0x12

    if-lt v1, v6, :cond_19

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->n:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/amap/api/col/l3/la;->p:Lcom/amap/api/col/l3/ky;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v7, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iput-object v5, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catch_0
    move-exception v5

    goto :goto_5

    :catch_1
    move-exception v7

    move-object v14, v7

    move-object v7, v5

    move-object v5, v14

    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    :goto_6
    if-eqz v7, :cond_18

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_f
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v5, :cond_18

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/CellInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v9, :cond_17

    :try_start_9
    invoke-virtual {v9}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    instance-of v11, v9, Landroid/telephony/CellInfoCdma;

    const-wide/32 v12, 0xffff

    if-eqz v11, :cond_11

    check-cast v9, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v9}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v11

    if-nez v11, :cond_10

    goto/16 :goto_9

    :cond_10
    invoke-direct {p0, v9, v10}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3/kz;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/amap/api/col/l3/ky;->a(Lcom/amap/api/col/l3/kz;)J

    move-result-wide v10

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :goto_8
    long-to-int v11, v10

    int-to-short v10, v11

    iput-short v10, v9, Lcom/amap/api/col/l3/kz;->l:S

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    instance-of v11, v9, Landroid/telephony/CellInfoGsm;

    if-eqz v11, :cond_13

    check-cast v9, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v9}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v9, v10}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3/kz;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/amap/api/col/l3/ky;->a(Lcom/amap/api/col/l3/kz;)J

    move-result-wide v10

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_8

    :cond_13
    instance-of v11, v9, Landroid/telephony/CellInfoWcdma;

    if-eqz v11, :cond_15

    check-cast v9, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v9}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_9

    :cond_14
    invoke-static {v9, v10}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3/kz;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/amap/api/col/l3/ky;->a(Lcom/amap/api/col/l3/kz;)J

    move-result-wide v10

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_8

    :cond_15
    instance-of v11, v9, Landroid/telephony/CellInfoLte;

    if-eqz v11, :cond_17

    check-cast v9, Landroid/telephony/CellInfoLte;

    invoke-virtual {v9}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_9

    :cond_16
    invoke-static {v9, v10}, Lcom/amap/api/col/l3/la;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3/kz;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/amap/api/col/l3/ky;->a(Lcom/amap/api/col/l3/kz;)J

    move-result-wide v10

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    :catchall_2
    :cond_17
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    :cond_18
    if-eqz v1, :cond_19

    :try_start_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    iget v5, p0, Lcom/amap/api/col/l3/la;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/amap/api/col/l3/la;->a:I

    invoke-virtual {v6, v1}, Lcom/amap/api/col/l3/ky;->a(Ljava/util/ArrayList;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    :cond_19
    :try_start_b
    iget-object v1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/la;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/amap/api/col/l3/la;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/amap/api/col/l3/la;->a:I

    :cond_1a
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/amap/api/col/l3/la;->d:J

    :cond_1b
    iget-boolean v1, p0, Lcom/amap/api/col/l3/la;->i:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/amap/api/col/l3/la;->d()V

    return-void

    :cond_1c
    iget v1, p0, Lcom/amap/api/col/l3/la;->a:I

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v2, :cond_1e

    if-eq v1, v4, :cond_1d

    goto :goto_a

    :cond_1d
    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    iput v3, p0, Lcom/amap/api/col/l3/la;->a:I

    goto :goto_a

    :cond_1e
    iget-object v1, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    iput v3, p0, Lcom/amap/api/col/l3/la;->a:I
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_1f
    :goto_a
    return-void

    :catchall_4
    move-exception v1

    const-string v2, "refresh"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->p:Lcom/amap/api/col/l3/ky;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ky;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/la;->s:J

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->u:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/la;->t:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->g:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->g:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/amap/api/col/l3/la;->k:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->k:Landroid/os/HandlerThread;

    :cond_1
    const/16 v1, -0x71

    iput v1, p0, Lcom/amap/api/col/l3/la;->o:I

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->q:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3/la;->e:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/la;->a:I

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/la;->m:Ljava/lang/String;

    return-object v0
.end method
