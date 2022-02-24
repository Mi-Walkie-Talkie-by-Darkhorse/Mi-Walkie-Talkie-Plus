.class public final Lcom/amap/api/col/l3/je;
.super Ljava/lang/Object;
.source "Aps.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/je$a;
    }
.end annotation


# static fields
.field static D:I = -0x1

.field public static H:Z = true

.field private static M:Z = false

.field private static O:I = -0x1


# instance fields
.field A:I

.field B:Lcom/amap/api/col/l3/ji;

.field C:Z

.field E:Lcom/amap/api/col/l3/jg;

.field F:Ljava/lang/String;

.field G:Lcom/amap/api/col/l3/jm;

.field I:Landroid/content/IntentFilter;

.field J:Landroid/location/LocationManager;

.field private K:I

.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private P:Z

.field a:Landroid/content/Context;

.field b:Landroid/net/ConnectivityManager;

.field c:Lcom/amap/api/col/l3/jn;

.field d:Lcom/amap/api/col/l3/jl;

.field e:Lcom/amap/api/col/l3/jp;

.field f:Lcom/amap/api/col/l3/jf;

.field g:Lcom/amap/api/col/l3/jw;

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/amap/api/col/l3/je$a;

.field j:Lcom/amap/api/location/AMapLocationClientOption;

.field k:Lcom/amap/api/col/l3/jh;

.field l:J

.field m:Lcom/amap/api/col/l3/jx;

.field n:Z

.field o:Lcom/amap/api/col/l3/ju;

.field p:Ljava/lang/StringBuilder;

.field q:Z

.field r:Z

.field s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field t:Z

.field u:Z

.field v:Landroid/net/wifi/WifiInfo;

.field w:Z

.field x:Ljava/lang/StringBuilder;

.field y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    .line 4
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    .line 8
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    .line 11
    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    .line 12
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/amap/api/col/l3/je;->l:J

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/amap/api/col/l3/je;->K:I

    .line 15
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->m:Lcom/amap/api/col/l3/jx;

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->n:Z

    .line 17
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->L:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/amap/api/col/l3/je;->q:Z

    .line 21
    iput-boolean v2, p0, Lcom/amap/api/col/l3/je;->r:Z

    .line 22
    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v3, p0, Lcom/amap/api/col/l3/je;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    .line 23
    iput-boolean v2, p0, Lcom/amap/api/col/l3/je;->t:Z

    .line 24
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->u:Z

    .line 25
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->v:Landroid/net/wifi/WifiInfo;

    .line 26
    iput-boolean v2, p0, Lcom/amap/api/col/l3/je;->w:Z

    .line 27
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    .line 29
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->y:Z

    .line 30
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->z:Z

    const/16 v3, 0xc

    .line 31
    iput v3, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 32
    iput-boolean v2, p0, Lcom/amap/api/col/l3/je;->P:Z

    .line 33
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    .line 34
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->C:Z

    .line 35
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    .line 36
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->F:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    .line 38
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->I:Landroid/content/IntentFilter;

    .line 39
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->J:Landroid/location/LocationManager;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;
    .locals 2

    .line 148
    new-instance v0, Lcom/amap/api/col/l3/jh;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/jh;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 150
    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/16 p1, 0xf

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 p1, 0x867

    .line 151
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/amap/api/col/l3/jh;Lcom/amap/api/col/l3/ie;)Lcom/amap/api/col/l3/jh;
    .locals 5

    const/4 v0, 0x4

    if-eqz p2, :cond_4

    .line 44
    :try_start_0
    iget-object v1, p2, Lcom/amap/api/col/l3/ie;->a:[B

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/amap/api/col/l3/ie;->a:[B

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    new-instance v1, Lcom/amap/api/col/l3/jw;

    invoke-direct {v1}, Lcom/amap/api/col/l3/jw;-><init>()V

    .line 46
    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/amap/api/col/l3/ie;->a:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "\"status\":\"0\""

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, p2}, Lcom/amap/api/col/l3/jw;->a(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/l3/ie;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/jh;->h(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p2, "</body></html>"

    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x5

    .line 51
    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 52
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    iget-object v2, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v2}, Lcom/amap/api/col/l3/jn;->a(Landroid/net/ConnectivityManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u8fde\u63a5\u7684\u662f\u4e00\u4e2a\u9700\u8981\u767b\u5f55\u7684\u7f51\u7edc\uff0c\u8bf7\u786e\u8ba4\u5df2\u7ecf\u767b\u5165\u7f51\u7edc#0501"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x803

    .line 54
    invoke-static {v1, p2}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u53ef\u80fd\u88ab\u52ab\u6301\u4e86#0502"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x804

    .line 56
    invoke-static {v1, p2}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    .line 57
    :goto_0
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v1

    .line 58
    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 59
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/jh;->h(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 62
    iget-object p2, p2, Lcom/amap/api/col/l3/ie;->d:Ljava/lang/String;

    const/16 v1, 0x7f9

    invoke-static {p2, v1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-object p1

    :catchall_0
    move-exception p2

    .line 63
    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "Aps"

    const-string v1, "checkResponseEntity"

    .line 64
    invoke-static {p2, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check response exception ex is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#0403"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(ZZ)Lcom/amap/api/col/l3/jh;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/amap/api/col/l3/jh;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/jh;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->m:Lcom/amap/api/col/l3/jx;

    if-nez v3, :cond_0

    new-instance v3, Lcom/amap/api/col/l3/jx;

    invoke-direct {v3}, Lcom/amap/api/col/l3/jx;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3/je;->m:Lcom/amap/api/col/l3/jx;

    :cond_0
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v3, :cond_1

    new-instance v3, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v3}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/jm;->c()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_0

    :cond_2
    move-object v10, v2

    :goto_0
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->m:Lcom/amap/api/col/l3/jx;

    iget-object v4, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v5}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v6

    iget-object v7, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    iget-object v8, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    iget-object v9, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    iget-object v11, p0, Lcom/amap/api/col/l3/je;->F:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcom/amap/api/col/l3/jx;->a(Landroid/content/Context;ZZLcom/amap/api/col/l3/jl;Lcom/amap/api/col/l3/jn;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->m:Lcom/amap/api/col/l3/jx;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/jx;->a()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/api/col/l3/je;->l:J

    .line 70
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3/jz;->c(Landroid/content/Context;)V

    .line 71
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    iget-object v4, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/jz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, p2}, Lcom/amap/api/col/l3/ju;->a(Landroid/content/Context;[BLjava/lang/String;Z)Lcom/amap/api/col/l3/jv;

    move-result-object p2

    .line 72
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/js;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/js;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/amap/api/col/l3/js;->a(Lcom/amap/api/col/l3/jv;)V

    .line 73
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    invoke-virtual {v2, p2}, Lcom/amap/api/col/l3/ju;->a(Lcom/amap/api/col/l3/jv;)Lcom/amap/api/col/l3/ie;

    move-result-object p2

    .line 74
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/js;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/l3/js;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/js;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/l3/js;->b()V

    .line 76
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/ju;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/l3/jh;->a(J)V

    .line 77
    iget-object v2, p2, Lcom/amap/api/col/l3/ie;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/amap/api/col/l3/ie;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_3
    iget-object v2, p2, Lcom/amap/api/col/l3/ie;->d:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/col/l3/jh;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-nez p1, :cond_d

    .line 81
    invoke-direct {p0, v0, p2}, Lcom/amap/api/col/l3/je;->a(Lcom/amap/api/col/l3/jh;Lcom/amap/api/col/l3/ie;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 82
    :cond_5
    iget-object p1, p2, Lcom/amap/api/col/l3/ie;->a:[B

    invoke-static {p1}, Lcom/amap/api/col/l3/jo;->a([B)[B

    move-result-object p1

    const/4 p2, 0x5

    if-nez p1, :cond_6

    .line 83
    invoke-virtual {v0, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 84
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string p2, "\u89e3\u5bc6\u6570\u636e\u5931\u8d25#0503"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/16 p1, 0x805

    .line 86
    invoke-static {v2, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v0

    .line 87
    :cond_6
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    invoke-virtual {v3, v0, p1}, Lcom/amap/api/col/l3/jw;->a(Lcom/amap/api/col/l3/jh;[B)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result p1

    const/4 v3, 0x6

    if-nez p1, :cond_9

    .line 89
    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->L:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x80e

    .line 91
    invoke-static {v2, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    const/16 p1, 0x80d

    .line 92
    invoke-static {v2, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    .line 93
    :goto_2
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 94
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "location faile retype:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rdesc:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/col/l3/je;->L:Ljava/lang/String;

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->L:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#0601"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/jh;->h(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    .line 100
    :cond_9
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "14"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "24"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {v0, p2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 101
    :cond_c
    :goto_5
    iget-boolean p1, p0, Lcom/amap/api/col/l3/je;->r:Z

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    .line 102
    iget-boolean p1, p0, Lcom/amap/api/col/l3/je;->q:Z

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/jh;->a(Z)V

    .line 103
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/jh;->f(Ljava/lang/String;)V

    :cond_d
    const-string p1, "new"

    .line 104
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/jh;->e(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->F:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception p1

    .line 107
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3/js;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/js;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/col/l3/js;->d()V

    const-string p2, "Aps"

    const-string v0, "getApsLoc req"

    .line 108
    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "/mobile/binary"

    .line 109
    invoke-static {p2, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3/ki;->d(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 111
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u672a\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc#0401"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 112
    :cond_e
    instance-of p2, p1, Lcom/amap/api/col/l3/fv;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    if-eqz p2, :cond_12

    .line 113
    check-cast p1, Lcom/amap/api/col/l3/fv;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fv;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801"

    .line 114
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 115
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u72b6\u6001\u7801\u9519\u8bef#0404"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fv;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 116
    :cond_f
    invoke-virtual {p1}, Lcom/amap/api/col/l3/fv;->e()I

    move-result p1

    const/16 p2, 0x17

    if-eq p1, p2, :cond_11

    .line 117
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/amap/api/col/l3/je;->l:J

    sub-long/2addr p1, v1

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v1

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v1, 0x1f4

    cmp-long v3, p1, v1

    if-gez v3, :cond_10

    goto :goto_6

    .line 118
    :cond_10
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 119
    :cond_11
    :goto_6
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8fde\u63a5\u8d85\u65f6#0402"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 120
    :cond_12
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const/4 p1, 0x4

    .line 121
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/jh;->h(Ljava/lang/String;)V

    return-object p1

    :catchall_1
    move-exception p1

    .line 123
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get parames error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#0301"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7ef

    .line 124
    invoke-static {v2, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 125
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/jh;->h(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jl;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 13
    :try_start_0
    sget v0, Lcom/amap/api/col/l3/je;->O:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/amap/api/col/l3/jy;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 14
    sput v0, Lcom/amap/api/col/l3/je;->O:I

    .line 15
    invoke-static {p0}, Lcom/amap/api/col/l3/jy;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "Aps"

    const-string v1, "initAuth"

    .line 16
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/amap/api/col/l3/jh;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    if-eqz v0, :cond_5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/api/col/l3/je$1;->a:[I

    iget-object v4, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 5
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    iget-object v4, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    iget-object v6, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    .line 6
    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v6

    sget-object v7, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 7
    :goto_2
    invoke-virtual {v0, v4, v5, v2, v1}, Lcom/amap/api/col/l3/ju;->a(JZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/je$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/je$a;-><init>(Lcom/amap/api/col/l3/je;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->I:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->I:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->I:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    iget-object v2, p0, Lcom/amap/api/col/l3/je;->I:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "initBroadcastListener"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jl;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/jl;->c()Lcom/amap/api/col/l3/jk;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v5, ""

    const/4 v6, 0x0

    if-nez v1, :cond_e

    if-eqz v2, :cond_e

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->g()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x12

    .line 8
    iput v0, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x854

    .line 10
    invoke-static {v6, v0}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 11
    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3/ki;->d()I

    move-result v0

    const-string v1, "\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1206"

    const/16 v2, 0x1c

    const/16 v3, 0x849

    const/16 v7, 0xc

    if-lt v0, v2, :cond_5

    .line 12
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->J:Landroid/location/LocationManager;

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "location"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->J:Landroid/location/LocationManager;

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->J:Landroid/location/LocationManager;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "isLocationEnabled"

    invoke-static {v0, v9, v8}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    iput v7, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 16
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {v6, v3}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 19
    iput v7, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u6388\u4e88\u5e94\u7528\u5b9a\u4f4d\u6743\u9650#1201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v6, v3}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 22
    :cond_6
    invoke-static {}, Lcom/amap/api/col/l3/ki;->d()I

    move-result v0

    const/16 v8, 0x18

    if-lt v0, v8, :cond_7

    .line 23
    invoke-static {}, Lcom/amap/api/col/l3/ki;->d()I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 24
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    .line 25
    iput v7, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 26
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {v6, v3}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jl;->j()Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/jn;->b()Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    iget-object v4, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Lcom/amap/api/col/l3/jn;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 31
    iput v7, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 32
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u57fa\u7ad9\u4e0e\u83b7\u53d6WIFI\u7684\u6743\u9650\u90fd\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v6, v3}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    :cond_8
    if-eqz v0, :cond_a

    .line 34
    iput v7, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 35
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->g()Z

    move-result v0

    if-nez v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "WIFI\u5f00\u5173\u5173\u95ed\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1204"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u7684WIFI\u5217\u8868\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1205"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_2
    invoke-static {v6, v3}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->g()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    .line 40
    invoke-virtual {v0}, Lcom/amap/api/col/l3/jl;->m()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x13

    .line 41
    iput v0, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 42
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14WIFI\u5f00\u5173\u5173\u95ed\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361#1901"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x855

    .line 43
    invoke-static {v6, v0}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 44
    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    iput v7, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 46
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u540e\u53f0\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u540e\u53f0\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1207"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v6, v3}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->g()Z

    move-result v0

    if-nez v0, :cond_d

    .line 49
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u60a8\u6253\u5f00WIFI\u5f00\u5173\u518d\u53d1\u8d77\u5b9a\u4f4d#1301"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 50
    :cond_d
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u548cWIFI\u4fe1\u606f\u5747\u4e3a\u7a7a\uff0c\u8bf7\u79fb\u52a8\u5230\u6709WIFI\u7684\u533a\u57df\uff0c\u82e5\u786e\u5b9a\u5f53\u524d\u533a\u57df\u6709WIFI\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88APP\u5b9a\u4f4d\u6743\u9650#1302"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v0, 0xd

    .line 51
    iput v0, p0, Lcom/amap/api/col/l3/je;->A:I

    const/16 v0, 0x853

    .line 52
    invoke-static {v6, v0}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 53
    :cond_e
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/jn;->h()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/je;->v:Landroid/net/wifi/WifiInfo;

    .line 54
    invoke-static {v2}, Lcom/amap/api/col/l3/jn;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/col/l3/je;->w:Z

    const/4 v2, 0x2

    const-string v7, "#"

    const-string v8, "network"

    if-eqz v0, :cond_15

    const-string v4, "cgi"

    const-string v9, "cgiwifi"

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_f

    const/16 v0, 0xb

    .line 55
    iput v0, p0, Lcom/amap/api/col/l3/je;->A:I

    const/16 v0, 0x83f

    .line 56
    invoke-static {v6, v0}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    .line 57
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "get cgi failure#1101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_f
    if-eqz v1, :cond_1d

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget v2, v1, Lcom/amap/api/col/l3/jk;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v2, v1, Lcom/amap/api/col/l3/jk;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v2, v1, Lcom/amap/api/col/l3/jk;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v2, v1, Lcom/amap/api/col/l3/jk;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, v1, Lcom/amap/api/col/l3/jk;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/amap/api/col/l3/je;->w:Z

    if-eqz v1, :cond_11

    :cond_10
    move-object v4, v9

    .line 66
    :cond_11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    :cond_12
    if-eqz v1, :cond_1d

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    iget v2, v1, Lcom/amap/api/col/l3/jk;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v2, v1, Lcom/amap/api/col/l3/jk;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v2, v1, Lcom/amap/api/col/l3/jk;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, v1, Lcom/amap/api/col/l3/jk;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/amap/api/col/l3/je;->w:Z

    if-eqz v1, :cond_14

    :cond_13
    move-object v4, v9

    .line 75
    :cond_14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 77
    :cond_15
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/amap/api/col/l3/je;->w:Z

    if-eqz v0, :cond_16

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    goto :goto_5

    :cond_17
    :goto_4
    const/4 v0, 0x1

    .line 78
    :goto_5
    iget-boolean v1, p0, Lcom/amap/api/col/l3/je;->w:Z

    const/16 v9, 0x7e5

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 79
    iput v2, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 80
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14WIFI\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#0201"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {v6, v9}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 83
    :cond_18
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v10, 0x7e6

    if-ne v1, v3, :cond_1a

    .line 84
    iput v2, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 85
    iget-boolean v1, p0, Lcom/amap/api/col/l3/je;->w:Z

    const-string v11, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    if-nez v1, :cond_19

    .line 86
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v6, v10}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 89
    :cond_19
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 90
    iget-object v12, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v12}, Lcom/amap/api/col/l3/jn;->h()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 91
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {v6, v9}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-object v5

    .line 93
    :cond_1a
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    const-string v4, "#%s#"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1b

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 95
    :cond_1b
    iput v2, p0, Lcom/amap/api/col/l3/je;->A:I

    .line 96
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->g()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 97
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00WIFI\u5f00\u5173#0203"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 98
    :cond_1c
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u6ca1\u6709\u641c\u7d22\u5230WIFI\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0204"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_6
    invoke-static {v6, v10}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    .line 100
    :cond_1d
    :goto_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 101
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3/ki;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1f
    return-object v5
.end method

.method private o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(DD)Lcom/amap/api/col/l3/jh;
    .locals 6

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/l3/ju;->a(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"status\":\"1\""

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/jw;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 147
    invoke-virtual {v0, p3, p4}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final varargs a(Lcom/amap/api/col/l3/jh;[Ljava/lang/String;)Lcom/amap/api/col/l3/jh;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    iget-boolean v1, p0, Lcom/amap/api/col/l3/je;->t:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/jg;->a(Z)V

    if-eqz p2, :cond_3

    .line 35
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    aget-object v1, p2, v0

    const-string v2, "shake"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3/jg;->a(Lcom/amap/api/col/l3/jh;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    return-object p1

    .line 38
    :cond_1
    aget-object p2, p2, v0

    const-string v0, "fusion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_2
    return-object p1

    .line 39
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3/jg;->a(Lcom/amap/api/col/l3/jh;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Lcom/amap/api/col/l3/jh;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v0, "context is null#0101"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/16 v0, 0x7db

    .line 129
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 130
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xf

    const-string v0, "networkLocation has been mocked!#1502"

    .line 132
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    return-object p1

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/je;->a()V

    .line 134
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget p1, p0, Lcom/amap/api/col/l3/je;->A:I

    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/l3/je;->a(ZZ)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/jp;->a(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/jl;->c()Lcom/amap/api/col/l3/jk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/jp;->a(Lcom/amap/api/col/l3/jk;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/je;->b(Lcom/amap/api/col/l3/jh;)V

    :cond_3
    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/ju;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/ju;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->o:Lcom/amap/api/col/l3/ju;

    .line 19
    invoke-direct {p0}, Lcom/amap/api/col/l3/je;->l()V

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->b:Landroid/net/ConnectivityManager;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->m:Lcom/amap/api/col/l3/jx;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Lcom/amap/api/col/l3/jx;

    invoke-direct {v0}, Lcom/amap/api/col/l3/jx;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->m:Lcom/amap/api/col/l3/jx;

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/col/l3/jg;

    invoke-direct {v0}, Lcom/amap/api/col/l3/jg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/amap/api/col/l3/jy;->d(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 8
    new-instance v0, Lcom/amap/api/col/l3/jn;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/col/l3/jn;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Lcom/amap/api/col/l3/jl;

    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/jl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    if-nez p1, :cond_3

    .line 12
    new-instance p1, Lcom/amap/api/col/l3/jp;

    invoke-direct {p1}, Lcom/amap/api/col/l3/jp;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    if-nez p1, :cond_4

    .line 14
    new-instance p1, Lcom/amap/api/col/l3/jw;

    invoke-direct {p1}, Lcom/amap/api/col/l3/jw;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    if-nez p1, :cond_5

    .line 16
    new-instance p1, Lcom/amap/api/col/l3/jm;

    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/jm;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Aps"

    const-string v1, "initBase"

    .line 17
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/jh;)V
    .locals 7

    .line 141
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v2, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/l3/jp;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/amap/api/col/l3/jh;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 8

    .line 24
    iput-object p1, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez p1, :cond_0

    .line 25
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-eqz v1, :cond_1

    .line 27
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v2

    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v3

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isOpenAlwaysScanWifi()Z

    move-result v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getScanWifiInterval()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/l3/jn;->a(ZZZJ)V

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/je;->l()V

    .line 29
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    if-eqz p1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/jp;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    if-eqz p1, :cond_3

    .line 32
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/jw;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 33
    :cond_3
    sget-object p1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v3

    iput-boolean v3, p0, Lcom/amap/api/col/l3/je;->u:Z

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/amap/api/col/l3/je;->C:Z

    iget-boolean v3, p0, Lcom/amap/api/col/l3/je;->r:Z

    if-ne v2, v3, :cond_4

    iget-boolean v3, p0, Lcom/amap/api/col/l3/je;->q:Z

    if-ne v1, v3, :cond_4

    iget-boolean v3, p0, Lcom/amap/api/col/l3/je;->t:Z

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq p1, v3, :cond_6

    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/jp;->a()V

    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/amap/api/col/l3/je;->b(Lcom/amap/api/col/l3/jh;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/amap/api/col/l3/je;->P:Z

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/jg;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_5
    const-string v4, "Aps"

    const-string v5, "cleanCache"

    invoke-static {v3, v4, v5}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_1

    :catchall_2
    move v0, v2

    goto :goto_0

    :catchall_3
    const/4 v1, 0x1

    :catchall_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v7, v2

    move v2, v0

    move v0, v7

    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/amap/api/col/l3/je;->r:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->q:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/je;->t:Z

    iput-object p1, p0, Lcom/amap/api/col/l3/je;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/ji;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/ji;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/amap/api/col/l3/jf;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/jf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/je;->m()V

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/jn;->b(Z)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-direct {p0}, Lcom/amap/api/col/l3/je;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/jl;->a(ZZ)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/jp;->a(Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jf;->b()V

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "EYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFQ1VSRV9TRVRUSU5HUw=="

    invoke-static {v2}, Lcom/amap/api/col/l3/gi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catchall_0
    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->z:Z

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final d()Lcom/amap/api/col/l3/jh;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Aps"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3/je;->c()V

    .line 2
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    const-string v2, "context is null#0101"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget v0, v1, Lcom/amap/api/col/l3/je;->K:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/amap/api/col/l3/je;->K:I

    if-ne v0, v3, :cond_1

    .line 6
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-eqz v0, :cond_1

    iget-boolean v4, v1, Lcom/amap/api/col/l3/je;->n:Z

    invoke-virtual {v0, v4}, Lcom/amap/api/col/l3/jn;->a(Z)V

    .line 7
    :cond_1
    iget-wide v4, v1, Lcom/amap/api/col/l3/je;->l:J

    iget-boolean v0, v1, Lcom/amap/api/col/l3/je;->P:Z

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-nez v0, :cond_3

    iput-boolean v3, v1, Lcom/amap/api/col/l3/je;->P:Z

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const-wide/16 v4, 0x320

    cmp-long v0, v9, v4

    if-gez v0, :cond_2

    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3/ki;->b()J

    move-result-wide v4

    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    sub-long/2addr v4, v9

    goto :goto_0

    :cond_4
    move-wide v4, v6

    :goto_0
    const-wide/16 v9, 0x2710

    cmp-long v0, v4, v9

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v4, 0x2

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    iget-boolean v0, v1, Lcom/amap/api/col/l3/je;->t:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    .line 10
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/jy;->b(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    .line 12
    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 13
    :cond_5
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    return-object v0

    .line 14
    :cond_6
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    if-eqz v0, :cond_8

    .line 15
    iget-boolean v5, v1, Lcom/amap/api/col/l3/je;->C:Z

    if-eqz v5, :cond_7

    .line 16
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ji;->a()V

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ji;->b()V

    .line 18
    :cond_8
    :goto_2
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    .line 19
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v0, 0x1

    .line 20
    :goto_4
    iget-object v5, v1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v5, v0}, Lcom/amap/api/col/l3/jn;->b(Z)V

    .line 21
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    const-string v5, "getLocation getScanResultsParam"

    .line 22
    invoke-static {v0, v2, v5}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_5
    :try_start_1
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/je;->o()Z

    move-result v5

    invoke-virtual {v0, v8, v5}, Lcom/amap/api/col/l3/jl;->a(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    const-string v5, "getLocation getCgiListParam"

    .line 24
    invoke-static {v0, v2, v5}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/je;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_c

    .line 27
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jf;->e()Lcom/amap/api/col/l3/jh;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    if-eqz v0, :cond_b

    .line 28
    iget-object v3, v1, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    .line 29
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    .line 30
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    return-object v0

    .line 31
    :cond_b
    iget v0, v1, Lcom/amap/api/col/l3/je;->A:I

    iget-object v2, v1, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    return-object v0

    .line 32
    :cond_c
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/je;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    .line 33
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    const-string v4, "networkLocation has been mocked!#1502"

    .line 34
    invoke-static {v0, v4}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    return-object v0

    .line 37
    :cond_d
    iget-wide v9, v1, Lcom/amap/api/col/l3/je;->l:J

    cmp-long v0, v9, v6

    if-nez v0, :cond_e

    :goto_7
    const/4 v11, 0x1

    goto :goto_8

    :cond_e
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v5

    iget-wide v9, v1, Lcom/amap/api/col/l3/je;->l:J

    sub-long/2addr v5, v9

    const-wide/16 v9, 0x4e20

    cmp-long v0, v5, v9

    if-lez v0, :cond_f

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    .line 38
    :goto_8
    iget-object v9, v1, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v10, v1, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    iget-object v12, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    iget-object v13, v1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    iget-object v14, v1, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    iget-object v0, v1, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/amap/api/col/l3/jp;->a(Lcom/amap/api/col/l3/jl;ZLcom/amap/api/col/l3/jh;Lcom/amap/api/col/l3/jn;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 40
    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    .line 41
    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/je;->b(Lcom/amap/api/col/l3/jh;)V

    goto :goto_9

    .line 42
    :cond_10
    invoke-direct {v1, v8, v3}, Lcom/amap/api/col/l3/je;->a(ZZ)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    .line 43
    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 44
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    const-string v5, "new"

    invoke-virtual {v0, v5}, Lcom/amap/api/col/l3/jh;->e(Ljava/lang/String;)V

    .line 45
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v5, v1, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/col/l3/jp;->a(Ljava/lang/String;)V

    .line 46
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v5, v1, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-virtual {v5}, Lcom/amap/api/col/l3/jl;->c()Lcom/amap/api/col/l3/jk;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/col/l3/jp;->a(Lcom/amap/api/col/l3/jk;)V

    .line 47
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/je;->b(Lcom/amap/api/col/l3/jh;)V

    .line 48
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    if-eqz v0, :cond_11

    .line 49
    iget-object v5, v1, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    iget-object v6, v1, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v5, v6, v7}, Lcom/amap/api/col/l3/jm;->c(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;)V

    .line 50
    :cond_11
    :goto_9
    :try_start_2
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    if-eqz v0, :cond_15

    .line 51
    invoke-static {}, Lcom/amap/api/col/l3/jn;->a()J

    move-result-wide v5

    const-wide/16 v9, 0xf

    cmp-long v0, v5, v9

    if-gtz v0, :cond_12

    .line 52
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto :goto_a

    :cond_12
    const-wide/16 v9, 0x78

    cmp-long v0, v5, v9

    if-gtz v0, :cond_13

    .line 53
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto :goto_a

    :cond_13
    const-wide/16 v3, 0x258

    cmp-long v0, v5, v3

    if-gtz v0, :cond_14

    .line 54
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto :goto_a

    .line 55
    :cond_14
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :catchall_2
    nop

    .line 56
    :cond_15
    :goto_a
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    if-eqz v0, :cond_16

    .line 57
    iget-object v2, v1, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    iget-object v3, v1, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v2, v3, v4}, Lcom/amap/api/col/l3/jm;->b(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;)V

    .line 58
    :cond_16
    iget-object v9, v1, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v10, v1, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    iget-object v11, v1, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    iget-object v13, v1, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/amap/api/col/l3/jp;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/amap/api/col/l3/jh;Landroid/content/Context;Z)V

    .line 59
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 60
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    if-eqz v0, :cond_17

    .line 61
    iget-object v2, v1, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    iget-object v3, v1, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v2, v3, v4}, Lcom/amap/api/col/l3/jm;->a(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    .line 62
    :cond_17
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 63
    iget-boolean v0, v1, Lcom/amap/api/col/l3/je;->C:Z

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    if-eqz v0, :cond_18

    .line 64
    iget-object v2, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ji;->c()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 65
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    iget-object v2, v1, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/ji;->d()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/location/Location;->setBearing(F)V

    .line 66
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    iget-object v2, v1, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/ji;->e()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/location/Location;->setSpeed(F)V

    goto :goto_b

    .line 67
    :cond_18
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 68
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/Location;->setBearing(F)V

    .line 69
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 70
    :goto_b
    iget-object v0, v1, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/je;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/je;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/je;->i()V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, v0}, Lcom/amap/api/col/l3/je;->a(ZZ)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/je;->a(Lcom/amap/api/col/l3/jh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "doFusionLocation"

    .line 6
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->F:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->y:Z

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/col/l3/je;->z:Z

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/amap/api/col/l3/jm;->d()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/amap/api/col/l3/jf;->a()V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/jp;->b(Landroid/content/Context;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->E:Lcom/amap/api/col/l3/jg;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/amap/api/col/l3/jg;->a()V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    if-eqz v1, :cond_4

    .line 13
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->g:Lcom/amap/api/col/l3/jw;

    .line 14
    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3/ki;->h()V

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    if-eqz v1, :cond_5

    .line 16
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_5
    :goto_0
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "Aps"

    const-string v3, "destroy"

    .line 19
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v1}, Lcom/amap/api/col/l3/jl;->h()V

    .line 22
    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v1}, Lcom/amap/api/col/l3/jn;->k()V

    .line 24
    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 26
    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->B:Lcom/amap/api/col/l3/ji;

    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v1}, Lcom/amap/api/col/l3/ji;->f()V

    .line 28
    :cond_9
    invoke-static {}, Lcom/amap/api/col/l3/js;->e()V

    .line 29
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->k:Lcom/amap/api/col/l3/jh;

    .line 30
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    .line 32
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->J:Landroid/location/LocationManager;

    return-void

    :catchall_1
    move-exception v1

    .line 33
    iput-object v0, p0, Lcom/amap/api/col/l3/je;->i:Lcom/amap/api/col/l3/je$a;

    .line 34
    throw v1
.end method

.method public final g()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jf;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "bindAMapService"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->f:Lcom/amap/api/col/l3/jf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jf;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "bindOtherService"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/je;->y:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3
    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/je;->u:Z

    if-eqz v1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/amap/api/col/l3/je;->m()V

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    iget-boolean v2, p0, Lcom/amap/api/col/l3/je;->u:Z

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/jn;->b(Z)V

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/jn;->c()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/je;->h:Ljava/util/ArrayList;

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->d:Lcom/amap/api/col/l3/jl;

    invoke-direct {p0}, Lcom/amap/api/col/l3/je;->o()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/col/l3/jl;->a(ZZ)V

    .line 8
    invoke-direct {p0}, Lcom/amap/api/col/l3/je;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/je;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Aps"

    const-string v3, "initFirstLocateParam"

    .line 11
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/je;->y:Z

    return-void
.end method

.method public final j()Lcom/amap/api/col/l3/jh;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->c:Lcom/amap/api/col/l3/jn;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jn;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    .line 2
    invoke-static {v0, v1}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/amap/api/col/l3/je;->A:I

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/je;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->e:Lcom/amap/api/col/l3/jp;

    iget-object v1, p0, Lcom/amap/api/col/l3/je;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/je;->N:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3/je;->x:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/col/l3/jp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/je;->b(Lcom/amap/api/col/l3/jh;)V

    :cond_2
    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/je;->G:Lcom/amap/api/col/l3/jm;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/jm;->b()V

    :cond_0
    return-void
.end method
