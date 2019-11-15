.class public Lcom/amap/api/mapcore/util/am;
.super Lcom/amap/api/maps/offlinemap/OfflineMapCity;
.source "CityObject.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/av;
.implements Lcom/amap/api/mapcore/util/bl;


# static fields
.field public static final o:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/mapcore/util/am;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/amap/api/mapcore/util/bq;

.field public b:Lcom/amap/api/mapcore/util/bq;

.field public c:Lcom/amap/api/mapcore/util/bq;

.field public d:Lcom/amap/api/mapcore/util/bq;

.field public e:Lcom/amap/api/mapcore/util/bq;

.field public f:Lcom/amap/api/mapcore/util/bq;

.field public g:Lcom/amap/api/mapcore/util/bq;

.field public h:Lcom/amap/api/mapcore/util/bq;

.field public i:Lcom/amap/api/mapcore/util/bq;

.field public j:Lcom/amap/api/mapcore/util/bq;

.field public k:Lcom/amap/api/mapcore/util/bq;

.field l:Lcom/amap/api/mapcore/util/bq;

.field m:Landroid/content/Context;

.field n:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/am$2;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/am$2;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/am;->o:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>()V

    new-instance v0, Lcom/amap/api/mapcore/util/bs;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bs;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->a:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/by;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/by;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bu;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/bu;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bw;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bw;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bx;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bx;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/br;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/br;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->f:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bv;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bv;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->g:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->i:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/16 v1, 0x66

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->j:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->k:Lcom/amap/api/mapcore/util/bq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/am;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/am;->r:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/am;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 2

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/am;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setCity(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setState(I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setCompleteCode(I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getAdcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setAdcode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/am;->setSize(J)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getJianpin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setJianpin(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setPinyin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Lcom/amap/api/mapcore/util/bs;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bs;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->a:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/by;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/by;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bu;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/bu;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bw;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bw;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bx;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bx;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/br;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/br;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->f:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bv;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bv;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->g:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->i:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/16 v1, 0x66

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->j:Lcom/amap/api/mapcore/util/bq;

    new-instance v0, Lcom/amap/api/mapcore/util/bt;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/bt;-><init>(ILcom/amap/api/mapcore/util/am;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->k:Lcom/amap/api/mapcore/util/bq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/am;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/am;->r:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/am;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/am;->r:J

    return-wide v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/am;J)J
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/mapcore/util/am;->r:J

    return-wide p1
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    new-instance v1, Lcom/amap/api/mapcore/util/be;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/be;-><init>()V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v4, -0x1

    new-instance v8, Lcom/amap/api/mapcore/util/am$1;

    invoke-direct {v8, p0, p3, p1}, Lcom/amap/api/mapcore/util/am$1;-><init>(Lcom/amap/api/mapcore/util/am;Ljava/lang/String;Ljava/io/File;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore/util/be;->a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/mapcore/util/be$a;)J

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getAdcode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->q:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/am;->setState(I)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->f:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->a:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->g:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->i:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->j:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->k:Lcom/amap/api/mapcore/util/bq;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(J)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/am;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    long-to-int v2, p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getcompleteCode()I

    move-result v3

    if-le v2, v3, :cond_0

    long-to-int v2, p1

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/am;->setCompleteCode(I)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->d()V

    :cond_0
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/am;->r:J

    :cond_1
    return-void
.end method

.method public a(JJ)V
    .locals 5

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    long-to-int v2, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getcompleteCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setCompleteCode(I)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/bm$a;)V
    .locals 3

    const/4 v0, 0x6

    sget-object v1, Lcom/amap/api/mapcore/util/am$3;->a:[I

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bm$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->j:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->k:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->i:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/bq;->a(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/amap/api/mapcore/util/bq;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setState(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/am;->q:Ljava/lang/String;

    return-void
.end method

.method public b(I)Lcom/amap/api/mapcore/util/bq;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->i:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->j:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->k:Lcom/amap/api/mapcore/util/bq;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->e:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/am;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->r()V

    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_4
    invoke-direct {p0, v2, v1, v0}, Lcom/amap/api/mapcore/util/am;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/amap/api/mapcore/util/bq;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/an;->c(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/an;->e(Lcom/amap/api/mapcore/util/am;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityOperation current State==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->d:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->g:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->n:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->j:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->i:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->k:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bq;->a(Lcom/amap/api/mapcore/util/bq;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->d()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->c()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->f()V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->k:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bq;->a(I)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->a()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->n:Z

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->f:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->g()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/an;->b(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/am;->r:J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "state must be waiting when download onStart"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->d()V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "state must be Loading when download onFinish"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->h()V

    return-void
.end method

.method public p()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->e()V

    return-void
.end method

.method public q()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/am;->r:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->e:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->d()V

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->e:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bq;->a(I)V

    return-void
.end method

.method public s()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->e()V

    return-void
.end method

.method protected t()V
    .locals 2

    sget-object v0, Lcom/amap/api/mapcore/util/an;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->p:Ljava/lang/String;

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->p:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/am;->p:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/amap/api/mapcore/util/bk;->a()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getcompleteCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getSize()J

    move-result-wide v6

    mul-long/2addr v4, v6

    long-to-double v4, v4

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    :cond_0
    return v8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public x()Lcom/amap/api/mapcore/util/ax;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->l:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/am;->setState(I)V

    new-instance v0, Lcom/amap/api/mapcore/util/ax;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/ax;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapCity;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ax;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vMapFileNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->w()Z

    move-result v0

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
