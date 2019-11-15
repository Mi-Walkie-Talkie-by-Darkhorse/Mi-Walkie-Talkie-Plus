.class public final Lcom/amap/api/col/sl/er;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/er$a;
    }
.end annotation


# static fields
.field static G:I

.field public static J:Z

.field private static N:Z

.field private static P:I


# instance fields
.field A:Ljava/lang/StringBuilder;

.field B:Z

.field public C:Z

.field D:I

.field E:Lcom/amap/api/col/sl/ew;

.field F:Z

.field H:Lcom/amap/api/col/sl/eu;

.field I:Ljava/lang/String;

.field K:Landroid/content/IntentFilter;

.field private L:I

.field private M:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private Q:Z

.field a:Landroid/content/Context;

.field b:Landroid/net/ConnectivityManager;

.field c:Lcom/amap/api/col/sl/fe;

.field d:Lcom/amap/api/col/sl/fb;

.field e:Lcom/amap/api/col/sl/fd;

.field f:Lcom/amap/api/col/sl/fc;

.field g:Lcom/amap/api/col/sl/fg;

.field h:Lcom/amap/api/col/sl/es;

.field i:Lcom/amap/api/col/sl/ey;

.field j:Lcom/amap/api/col/sl/fn;

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/amap/api/col/sl/er$a;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/amap/api/col/sl/ev;

.field o:J

.field p:Lcom/amap/api/col/sl/fo;

.field q:Z

.field r:Lcom/amap/api/col/sl/fl;

.field s:Ljava/lang/StringBuilder;

.field t:Z

.field u:Z

.field v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field w:Z

.field x:Z

.field y:Landroid/net/wifi/WifiInfo;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/col/sl/er;->N:Z

    sput v1, Lcom/amap/api/col/sl/er;->P:I

    sput v1, Lcom/amap/api/col/sl/er;->G:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/sl/er;->J:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/er;->o:J

    iput v3, p0, Lcom/amap/api/col/sl/er;->L:I

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->p:Lcom/amap/api/col/sl/fo;

    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->q:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->M:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->t:Z

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->u:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->w:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->x:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->y:Landroid/net/wifi/WifiInfo;

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->z:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->B:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->C:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->Q:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->F:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;
    .locals 3

    new-instance v0, Lcom/amap/api/col/sl/ev;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/ev;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/amap/api/col/sl/ev;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x867

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/amap/api/col/sl/ev;Lcom/amap/api/col/sl/du;)Lcom/amap/api/col/sl/ev;
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p2, Lcom/amap/api/col/sl/du;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/amap/api/col/sl/du;->a:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/ev;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/ev;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/amap/api/col/sl/du;->d:Ljava/lang/String;

    const/16 v1, 0x7f9

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v1, Lcom/amap/api/col/sl/fn;

    invoke-direct {v1}, Lcom/amap/api/col/sl/fn;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/amap/api/col/sl/du;->a:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "\"status\":\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lcom/amap/api/col/sl/fn;->a(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/sl/du;)Lcom/amap/api/col/sl/ev;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/ev;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/amap/api/col/sl/ev;->setErrorCode(I)V

    const-string v1, "APS"

    const-string v2, "checkResponseEntity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check response exception ex is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#0403"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "</body></html>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/ev;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u60a8\u8fde\u63a5\u7684\u662f\u4e00\u4e2a\u9700\u8981\u767b\u5f55\u7684\u7f51\u7edc\uff0c\u8bf7\u786e\u8ba4\u5df2\u7ecf\u767b\u5165\u7f51\u7edc#0501"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x803

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u53ef\u80fd\u88ab\u52ab\u6301\u4e86#0502"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x804

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private a(ZZ)Lcom/amap/api/col/sl/ev;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v12, 0x6

    const/4 v11, 0x5

    new-instance v10, Lcom/amap/api/col/sl/ev;

    const-string v0, ""

    invoke-direct {v10, v0}, Lcom/amap/api/col/sl/ev;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->p:Lcom/amap/api/col/sl/fo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/fo;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->p:Lcom/amap/api/col/sl/fo;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->p:Lcom/amap/api/col/sl/fo;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    iget-object v5, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    iget-object v8, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    invoke-virtual {v8}, Lcom/amap/api/col/sl/fc;->f()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/amap/api/col/sl/er;->I:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/amap/api/col/sl/fo;->a(Landroid/content/Context;ZZLcom/amap/api/col/sl/fb;Lcom/amap/api/col/sl/fe;Landroid/net/ConnectivityManager;Lcom/amap/api/col/sl/ey;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fd;->a(Lcom/amap/api/col/sl/fb;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->p:Lcom/amap/api/col/sl/fo;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fo;->a()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/sl/er;->o:J

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/sl/fq;->d(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/sl/fq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p2}, Lcom/amap/api/col/sl/fl;->a(Landroid/content/Context;[BLjava/lang/String;Z)Lcom/amap/api/col/sl/fm;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/sl/fj;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/fj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/fj;->a(Lcom/amap/api/col/sl/fm;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/fl;->a(Lcom/amap/api/col/sl/fm;)Lcom/amap/api/col/sl/du;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const-string v0, ""

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fj;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fj;->a()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fl;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Lcom/amap/api/col/sl/ev;->a(J)V

    iget-object v0, v2, Lcom/amap/api/col/sl/du;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#csid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/amap/api/col/sl/du;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, v2, Lcom/amap/api/col/sl/du;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/amap/api/col/sl/ev;->h(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_13

    invoke-direct {p0, v10, v2}, Lcom/amap/api/col/sl/er;->a(Lcom/amap/api/col/sl/ev;Lcom/amap/api/col/sl/du;)Lcom/amap/api/col/sl/ev;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v10, v1

    :goto_0
    return-object v10

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get parames error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#0301"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7ef

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v10

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/amap/api/col/sl/ev;->h(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fj;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fj;->b()V

    const-string v0, "APS"

    const-string v2, "getApsLoc req"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/mobile/binary"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u672a\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc#0401"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v10

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/amap/api/col/sl/ev;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v0, v1, Lcom/amap/api/col/sl/bo;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/amap/api/col/sl/bo;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/bo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u72b6\u6001\u7801\u9519\u8bef#0404"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/amap/api/col/sl/bo;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/bo;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    check-cast v1, Lcom/amap/api/col/sl/bo;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/bo;->e()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/sl/er;->o:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8fde\u63a5\u8d85\u65f6#0402"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    iget-object v1, v2, Lcom/amap/api/col/sl/du;->a:[B

    invoke-static {v1}, Lcom/amap/api/col/sl/ff;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v10, v11}, Lcom/amap/api/col/sl/ev;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u5bc6\u6570\u636e\u5931\u8d25#0503"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0x805

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    invoke-virtual {v2, v10, v1}, Lcom/amap/api/col/sl/fn;->a(Lcom/amap/api/col/sl/ev;[B)Lcom/amap/api/col/sl/ev;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->M:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->M:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x80e

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v1, v12}, Lcom/amap/api/col/sl/ev;->setErrorCode(I)V

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "location faile retype:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#0601"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/ev;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    move-object v10, v1

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x80d

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->M:Ljava/lang/String;

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getAccuracy()F

    move-result v3

    :try_start_2
    const-string v4, "-1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_11

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ey;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    :goto_4
    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "-5"

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "1"

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "2"

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "14"

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "24"

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "-1"

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    invoke-virtual {v1, v11}, Lcom/amap/api/col/sl/ev;->setLocationType(I)V

    :cond_10
    :goto_5
    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->u:Z

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/ev;->setOffset(Z)V

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->t:Z

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/ev;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/ev;->f(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/er;->I:Ljava/lang/String;

    move-object v10, v0

    goto/16 :goto_0

    :cond_11
    :try_start_3
    invoke-virtual {v0}, Lcom/amap/api/col/sl/ey;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    const-string v2, "BeaconManager"

    const-string v3, "checkLocationType"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v1, v12}, Lcom/amap/api/col/sl/ev;->setLocationType(I)V

    goto :goto_5

    :cond_13
    move-object v0, v10

    goto :goto_6
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget v0, Lcom/amap/api/col/sl/er;->P:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/amap/api/col/sl/fp;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/amap/api/col/sl/er;->P:I

    invoke-static {p0}, Lcom/amap/api/col/sl/fp;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/col/sl/ev;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/amap/api/col/sl/ev;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fd;->a(Lorg/json/JSONObject;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fd;->c()V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/er$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/er$a;-><init>(Lcom/amap/api/col/sl/er;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->K:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 10

    const/4 v3, 0x1

    const/16 v9, 0x849

    const/16 v8, 0xc

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "network"

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fb;->e()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/fb;->c()Lcom/amap/api/col/sl/fa;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iput v8, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u6388\u4e88\u5e94\u7528\u5b9a\u4f4d\u6743\u9650#1201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    :goto_0
    return-object v4

    :cond_2
    invoke-static {}, Lcom/amap/api/col/sl/fy;->c()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iput v8, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1206"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fb;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/fe;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v2}, Lcom/amap/api/col/sl/fe;->l()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_6

    :cond_4
    iput v8, p0, Lcom/amap/api/col/sl/er;->D:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u57fa\u7ad9\u4e0e\u83b7\u53d6WIFI\u7684\u6743\u9650\u90fd\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v7, v9}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6WIFI\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1203"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_8

    iput v8, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->f()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "WIFI\u5f00\u5173\u5173\u95ed\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1204"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v7, v9}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u7684WIFI\u5217\u8868\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1205"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->f()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x854

    invoke-static {v7, v0}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->f()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fb;->l()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x13

    iput v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14WIFI\u5f00\u5173\u5173\u95ed\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361#1901"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x855

    invoke-static {v7, v0}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->f()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u60a8\u6253\u5f00WIFI\u5f00\u5173\u5728\u53d1\u8d77\u5b9a\u4f4d#1301"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v0, 0xd

    iput v0, p0, Lcom/amap/api/col/sl/er;->D:I

    const/16 v0, 0x853

    invoke-static {v7, v0}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e0eWIFI\u4e3a\u7a7a\uff0c\u8bf7\u79fb\u52a8\u5230\u6709WIFI\u7684\u533a\u57df\uff0c\u82e5\u786e\u5b9a\u5f53\u524d\u533a\u57df\u6709WIFI\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88APP\u5b9a\u4f4d\u6743\u9650#1302"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v6}, Lcom/amap/api/col/sl/fe;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/amap/api/col/sl/er;->y:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v6}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/amap/api/col/sl/er;->z:Z

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xb

    iput v0, p0, Lcom/amap/api/col/sl/er;->D:I

    const/16 v0, 0x83f

    invoke-static {v7, v0}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "get cgi failure#1101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    move-object v0, v4

    :cond_e
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/sl/fy;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    move-object v4, v0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Lcom/amap/api/col/sl/fa;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/amap/api/col/sl/fa;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/amap/api/col/sl/fa;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/amap/api/col/sl/fa;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->z:Z

    if-eqz v0, :cond_12

    :cond_11
    const-string v0, "cgiwifi"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    const-string v0, "cgi"

    goto :goto_5

    :pswitch_1
    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Lcom/amap/api/col/sl/fa;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/amap/api/col/sl/fa;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/amap/api/col/sl/fa;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/amap/api/col/sl/fa;->h:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/amap/api/col/sl/fa;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->z:Z

    if-eqz v0, :cond_14

    :cond_13
    const-string v0, "cgiwifi"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    const-string v0, "cgi"

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->z:Z

    if-eqz v0, :cond_1b

    :cond_15
    move v1, v3

    :goto_7
    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->z:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14WIFI\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#0201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_18

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->z:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e6

    invoke-static {v7, v0}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v6}, Lcom/amap/api/col/sl/fe;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#%s#"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_19
    const-string v1, "network"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/fe;->f()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00WIFI\u5f00\u5173#0203"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v1, 0x7e6

    invoke-static {v7, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1a
    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u6ca1\u6709\u641c\u7d22\u5230WIFI\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1b
    move v1, v2

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(DD)Lcom/amap/api/col/sl/ev;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/sl/fl;->a(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"status\":\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/fn;->a(Ljava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/sl/ev;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/amap/api/col/sl/ev;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a(Lcom/amap/api/col/sl/ev;[Ljava/lang/String;)Lcom/amap/api/col/sl/ev;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    iget-boolean v1, p0, Lcom/amap/api/col/sl/er;->w:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/eu;->a(Z)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/eu;->a(Lcom/amap/api/col/sl/ev;)Lcom/amap/api/col/sl/ev;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    aget-object v0, p2, v2

    const-string v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/eu;->a(Lcom/amap/api/col/sl/ev;)Lcom/amap/api/col/sl/ev;

    move-result-object p1

    goto :goto_0

    :cond_3
    aget-object v0, p2, v2

    const-string v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    goto :goto_0
.end method

.method public final a(Z)Lcom/amap/api/col/sl/ev;
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7db

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/sl/er;->a()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/sl/er;->a(ZZ)Lcom/amap/api/col/sl/ev;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/fb;->c()Lcom/amap/api/col/sl/fa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fg;->a(Lcom/amap/api/col/sl/fa;)V

    invoke-direct {p0, v6}, Lcom/amap/api/col/sl/er;->b(Lcom/amap/api/col/sl/ev;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fd;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v5, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/sl/fd;->a(Lcom/amap/api/col/sl/fg;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/amap/api/col/sl/ev;)Lcom/amap/api/col/sl/ev;

    move-result-object v6

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/sl/fl;->a()Lcom/amap/api/col/sl/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v0

    sget-object v4, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/amap/api/col/sl/fl;->a(JZLcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->p:Lcom/amap/api/col/sl/fo;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/fo;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->p:Lcom/amap/api/col/sl/fo;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/amap/api/col/sl/eu;

    invoke-direct {v0}, Lcom/amap/api/col/sl/eu;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fp;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/amap/api/col/sl/fe;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/col/sl/fe;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    if-nez v0, :cond_3

    new-instance v0, Lcom/amap/api/col/sl/fb;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/fb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/col/sl/fd;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fd;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    if-nez v0, :cond_5

    new-instance v0, Lcom/amap/api/col/sl/fc;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fc;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    if-nez v0, :cond_6

    new-instance v0, Lcom/amap/api/col/sl/fg;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/fn;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fn;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/col/sl/ev;)V
    .locals 6

    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/sl/fg;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/amap/api/col/sl/ev;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/col/sl/fe;->a(ZZ)V

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v3

    sget-object v6, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v3, v6}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v0, v3}, Lcom/amap/api/col/sl/fl;->a(JZLcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/fg;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/fn;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_5
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    :try_start_2
    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v4

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->x:Z

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->F:Z

    iget-boolean v4, p0, Lcom/amap/api/col/sl/er;->u:Z

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Lcom/amap/api/col/sl/er;->t:Z

    if-ne v2, v4, :cond_6

    iget-boolean v4, p0, Lcom/amap/api/col/sl/er;->w:Z

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v0, v4, :cond_8

    :cond_6
    :try_start_3
    iget-object v4, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    invoke-virtual {v4}, Lcom/amap/api/col/sl/fg;->a()V

    :cond_7
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/amap/api/col/sl/er;->b(Lcom/amap/api/col/sl/ev;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/amap/api/col/sl/er;->Q:Z

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    invoke-virtual {v4}, Lcom/amap/api/col/sl/eu;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    :goto_0
    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->u:Z

    iput-boolean v2, p0, Lcom/amap/api/col/sl/er;->t:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/er;->w:Z

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void

    :catch_0
    move-exception v4

    :try_start_4
    const-string v5, "APS"

    const-string v6, "cleanCache"

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v2

    move v2, v1

    move v3, v1

    goto :goto_0

    :catch_3
    move-exception v3

    move v3, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/ey;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/ey;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/sl/ew;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/ew;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/es;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/es;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fd;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->l()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/fe;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->n()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/col/sl/fb;->a(ZZ)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fg;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/es;->b()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    :try_start_0
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/er;->q:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->C:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final d()Lcom/amap/api/col/sl/ev;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/amap/api/col/sl/er;->c()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    const-string v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/amap/api/col/sl/er;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/er;->L:I

    iget v0, p0, Lcom/amap/api/col/sl/er;->L:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fc;->e()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-boolean v1, p0, Lcom/amap/api/col/sl/er;->q:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fe;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fc;->a()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fd;->a()V

    :cond_2
    iget-wide v0, p0, Lcom/amap/api/col/sl/er;->o:J

    iget-boolean v4, p0, Lcom/amap/api/col/sl/er;->Q:Z

    if-nez v4, :cond_4

    iput-boolean v8, p0, Lcom/amap/api/col/sl/er;->Q:Z

    move v0, v9

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->w:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fp;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->setLocationType(I)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x320

    cmp-long v0, v0, v4

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/amap/api/col/sl/fy;->a()J

    move-result-wide v0

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v4}, Lcom/amap/api/col/sl/ev;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    :goto_2
    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-gtz v0, :cond_13

    move v0, v8

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->F:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ew;->a()V

    :cond_6
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_7
    move v0, v8

    :goto_4
    iget-object v1, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/fe;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->n()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/amap/api/col/sl/fb;->a(ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/es;->e()Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ew;->b()V

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v4, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v4}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v4, "getLocation getCgiListParam"

    invoke-static {v0, v1, v4}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/amap/api/col/sl/fd;->a(Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/er;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/amap/api/col/sl/ev;->setMock(Z)V

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/amap/api/col/sl/er;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    move v2, v8

    :goto_7
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-object v5, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v7, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/col/sl/fg;->a(Lcom/amap/api/col/sl/fb;ZLcom/amap/api/col/sl/ev;Lcom/amap/api/col/sl/fe;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/er;->b(Lcom/amap/api/col/sl/ev;)V

    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/sl/fg;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/amap/api/col/sl/ev;Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/sl/fd;->a(Ljava/lang/String;Lcom/amap/api/col/sl/ev;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v5, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->m()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/sl/fd;->a(Lcom/amap/api/col/sl/fg;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/amap/api/col/sl/ev;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    :cond_d
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->F:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ew;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/sl/ev;->setAltitude(D)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ew;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->setBearing(F)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ew;->e()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->setSpeed(F)V

    :goto_9
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/sl/er;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    move v2, v8

    goto/16 :goto_7

    :cond_f
    move v2, v9

    goto/16 :goto_7

    :cond_10
    invoke-direct {p0, v9, v8}, Lcom/amap/api/col/sl/er;->a(ZZ)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/ev;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/fb;->c()Lcom/amap/api/col/sl/fa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fg;->a(Lcom/amap/api/col/sl/fa;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/er;->b(Lcom/amap/api/col/sl/ev;)V

    goto/16 :goto_8

    :cond_11
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/sl/ev;->setAltitude(D)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0, v10}, Lcom/amap/api/col/sl/ev;->setBearing(F)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0, v10}, Lcom/amap/api/col/sl/ev;->setSpeed(F)V

    goto :goto_9

    :cond_12
    move v0, v9

    goto/16 :goto_4

    :cond_13
    move v0, v9

    goto/16 :goto_1

    :cond_14
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/er;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/er;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amap/api/col/sl/er;->i()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/sl/er;->a(ZZ)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/er;->a(Lcom/amap/api/col/sl/ev;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amap/api/col/sl/er;->I:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/amap/api/col/sl/er;->B:Z

    iput-boolean v0, p0, Lcom/amap/api/col/sl/er;->C:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fc;->b()V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    iput-object v3, v0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/es;->a()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fg;->b(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->H:Lcom/amap/api/col/sl/eu;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/eu;->a()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/amap/api/col/sl/er;->j:Lcom/amap/api/col/sl/fn;

    :cond_4
    invoke-static {}, Lcom/amap/api/col/sl/fy;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iput-object v3, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fb;->g()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->j()V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->E:Lcom/amap/api/col/sl/ew;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ew;->f()V

    :cond_9
    iput-object v3, p0, Lcom/amap/api/col/sl/er;->n:Lcom/amap/api/col/sl/ev;

    iput-object v3, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->e:Lcom/amap/api/col/sl/fd;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fd;->b()V

    :cond_a
    iput-object v3, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->i:Lcom/amap/api/col/sl/ey;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ey;->d()V

    :cond_b
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APS"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/amap/api/col/sl/er;->l:Lcom/amap/api/col/sl/er$a;

    throw v0
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/es;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "bindAMapService"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->h:Lcom/amap/api/col/sl/es;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/es;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "bindOtherService"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->B:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/sl/er;->x:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->l()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-boolean v1, p0, Lcom/amap/api/col/sl/er;->x:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fe;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->d:Lcom/amap/api/col/sl/fb;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/sl/fb;->a(ZZ)V

    invoke-direct {p0}, Lcom/amap/api/col/sl/er;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/er;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/amap/api/col/sl/er;->B:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final j()Lcom/amap/api/col/sl/ev;
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fe;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/sl/er;->D:I

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/er;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/er;->g:Lcom/amap/api/col/sl/fg;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->O:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->A:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/col/sl/fg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/er;->b(Lcom/amap/api/col/sl/ev;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/sl/er;->f:Lcom/amap/api/col/sl/fc;

    iget-object v1, p0, Lcom/amap/api/col/sl/er;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/er;->r:Lcom/amap/api/col/sl/fl;

    iget-object v3, p0, Lcom/amap/api/col/sl/er;->c:Lcom/amap/api/col/sl/fe;

    iget-object v4, p0, Lcom/amap/api/col/sl/er;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v5, p0, Lcom/amap/api/col/sl/er;->b:Landroid/net/ConnectivityManager;

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/sl/fc;->a(Landroid/content/Context;Lcom/amap/api/col/sl/fl;Lcom/amap/api/col/sl/fe;Lcom/amap/api/location/AMapLocationClientOption;Landroid/net/ConnectivityManager;)V

    return-void
.end method
